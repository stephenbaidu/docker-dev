BUILD_DEV_IMAGE_SCRIPT = .dev/scripts/build-dev-image.sh
OPEN_DEV_SHELL_SCRIPT = .dev/scripts/open-dev-shell.sh
CLEANUP_DEV_ENV_SCRIPT = .dev/scripts/cleanup-dev-env.sh

.PHONY: help build run stop

help:
	@echo "Usage: make [target]"
	@echo
	@echo "Available targets:"
	@echo "  build     Build the dev Docker image"
	@echo "  dev       Open shell in dev Docker container"
	@echo "  cleanup   Stop and remove all running dev Docker containers"

build: $(BUILD_DEV_IMAGE_SCRIPT)
	chmod +x $(BUILD_DEV_IMAGE_SCRIPT)
	./$(BUILD_DEV_IMAGE_SCRIPT)

dev: $(OPEN_DEV_SHELL_SCRIPT)
	chmod +x $(OPEN_DEV_SHELL_SCRIPT)
	./$(OPEN_DEV_SHELL_SCRIPT)

cleanup: $(CLEANUP_DEV_ENV_SCRIPT)
	chmod +x $(CLEANUP_DEV_ENV_SCRIPT)
	./$(CLEANUP_DEV_ENV_SCRIPT)
