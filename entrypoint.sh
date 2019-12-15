#!/bin/sh
set -e

if [ "$1" = 'rclone_cron' ]; then

    if [ -e "/data/cron/cron_config" ]; then
        cat /data/cron/cron_config | crontab -
    fi

    exec crond -f
fi

exec "$@"
