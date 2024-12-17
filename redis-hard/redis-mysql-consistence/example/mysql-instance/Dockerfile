FROM mysql:8.0
COPY my.ini /etc/mysql/my.ini
EXPOSE 3306
CMD ['mysqld', "--default-time-zone=+08:00", "--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci"]
