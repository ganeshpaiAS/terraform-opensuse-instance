# Get latest AMI ID for Amazon Linux2 OS
data "aws_ami" "amazlinux" {
  most_recent = true
  owners           = ["amazon"]
  filter {
    name   = "name"
    values = ["suse-sles-15-sp6-*-hvm-ssd-x86_64"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name = "state"
    values = ["available"]
  }
}