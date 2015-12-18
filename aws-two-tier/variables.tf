variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.

Example: ~/.ssh/id_rsa.pub
DESCRIPTION
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default = "us-west-2"
}

# Centos 7 with HVM Support
variable "aws_amis" {
  default = {
    eu-west-1 = "ami-33734044"
    us-east-1 = "ami-61bbf104"
    us-west-1 = "ami-f77fbeb3"
    us-west-2 = "ami-d440a6e7"
  }
}