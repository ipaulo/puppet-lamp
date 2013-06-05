#!/bin/sh
# Script to setup and initialize the moodle mysql database
# https://github.com/rlorenzo/puppet-lamp/

# TODO Call the script from vagrant/puppet

mysql --user=root --execute="CREATE DATABASE moodle DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;"
mysql --user=root --execute="GRANT ALL PRIVILEGES ON moodle.* TO 'moodle'@'localhost' IDENTIFIED BY 'test'; FLUSH PRIVILEGES;"
cd /tmp && wget https://test.ccle.ucla.edu/vagrant/new_moodle_instance.sql && mysql -u root moodle < new_moodle_instance.sql
