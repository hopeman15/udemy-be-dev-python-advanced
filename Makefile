.PHONY: build migrations test

build:
	docker-compose build

migrations:
	docker-compose run app sh -c "python manage.py makemigrations core"

test:
	docker-compose run app sh -c "python manage.py test && flake8"
