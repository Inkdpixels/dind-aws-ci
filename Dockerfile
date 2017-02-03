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
# Bootstrap folders which are usually setup using the `aws configure` command.
#
RUN mkdir ~/.aws;
