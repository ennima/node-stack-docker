#!/bin/bash

dt=$(date '+%d%m%Y-%H%M%S');


# Respalda el schema
mysqldump -u root -d sys > /home/schema_sys_$dt.sql

# Respaldo de toda la db
mysqldump -u root sys > /home/sys_$dt.sql
