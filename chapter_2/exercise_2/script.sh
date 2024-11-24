#!bin/bash

#Get into the working directory of your application
cd c/Users/hp/Desktop/practical_mlops_solutions/chapter_2/exercise

# Create and activate a new virtual environment called venv

virtualenv .venv
# Activate the virtual environment
source .venv/bin/activate
# Install flask framework with pip install
pip install flask==3.1.0
# Save the output of installed packages into "requirements.txt" to be used as info later
pip freeze > requirements.txt
# Run the already existing flask application with python as a test before deploying into aws elastic beanstalk
python app.py
# Add .ebignore file to tell elastic beanstalk to ignore the .venv since it creates its own environment
touch .ebignore
# Add ".venv/" into your .ebignore file
echo ".venv/" >> .ebignore
# Initialize an EB CLI repository 
eb init -p python-3.12 flask-practical_mlops-chapter_2-exercise_2 
# Run eb init again to configure a default keypair so that you can connect to the EC2 instance running your application with SSH
eb init 
# Create an environment and deploy your application
eb create flask-env

eb terminate flask-env
eb create flask-env
aws ec2 describe-launch-templates   --launch-template-names "my-launch-template"   --query "LaunchTemplates[*].LatestVersionNumber" --output text
aws ec2 describe-launch-templates   --launch-template-names "my-launch-template"   --query "LaunchTemplates[*].LatestVersionNumber" --output text
aws ec2 describe-instances   --filters "Name=tag:elasticbeanstalk:environment-name,Values=flask-env"   --query "Reservations[*].Instances[*].ImageId" --output text
aws elasticbeanstalk update-environment   --environment-name flask-env   --option-settings Namespace=aws:autoscaling:launchconfiguration,OptionName=ImageId,Value=ami-0bd01824d64912730                    Namespace=aws:autoscaling:launchconfiguration,OptionName=InstanceType,Value=t2.micro
aws elasticbeanstalk update-environment   --environment-name flask-env   --option-settings Namespace=aws:autoscaling:launchconfiguration,OptionName=ImageId,Value=ami-0bd01824d64912730                    Namespace=aws:autoscaling:launchconfiguration,OptionName=InstanceType,Value=t2.micro
aws elasticbeanstalk describe-environments --query "Environments[].[EnvironmentName]" --output table
aws elasticbeanstalk describe-environments --query "Environments[].[EnvironmentName]" --output table
aws elasticbeanstalk describe-environments --environment-names flask-env
eb create flask-env --region us-west-2
aws elasticbeanstalk update-environment   --environment-name flask-env   --option-settings Namespace=aws:autoscaling:launchconfiguration,OptionName=ImageId,Value=ami-0bd01824d64912730     Namespace=aws:autoscaling:launchconfiguration,OptionName=InstanceType,Value=t2.micro
aws elasticbeanstalk describe-environments --environment-names flask-env
aws elasticbeanstalk describe-environments --environment-names flask-env
aws configure --region us-west-2
eb setregion us-west-2
eb set-region us-west-2
eb --set-region us-west-2
aws elasticbeanstalk describe-environments --query "Environments[].[EnvironmentName]" --output table
aws elasticbeanstalk update-environment   --environment-name flask-env   --option-settings Namespace=aws:autoscaling:launchconfiguration,OptionName=ImageId,Value=ami-0bd01824d64912730     Namespace=aws:autoscaling:launchconfiguration,OptionName=InstanceType,Value=t2.micro   --region us-west-2
aws elasticbeanstalk describe-environments --environment-names flask-env --region us-west-2
aws elasticbeanstalk restart-app-server --environment-name flask-env --region us-west-2
aws elasticbeanstalk restart-app-server --environment-name flask-env --region us-west-2
eb create flask-env-2 --region us-west-2
eb open flask-env-2
eb status
eb open flask-env
eb terminate --force
eb init -p python-3.7 flask-tutorial --region us-east-2
eb init -p python-3.12 flask-tutorial --region us-east-2
eb init 
eb init --region us-west-2
eb init --region us-east-2
eb create flask-env
