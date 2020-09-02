docker_php = simple_docker_php-fpm_1
docker_nginx = simple_docker_nginx_1
docker_mysql = simple_docker_mysql_1

#some commands
start: #Containers start
	docker-compose up -d

stop: #Stop
	docker-compose stop

show_containers:
	docker ps

connect_php:
	docker exec -it $(docker_php) bash

connect_nginx:
	docker exec -it $(docker_nginx) bash

connect_mysql:
	docker exec -it $(docker_mysql) bash