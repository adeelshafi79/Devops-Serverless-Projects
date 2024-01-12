# modules/my_vpc/outputs.tf

output "subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "public_subnet_id" {
    value = aws_subnet.public_subnet.id  // Replace with the actual resource name
}
output "security_group_id" {
  value = aws_security_group.my_security_group.id
}

output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

