# Input Variables

# AWS Profile
variable "aws_profile" {
    description = "AWS Profile"
    type = string
    default = "dataeng"
}

# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"
}

# AWS EC2 Instance Type
variable "instance_type" {
  description = "EC2 Instnace Type"
  type = string
  default = "t2.micro"
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 Key Pair that need to be associated with EC2 Instance"
  type = string
  default = "TerraformKeypair"
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

