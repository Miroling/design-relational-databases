#!/bin/bash

# this script is intended to be called from .bashrc
# This is a workaround for not having something like supervisord

if [ ! -e /var/run/mysqld/gitpod-init.lock ]; then
        touch /var/run/mysqld/gitpod-init.lock

        # initialize database structures on disk, if needed
        [ ! -d /workspace/mysql ] && mysqld --initialize-insecure

        # launch database, if not running
        [ ! -e /var/run/mysqld/mysqld.pid ] && mysqld --daemonize

        mysql --user="root" --execute="CREATE USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'toor'; GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;"

        rm /var/run/mysqld/gitpod-init.lock
fi


