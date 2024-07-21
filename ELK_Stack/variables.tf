variable "vpc_name" {
  description = "this is the vpc name"
  type        = string
}

variable "vpc_cidr" {
  description = "this is cidr address"

}

variable "aws_region" {
  description = "resources will deploy here"
  type        = string
}

variable "cidr_public" {
  description = "this is for cidr public subnet"
}

variable "cidr_private" {
  description = "this is for cidr private subnet"
}

variable "cidr_private1" {
  description = "this is for cidr private1 subnet"
}



variable "cidr_private2" {
  description = "this is for cidr private2 subnet"
}

variable "cidr_private3" {
  description = "this is for cidr private3 subnet"
}