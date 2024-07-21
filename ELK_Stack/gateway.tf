resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public.id
 
 
  tags = {
    Name = "nat_gw"
  }
  
}
resource "aws_internet_gateway" "igw" {
  vpc_id    = aws_vpc.elk_vpc.id

  tags = {
    Name = "igw"
  }
}
