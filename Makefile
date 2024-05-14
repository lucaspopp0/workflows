lint:
	$(info Running yamllint...)
	@YAMLLINT_CONFIG_FILE=.yamllint yamllint .
	$(info Running actionlint...)
	@SHELLCHECK_OPTS="--severity=error" actionlint -color
.PHONY: lint