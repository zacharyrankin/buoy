install:
	(docker network create --driver overlay --attachable buoy \
		|| docker network create buoy \
		|| exit 0) &>/dev/null
	docker-compose build
	docker-compose up --detach --force-recreate
