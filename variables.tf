variable "vpc_cidr" {
  type = string
  description = "vpc cidr"
  default = "10.1.0.0/16"
}

variable "public_subnet_az1_cidr" {
  type = string
  description = "public subnet az1 cidr block"
  default = "10.1.1.0/24"
}

variable "public_subnet_az2_cidr" {
  type = string
  description = "public subnet az2 cidr block"
  default = "10.1.2.0/24"

}

variable "private_app_subnet_az1_cidr" {
  type = string
  description = "private app subnet az2 cidr"
  default = "10.1.3.0/24"
  
}

variable "private_app_subnet_az2_cidr" {
  type = string
  description = "private app subnet az2 cidr"
  default = "10.1.4.0/24"
}

variable "private_data_subnet_az1" {
  type = string
  description = "private data subnet az1 cidr"
  default = "10.1.5.0/24"
}

variable "private_data_subnet_az2" {
  type = string
  description = "private data subnet az2 cidr"
  default = "10.1.6.0/24"
}