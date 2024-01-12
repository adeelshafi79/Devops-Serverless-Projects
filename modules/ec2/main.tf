# modules/ec2/main.tf

provider "aws" {
  region = "ap-southeast-2"  # Replace with your AWS region
}

resource "aws_instance" "my_instance" {
  ami                    = "ami-04f5097681773b989"  # Replace with your desired AMI
  instance_type          = "t2.micro"
  
key_name               = "devopsSecondMonth"  # Replace with your desired key pair

subnet_id              = var.subnet_id  # Add variable for subnet_id
  vpc_security_group_ids = [var.security_group_id]  # Add variable for security_group_id
 
  connection {
    type        = "ssh"
    user        = "ubuntu"  # Change the username based on your AMI
    private_key = file(var.private_key_path)  # Use variable for private key path
    host        = self.public_ip
  }

  user_data = <<-EOF
               #!/bin/bash
               sudo apt update
               sudo apt install -y docker.io
             EOF

  tags = {
    Name = "MyEC2Instance"
  }

  provisioner "file" {
  source      = "${path.module}/app.py"
  destination = "/home/ubuntu/app.py"
}

provisioner "file" {
  source      = "${path.module}/requirements.txt"
  destination = "/home/ubuntu/requirements.txt"
}

provisioner "file" {
  source      = "${path.module}/Dockerfile"
  destination = "/home/ubuntu/Dockerfile"
}

  provisioner "remote-exec" {
  inline = [
    "chmod +x /home/ubuntu/app.py",
    "chmod +x /home/ubuntu/Dockerfile",
    "chmod +x /home/ubuntu/requirements.txt",
  ]
  on_failure = "continue"  # Continue execution even if a command fails
}

  provisioner "remote-exec" {
  inline = [
    "while sudo fuser /var/lib/dpkg/lock-frontend /var/lib/dpkg/lock >/dev/null 2>&1; do sleep 1; done",  # Wait for the lock to be released
    "sudo apt-get update",
    "sudo apt-get install -y docker.io",  # Install Docker
    "sudo docker build -t flask-app /home/ubuntu",
    "sudo docker run -d -p 5000:5000 --name flask-container flask-app",
  ]
  on_failure = "continue"  # Continue execution even if a command fails
}


}

