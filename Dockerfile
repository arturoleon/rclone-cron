FROM rclone/rclone:latest
RUN apk add --update curl

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["rclone_cron"]