# dind-aws-ci
Docker in Docker container with the AWS CLI pre-installed for CI systems like GitLab CI

### Usage
Before the AWS CLI is fully operational, you need to configure it. This is usually done using `aws configure` command but since this it is an interactive shell questionaire which cannot be run with arguments, you need to create the `~/.aws/config` file via a simple shell script manually.

```sh
#!/bin/bash

echo "[default]" > ~/.aws/config;
echo "aws_access_key_id=$CI_AWS_ECR_BUILD_ACCESS_KEY" >> ~/.aws/config;
echo "aws_secret_access_key=$CI_AWS_ECR_BUILD_SECRET_KEY" >> ~/.aws/config;
echo "region=$CI_AWS_ECR_REGION" >> ~/.aws/config;
```

Afterwards the aws CLI should be fully working (Please make sure to set your IAM security roles properly before ranting) :)

### What is pre-installed?
* Python / pip as the aws cli is installed using pip
* NodeJS latest as [ecs-task-deploy](https://github.com/mikestead/ecs-task-deploy) depends on it.
