# Resource: EC2 Instance
resource "aws_instance" "myec2" {
  for_each = toset(var.ami_id)
  ami = each.value
  instance_type = var.instance_type
  user_data = file("${path.module}/app-install.sh")
  tags = {
    Name = "EC2 OpenSuse"
    Region = "us-east-1",
    Change = "new state"
  }
  key_name = var.instance_keypair
  vpc_security_group_ids = [  aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id ]
}