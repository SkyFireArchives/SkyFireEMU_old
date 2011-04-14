/*
 * Copyright (C) 2005-2011 MaNGOS <http://www.getmangos.com/>
 *
 * Copyright (C) 2008-2011 Trinity <http://www.trinitycore.org/>
 *
 * Copyright (C) 2010-2011 Project SkyFire <http://www.projectskyfire.org/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

#ifndef _TCSOAP_H
#define _TCSOAP_H

#include "Common.h"
#include "World.h"
#include "AccountMgr.h"
#include "Log.h"

#include "soapH.h"
#include "soapStub.h"
#include "stdsoap2.h"

#include <ace/Semaphore.h>
#include <ace/Task.h>
#include <ace/Mutex.h>

#include <semaphore.h>


class TCSoapRunnable: public ACE_Based::Runnable
{
    public:
        TCSoapRunnable() { }
        void run();
        void setListenArguments(std::string host, uint16 port)
        {
            m_host = host;
            m_port = port;
        }
    private:
        std::string m_host;
        uint16 m_port;
};

class SOAPWorkingThread : public ACE_Task<ACE_MT_SYNCH>
{
    public:
        SOAPWorkingThread() { }

        virtual int svc(void)
        {
            while(1)
            {
                ACE_Message_Block *mb = 0;
                if (this->getq(mb) == -1)
                {
                    ACE_DEBUG((LM_INFO,
                        ACE_TEXT("(%t) Shutting down\n")));
                    break;
                }

                // Process the message.
                process_message(mb);
            }

            return 0;
        }
    private:
        void process_message(ACE_Message_Block *mb);
};

class SOAPCommand
{
    public:
        SOAPCommand()//:
            //pendingCommands(0, USYNC_THREAD, "pendingCommands"), pendingCommandsMutex(USYNC_THREAD, "pendingCommandsMutex")
        {
            if (sem_init(&pendingCommandsSemaphore, 0, 0) == -1)
            {
                sLog.outError("TCSoap: Error while initializing semaphore, errno = %u", errno);
            }
        }

        ~SOAPCommand()
        {
            sem_destroy(&pendingCommandsSemaphore);
        }

        void appendToPrintBuffer(const char* msg)
        {
            m_printBuffer += msg;
        }

        //ACE_Semaphore pendingCommands;
        //ACE_Mutex pendingCommandsMutex;
        sem_t pendingCommandsSemaphore;

        void setCommandSuccess(bool val)
        {
            m_success = val;
        }

        bool hasCommandSucceeded() const
        {
            return m_success;
        }

        static void print(void* callbackArg, const char* msg)
        {
            ((SOAPCommand*)callbackArg)->appendToPrintBuffer(msg);
        }

        static void commandFinished(void* callbackArg, bool success);

        bool m_success;
        std::string m_printBuffer;
};

#endif
