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

#include "DatabaseEnv.h"
#include "Transaction.h"

//- Append a raw ad-hoc query to the transaction
void Transaction::Append(const char* sql)
{
    SQLElementData data;
    data.type = SQL_ELEMENT_RAW;
    data.element.query = strdup(sql);
    m_queries.push(data);
}

void Transaction::PAppend(const char* sql, ...)
{
    va_list ap;
    char szQuery [MAX_QUERY_LEN];
    va_start(ap, sql);
    vsnprintf(szQuery, MAX_QUERY_LEN, sql, ap);
    va_end(ap);

    Append(szQuery);
}

//- Append a prepared statement to the transaction
void Transaction::Append(PreparedStatement* stmt)
{
    SQLElementData data;
    data.type = SQL_ELEMENT_PREPARED;
    data.element.stmt = stmt;
    m_queries.push(data);
}

void Transaction::Cleanup()
{
    while (!m_queries.empty())
    {
        SQLElementData data = m_queries.front();
        switch (data.type)
        {
            case SQL_ELEMENT_PREPARED:
                delete data.element.stmt;
            break;
            case SQL_ELEMENT_RAW:
                free((void*)(data.element.query));
            break;
        }
        m_queries.pop();
    }
}

bool TransactionTask::Execute()
{
    if (m_conn->ExecuteTransaction(m_trans))
        return true;

    if (m_conn->GetLastError() == 1213)
    {
        uint8 loopBreaker = 5;  // Handle MySQL Errno 1213 without extending deadlock to the core itself
        for (uint8 i = 0; i < loopBreaker; ++i)
            if (m_conn->ExecuteTransaction(m_trans))
                return true;
    }

    return false;
}