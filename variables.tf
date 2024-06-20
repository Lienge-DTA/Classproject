variable "region" {
  type    = list(string)
  default = ["us-east-1"]

}

variable "cidrvpc" {
  type    = list(string)
  default = ["10.1.0.0/16", "10.2.0.0/16", "10.3.0.0/16"]
}

variable "tenancy" {
  type    = string
  default = "default"

}

variable "pub" {
  type = string
  default = "aws_subnet.liengesubpub"
  
}

variable "sg" {
  default = "aws_security_group.sg"
  
}

# variable "igwcidr" {
#   type    = string
#   default = "0.0.0.0/0"

# }

# variable "azsubnet_pub" {
# type = list(string)
# default = ["us-east-1a", "us-east-1b"]

# }

# variable "azsubnet_priv" {
#   type    = list(string)
#   default = ["us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]

# }

# variable "cidrsubnet_pub" {
#   type    = list(string)
#   default = ["125.168.0.0/24", "125.169.0.0/24"]
# }

# variable "cidrsubnet_priv" {
#   type    = list(string)
#   default = ["125.169.0.0/24", "125.169.1.0/24", "125.170.0.0/24", "125.170.1.0/24"]
# }

# variable "tagsub" {
#   type    = list(string)
#   default = ["pub1", "pub2"]

# }

# variable "tagsub1" {
#   type    = list(string)
#   default = ["priv1", "priv2", "priv3", "priv4"]

# }

# variable "sgingress" {
#   type = map(object({
#     port        = number
#     protocol    = string
#     cidr_blocks = list(string)
#   }))
#   default = {
#     "22" = {
#       port        = 22
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     }
#     "80" = {
#       port        = 80
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     }
#   }

# }

# variable "sgegress" {
#   type = map(object({
#     port        = number
#     protocol    = string
#     cidr_blocks = list(string)
#   }))
#   default = {
#     "0" = {
#       port        = 0
#       protocol    = -1
#       cidr_blocks = ["0.0.0.0/0"]


#     }
#   }

# }

variable "type" {
  type    = string
  default = "t2.micro"

}

variable "key_pair" {
  type    = string
  default = "clintontest"

}

variable "ec2tags" {
  type    = list(string)
  default = ["ec20", "ec21", "ec22"]

}

variable "ami_id" {
  description = "The ID of the AMI to use for EC2 instances"
  type        = string
  default = "ami-04b70fa74e45c3917"
}

variable "environment" {
  description = "The environment for the EC2 instances"
  type        = string
  default = "production"
}

variable "instance_count" {
  description = "The number of EC2 instances to create"
  type        = number
  default = 3
}