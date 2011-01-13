#!/bin/bash
# Modified script from WhyDB
############################################################################
#
#  Tool Configuration
#
#  user - MYSQL username
#  pass - MYSQL password
#  wdb - Your world database
#
############################################################################
user="mysql_user"
pass="mysql_password"
wdb="wow_world"

############################################################################
#
#  Server configuration, do not edit past this point
#
############################################################################
server="localhost"
port="3306"
devpath="base"
uppath="update_packs"
bkpath="dump"

############################################################################
#
#  Create a backup folder, if one doesn't exist
#
############################################################################
if [ ! -d "${bkpath}" ]; then
	mkdir "${bkpath}"
	chmod 0755 "${bkpath}"
fi

############################################################################
#
#  Main program
#
############################################################################
until [ "${option}" = "x" ]; do
	logo
	echo " i - Install Clean World Database"
	echo " u - Update World Database"
	echo " x - Exit Tool"
	echo
	read -p " Enter option:  " option
	if [ "${option}" = "i" ]; then

		mysqldump -h ${server} --user=${user} --port=${port} --password=${pass} --add-drop-table --no-data ${wdb} | grep ^DROP | mysql -h ${server} --user=${user} --port=${port} --password=${pass} ${wdb}
		echo

		echo
		echo " [Cleaning World DB] Finished..."
		
		max=`ls -1 "${devpath}"/*.sql | wc -l`
		i=0
		for table in "${devpath}"/*.sql; do
			i=$((${i}+1))
			echo " [${i}/${max}] import: ${table##*/}"
			mysql -h ${server} --user=${user} --port=${port} --password=${pass} ${wdb} < "${table}"
		done

		echo
		echo " [Importing] Finished..."
	elif [ "${option}" = "b" ]; then
		
		echo
		rm -rf "${bkpath}/logon_backup.sql"
		rm -rf "${bkpath}/character_backup.sql"
		echo " [Deleting Old Backups] Finished..."
		
		echo		
		mysqldump -h ${server} --user=${user} --port=${port} --password=${pass} ${ldb} > "${bkpath}/logon_backup.sql"
		echo " [Backing Up Logon Database] Finished..."
		
		mysqldump -h ${server} --user=${user} --port=${port} --password=${pass} ${cdb} > "${bkpath}/character_backup.sql"
		echo " [Backing Up Char Database] Finished..."
		
		echo
		echo " [Backing Up] Finished..."
	elif [ "${option}" = "r" ]; then
		
		echo
		mysqldump -h ${server} --user=${user} --port=${port} --password=${pass} --add-drop-table --no-data ${ldb} | grep ^DROP | mysql -h ${server} --user=${user} --port=${port} --password=${pass} ${ldb}
		echo " [Emptying Logon Database] Finished..."
		
		mysql -h ${server} --user=${user} --port=${port} --password=${pass} ${ldb} < "${bkpath}/logon_backup.sql"
		echo " [Restoring Logon Database From Backup] Finished..."
		
		echo
		mysqldump -h ${server} --user=${user} --port=${port} --password=${pass} --add-drop-table --no-data ${cdb} | grep ^DROP | mysql -h ${server} --user=${user} --port=${port} --password=${pass} ${cdb}
		echo " [Emptying Char Database] Finished..."
		
		mysql -h ${server} --user=${user} --port=${port} --password=${pass} ${cdb} < "${bkpath}/character_backup.sql"
		echo " [Restoring Char Database From Backup] Finished..."
		
		echo
		echo " [Restoring Backup] Finished..."

	elif [ "${option}" = "u" ]; then
		
		available_changesets=("${uppath}/changeset_"*.sql)
		if [ "${available_changesets}" != "${uppath}/changeset_*.sql" ]; then

			echo
			echo " Here's a list of available updates:"
			echo
			for changeset in ${available_changesets[@]};
				do
					echo " ${changeset##*/}"
				done
				
			echo
			read -p " Which update would you like to import (type x to abort):  " index
			if [ "${index}" != "x" ]; then
				update="${uppath}/changeset_${index}.sql"
				if [ ! -f "${update}" ]; then
					echo
					echo " ${update} file does not exist."
				else
					echo
					echo " Importing changeset ${index}."
					mysql -h ${server} --user=${user} --port=${port} --password=${pass} ${wdb} < "${update}"
					echo
					echo " [Updating World Database] Finished..."
				fi
			fi
		
		else

			echo
			echo " Currently, no updates are available."

		fi
	elif [ "${option}" != "x" ]; then
		echo
		read -p " Incorrect option '${option}'."
		echo
	fi
	if [ "${option}" != "x" ]; then
		echo
		read -p " Press any key to continue..."
		echo
	fi
done
