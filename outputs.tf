# outputs.tf

output "subnet_id" {
  value = module.my_vpc.subnet_id
}

output "vpc_id" {
  value = module.my_vpc.vpc_id
}

