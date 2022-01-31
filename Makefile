
CONFIG_ENV=default

deploy:
	cfn-lint template.yaml
	sam build
	sam deploy --config-env $(CONFIG_ENV)

init:
	cfn-lint template.yaml
	sam build
	sam deploy --guided
