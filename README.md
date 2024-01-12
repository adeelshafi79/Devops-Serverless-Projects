# Devops-Serverless-Projects
Flask-App-deployment-using-Terraform-in-AWS
Project #1: Terraform - "Deployment of Flask App using Terraform in AWS"
Explore the architecture diagram to gain insights into the deployment flow of this application. Follow the steps below to deploy the application:
![Architecture Diagram](https://github.com/adeelshafi79/Devops-Serverless-Projects.git/Architecture.png)


1-Clone this repository using the provided URL or SSH.
2-Replace the contents of the .pem key with your own key pair.
3-Install AWS CLI on your local machine (assuming it's Linux):
  sudo apt-get update
  sudo apt-get install python3-pip
  pip3 install awscli --upgrade --user
4-Install Terraform on your local machine:
  sudo apt install snapd
  sudo snap install terraform
  terraform --version
5-Run the following commands to deploy:
  terraform init
  terraform validate
  terraform apply
Ensure you have the necessary permissions and configurations in AWS, and adjust the commands accordingly if you're using a different operating system.
