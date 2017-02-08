FROM docker:latest

#
# Install the AWS CLI using python/pip.
#
RUN apk add --no-cache --update python py-pip;
RUN pip install awscli --ignore-installed six;

#
# Install the ecs-task-deploy CLI using nodejs.
#
RUN apk add --update nodejs;
RUN npm install -g ecs-task-deploy

#
# Install additional utils useful for deployments
#
RUN apk add --update curl
RUN apk add --update unzip

#
# Bootstrap folders which are usually setup using the `aws configure` command.
#
RUN mkdir ~/.aws;
