# Devops-Serverless-Projects
Flask-App-deployment-using-Terraform-in-AWS
Project #1: Terraform - "Deployment of Flask App using Terraform in AWS"
Explore the architecture diagram to gain insights into the deployment flow of this application. Follow the steps below to deploy the application:

Clone this repository using the provided URL or SSH.
Replace the contents of the .pem key with your own key pair.
Install AWS CLI on your local machine (assuming it's Linux):
bash
Copy code
sudo apt-get update
sudo apt-get install python3-pip
pip3 install awscli --upgrade --user
Install Terraform on your local machine:
bash
Copy code
sudo apt install snapd
sudo snap install terraform
terraform --version
Run the following commands to deploy:
bash
Copy code
terraform init
terraform validate
terraform apply
Ensure you have the necessary permissions and configurations in AWS, and adjust the commands accordingly if you're using a different operating system.
