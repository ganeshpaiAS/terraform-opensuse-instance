# Terraform Output Values

# EC2 Instance Public IP
output "instance_publicip" {
  description = "EC2 Instance Public IP"
  value = [for ec2 in aws_instance.myec2 :ec2.public_ip]
}

# EC2 Instance Public DNS
output "instance_publicdns" {
  description = "EC2 Instance Public DNS"
  value = [for ec2 in aws_instance.myec2 :ec2.public_dns]
}