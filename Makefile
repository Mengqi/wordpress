###
# guide: https://docs.docker.com/compose/wordpress/
# @author mengqi
#

wordpress-image-name=wordpress:latest
mysql-image-name=mysql:5.7

run:
	docker-compose up -d
stop:
	docker stop $$(docker ps -a -q --filter ancestor=${wordpress-image-name} --format="{{.ID}}")
	docker stop $$(docker ps -a -q --filter ancestor=${mysql-image-name} --format="{{.ID}}")
test:
	curl localhost:8080


