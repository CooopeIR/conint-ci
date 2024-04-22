# Mariabd Docker User Setup

This template should help get you started developing with Vue 3 in Vite.
```sh
docker volume create mariadb_volume
docker build . -t my_db
docker run -dp 3306:3306 --name=mariadb  -v mariadb_volume:/var/lib/mysql my_db
docker exec -it mariadb sh
mariadb -u root -pmy-secret-pw < /docker-entrypoint-initdb.d/create_user.sql
```