resource "aws_eip" "eip_for_nat_gateway_az1" {
  domain   = "vpc"
  tags = {
    Name = "nat gateway az1 eip"
  }
}

resource "aws_eip" "eip_for_nat_gateway_az2" {
  domain   = "vpc"
  tags = {
    Name = "nat gateway az2 eip"
  }
}