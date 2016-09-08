#!/bin/bash

if [ $USER_LIST = "" ]; then
    echo -e "* No User to add in USER_LIST: $USER_LIST"
else
	for user in $USER_LIST; do
	        if [ -f "/tmp/passwd.tmp" ]; then
	                rm -f /tmp/passwd.tmp
	        fi
	        echo -e "* Adding User $user"
	        username=$(echo $user|cut -d'=' -f1)
	        userpw=$(echo $user|cut -d'=' -f2)
	        if [ "$username" != "" ]; then
	                htpasswd -cdb /tmp/passwd.tmp $username $userpw
	                old=$(cat /etc/apache2/user-passwords)
	                new=$(cat /tmp/passwd.tmp)
	                echo -e "* Preparing Users Password"
	                echo -e "$old\n$new" >/etc/apache2/user-passwords
	                
	                echo -e "* Creating User specified"
	                mkdir -p /var/webdav/users/$username
	                echo -e "\n\n#INCLUDED BY 020_adduser.sh\nAlias /$username \"/var/webdav/users/$username\"\n<Directory \"/var/webdav/users/$username\">\nDAV on\nOptions +Indexes\nAuthType Basic\nAuthName "user${username}"\nAuthUserFile /etc/apache2/user-passwords\nRequire user $username\n</Directory>" >>/etc/apache2/sites-available/020-webdav.conf
	        fi
	        
	        WebDavFileCleanup.sh
	done
fi


