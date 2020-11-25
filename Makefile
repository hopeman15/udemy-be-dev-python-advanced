.PHONY: build migrations start superuser test

build:
	docker-compose build

migrations:
	docker-compose run app sh -c "python manage.py makemigrations core"

start:
	docker-compose up

superuser:
	docker-compose run app sh -c "python manage.py createsuperuser"

test:
	docker-compose run app sh -c "python manage.py test && flake8"
