# Configure the AWS Provider
provider "aws" {
  profile = "aws-terraform-dynamic"
}

#create vpc
# aws terraform vpc
resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc_cidr
  tags = {
    Name = "dev-vpc"
  }
}

# Declare the data source
data "aws_availability_zones" "available" {
  state = "available"
}
 

#create subnet
# aws terraform create subnet
resource "aws_subnet" "public_subnet_az1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.public_subnet_az1_cidr
  availability_zone = data.aws_availability_zones.available.names[0]
  tags = {
    Name = "public-subnet-az1"
  }
}

resource "aws_subnet" "public_subnet_az2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.public_subnet_az2_cidr
  availability_zone = data.aws_availability_zones.available.names[1]
  tags = {
    Name = "public-subnet-az2"
  }
}

resource "aws_subnet" "private_app_subnet_az1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_app_subnet_az1_cidr
  availability_zone = data.aws_availability_zones.available.names[0]
  tags = {
    Name = "private-app-subnet-az1"
  }
}


resource "aws_subnet" "private_app_subnet_az2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_app_subnet_az2_cidr
  availability_zone = data.aws_availability_zones.available.names[1]
  tags = {
    Name = "private-app-subnet-az2"
  }
}


resource "aws_subnet" "private_data_subnet_az1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_data_subnet_az1
  availability_zone = data.aws_availability_zones.available.names[0]
  tags = {
    Name = "private-data-subnet-az1"
  }
}

resource "aws_subnet" "private_data_subnet_az2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_data_subnet_az2
  availability_zone = data.aws_availability_zones.available.names[1]
  tags = {
    Name = "private-data-subnet-az2"
  }
}