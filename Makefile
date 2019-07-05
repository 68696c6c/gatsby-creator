IMAGE_NAME = gatsby-creator

.DEFAULT:
	@echo 'App targets:'
	@echo
	@echo '    image     build the Docker image for local development'
	@echo '    create    create new Gatsby project'
	@echo

default: .DEFAULT

image:
	docker build . -f docker/Dockerfile -t $(IMAGE_NAME):dev

create:
	@test $(PROJECT_NAME) || (echo "no PROJECT_NAME"; exit 1)
	docker-compose run --rm app bash -c "yes | gatsby new --verbose $(PROJECT_NAME)"
