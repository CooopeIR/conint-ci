
FROM mariadb:11.3

# Set environment variables
# ENV MYSQL_ROOT_PASSWORD=my-secret-pw

COPY create_user.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

# VOLUME /var/lib/mysql
# run this command in the bash to init the user and database and the table and a dummy data
# mariadb -u root -pmy-secret-pw < /docker-entrypoint-initdb.d/create_user.sql