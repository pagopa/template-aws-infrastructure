# Project Name
Template useful to create a AWS infrastructure with terraform


## Howo to use this template

1. Create your github repository starting form this template.
2. Configure your aws cli and set the [credentials](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html). Also refer the conflunece page to work with [AWS SSO](https://pagopa.atlassian.net/wiki/spaces/DEVOPS/pages/466846955/AWS+-+Users+groups+and+roles#SSO-with-GSuite).
3. The __src/init__ directory contains the terraform code to setup the S3 backend the Dynamodb lock table and the iam role to use in the github actions
4. The __src/main__ directory cointains the terraform code to setup the core infrastructure.
5. The __.github/workflows__ directory contains two yaml files to run a terraform plan and apply actions. They need a github environment secret to be created: IAM_ROLE (see below.)

## Requirements

The following tools are required to setup the project locally. 

1. [aws cli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) installed.
2. [tfenv](https://github.com/tfutils/tfenv) to mange terraform versions.

## Start building

Create:

* The s3 bucket to store terraform state
* The Dynamodb table to manage terraform locks
* The Github OpenId connection

```bash
# init uat environment
cd src/init

./terraform.sh init uat

./terraform.sh apply uat

# create uat environment

cd ../../
cd src/main

./terraform.sh init uat

./terraform.sh apply uat
```

## Github actions

In the repository two github actions are already provided:

* **terraform-plan**: it runs every time a new Pull request(PR) is created and every time a push is made within the PR branch. It runs terraform plan through all the environments.

* **terraform-apply**: it runs terraform apply in one of the environment (uat by default) every time a PR is merged into main branch or it can be triggered manually and users have the facolty to choose on which environment to apply it.

### Configurations

* Create [github environment](https://docs.github.com/en/actions/deployment/targeting-different-environments/using-environments-for-deployment) every environments:dev, uat, prod, and prod_w.
* **prod_w** is like prod but it is meant to be used only in the apply action in production. 

![](docs/github-environments.png)

* In each environmen create a secret named **IAM_ROLE** and set as a value the **arn** of the role created at the very beginnig when you set up the environment (init).
* Within the **prod_w** set two **Environment protection rules* as shown in the screenshot above:
![](docs/protection-rules-and-secrets.png)


## Referencees

* [Confluence page](https://pagopa.atlassian.net/wiki/spaces/DEVOPS/pages/467894592/AWS+Setup+new+project)
* [Terraform](https://terraform.io/)
* [Github action](https://docs.github.com/en/actions)
* [Configuring OpenID Connect in Amazon Web Services](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-amazon-web-services)