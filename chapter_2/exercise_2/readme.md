# Prerequisites for the exercise

- Python 3.7 or later because flask does not support lower versions
- EB CLI installed. For this purpose you can refer to this (github repository) [https://github.com/aws/aws-elastic-beanstalk-cli-setup]
- Flask application already available. I enclosed the application code in `app.py` under this directory

# Exercise steps to deploy your application with aws elastic-beanstalk
In this presentation only principles of steps are displayed. To read the related commands in the script file
## Prepare the project virtual environment and test the application locally before deployment
 `script.sh` under the current directory.
1- Get into the working directory of your application. In this case it is `chapter_2/exercise_2`  
2- Create and activate a new virtual environment called `.venv`  
3- Activate the virtual environment  
4- Install flask framework with pip install  
5- Save the output of installed packages into `requirements.txt` to be used as info later  
6- Run the already existing flask application with python as a test before deploying into aws elastic beanstalk  
## Deploy application with aws elastic beanstalk
1- Add `.ebignore` file to tell elastic beanstalk to ignore the `.venv` since it creates its own environment  
2- Add `.venv/` into your `.ebignore` file   
3- Initialize an EB CLI repository (Provide your secret aws credentials. if you don't have ones you should create an IAM account)  
4- Run eb init again to configure a default key pair so that you can connect to the EC2 instance running your application with SSH  
5- Create an environment and deploy your application (This step requires to have all the necessary permissions, especially permissions to create the auto scaling group configuration)  
6- Open your app with elastic beanstalk 
