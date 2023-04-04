run:
	docker-compose up --scale backend=3

docker-clean:
	sudo docker compose down
	sudo docker rmi $(sudo docker images -aq)
	sudo docker volume rm $(sudo docker volume ls -q)

docker-logs:
	sudo docker compose logs | less

docker-build:
	sudo docker compose up --build -d
