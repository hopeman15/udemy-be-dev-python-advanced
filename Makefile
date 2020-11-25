APP ?= none

.PHONY: app build migrations start superuser test

app:
	docker-compose run --rm app sh -c "python manage.py startapp ${APP}"

build:
	docker-compose build

migrations:
	docker-compose run app sh -c "python manage.py makemigrations core"

start:
	docker-compose up

superuser:
	docker-compose run app sh -c "python manage.py createsuperuser"

test:
	docker-compose run --rm app sh -c "python manage.py test && flake8"
