.PHONY: test migrations

test:
	docker-compose run app sh -c "python manage.py test && flake8"

migrations:
	docker-compose run app sh -c "python manage.py makemigrations core"