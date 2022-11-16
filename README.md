# Project Name
Template useful to create a AWS terraform projects


## Howo to use this template

1. Create your github repository starting form this template.
2. Configure your aws cli and set the [credentials](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html). Also refer the conflunece page to work with [AWS SSO](https://pagopa.atlassian.net/wiki/spaces/DEVOPS/pages/466846955/AWS+-+Users+groups+and+roles#SSO-with-GSuite).
3. The __src/init__ directory contains the terraform code to setup the S3 backend the Dynamodb lock table and the iam role to use in the github actions
4. The __src/main__ directory cointains the terraform code to setup the infrastructure core infrastructure.
5. The __.github/workflows__ directory contains two yaml files to run a terraform plan and apply action. It's needed to fill them with the arn of the iam role the actions will assume to allow terraform to manage the infrastructure in AWS. It's possible to get the arn role as output once applied the code in the __src/init__ directoty.


## Referencees

* [Confluence page](https://pagopa.atlassian.net/wiki/spaces/DEVOPS/pages/467894592/AWS+Setup+new+project)
* [Terraform](https://terraform.io/)
* [Github action](https://docs.github.com/en/actions)
* [Configuring OpenID Connect in Amazon Web Services](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-amazon-web-services)