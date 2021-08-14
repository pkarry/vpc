variable "vpc_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "private_sub" {
  type = list
}

variable "public_sub" {
  type = list
}

variable "azs" {
  type = list  
}
