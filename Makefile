lint:
	$(info Running yamllint...)
	@YAMLLINT_CONFIG_FILE=.yamllint yamllint .
.PHONY: lint