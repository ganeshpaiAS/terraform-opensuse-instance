# Input Variables

# AWS Profile
variable "aws_profile" {
    description = "AWS Profile"
    type = string
    default = "jenkins"
}

# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"
}

# AWS EC2 Instance Type
variable "instance_type" {
  description = "EC2 Instance Type"
  type = string
  default = "t2.micro"
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 Key Pair that need to be associated with EC2 Instance"
  type = string
  default = "terrafrom-key-pair"
}

# AWS EC2 AMI ID
variable "instance_ami" {
    description = "AWS EC2 AMI ID"
    type = string
    default = "ami-0742b4e673072066f"
}

# AWS S3 Backend
variable "s3_backend" {
    description = "AWS S3 Backend"
    type = string
    default = "s3://unitycatalogoss"
}

variable "ami_id" {
  description = "List of ami ids"
  type = list(string)
  # default = ["ami-0cd60fd97301e4b49","ami-0fb850c7ef7d832e1"]
  default = ["ami-01b0cd60a433f6254","ami-0859e3d5e1da98122"]
  # opensuse-15-ami- ami-01b0cd60a433f6254
  # opensuse-12-ami- ami-0859e3d5e1da98122
}

