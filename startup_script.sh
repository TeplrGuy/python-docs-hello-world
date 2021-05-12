#!/bin/sh
# Installing cron
apt-get update -qq && apt-get install cron -yqq
service cron start
mkdir /home/BackupLogs
(crontab -l 2>/dev/null; echo "*/5 * * * * cp /home/LogFiles/*.log /home/BackupLogs")|crontab
