APT_PROXY ?=
DOCKER ?= docker
IMAGE_NAMESPACE = envi.ypcs.fi

ENVS = $(patsubst %/Dockerfile,%,$(wildcard src/*/Dockerfile))

all:
	@echo "$(ENVS)"

$(ENVS): %:
	$(DOCKER) build \
		--build-arg APT_PROXY="$(APT_PROXY)" \
		--file "$@/Dockerfile" \
		--tag "$(IMAGE_NAMESPACE)/$(notdir $@):latest" \
		$@

build: $(ENVS)

.PHONY: $(ENVS)
