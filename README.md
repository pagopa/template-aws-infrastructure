# Project Name
Template useful to create a AWS terraform projects


## Howo to use this template

1. Create your git repository starting form this template.
2. Configure your aws cli and set the [credentials settings](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html). Also refer the conflunece page to work with [AWS SSO](https://pagopa.atlassian.net/wiki/spaces/DEVOPS/pages/466846955/AWS+-+Users+groups+and+roles#SSO-with-GSuite).
3. The __src/init__ directory contains the terraform code to setup the S3 backend and Dynamodb lock table
4. The __src/azuredevops__ direcory containes the terraform code to setup the azure devops project aming to run the IAC pipeline with the code defined in this repository.
5. The __src/main__ directory cointains the terraform code aming to setup the infrastructure.


## Referencees

* [Confluence page](https://pagopa.atlassian.net/wiki/spaces/DEVOPS/pages/467894592/AWS+Setup+new+project) 