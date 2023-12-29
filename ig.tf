resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "ig"
  }
}

resource "aws_route_table" "ig_public_rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
 
  tags = {
    Name = "ig-public-route-tb"
  }
}

resource "aws_route_table_association" "public_subnet_az1_rt_assoc" {
  subnet_id      = aws_subnet.public_subnet_az1.id
  route_table_id = aws_route_table.ig_public_rt.id
}

resource "aws_route_table_association" "public_subnet_az2_tr_assoc" {
  subnet_id      = aws_subnet.public_subnet_az1.id
  route_table_id = aws_route_table.ig_public_rt.id
}