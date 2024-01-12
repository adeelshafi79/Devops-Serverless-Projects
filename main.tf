# main.tf

module "my_vpc" {
  source = "./modules/my_vpc"
}

module "ec2" {
  source            = "./modules/ec2"
  subnet_id         = module.my_vpc.public_subnet_id
  security_group_id = module.my_vpc.security_group_id
  vpc_id            = module.my_vpc.vpc_id  # Add VPC ID here
  private_key_path  = "/home/adeel/Downloads/tf_project/modules/ec2/devopsSecondMonth.pem"
}

