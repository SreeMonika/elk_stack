resource "aws_route_table" "internet_route_table" {
  vpc_id = aws_vpc.elk_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "internet_gateway"
  }
}

resource "aws_route_table" "natgw_table" {
  vpc_id = aws_vpc.elk_vpc.id
  
    route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gw.id

  }

  tags = {
    Name = "nat_gateway"
  }
}


### ROUTE TABLE ASSOCIATION TO KIBANA PUBLIC SUBNET
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.internet_route_table.id
}

### ROUTE TABLE ASSOCIATION TO MONITORING PRIVATE SUBNET
resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.natgw_table.id
}


 ### ROUTE TABLE ASSOCIATION TO APPLICATION PRIVATE SUBNET
resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.natgw_table.id
}


resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.private2.id
  route_table_id = aws_route_table.natgw_table.id
}

resource "aws_route_table_association" "private3" {
  subnet_id      = aws_subnet.private3.id
  route_table_id = aws_route_table.natgw_table.id
}