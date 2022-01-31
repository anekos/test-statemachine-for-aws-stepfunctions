
deploy:
	cfn-lint template.yaml
	sam build
	sam deploy

init:
	cfn-lint template.yaml
	sam build
	sam deploy --guided
