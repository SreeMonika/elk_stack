resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.elk_vpc.id
  map_public_ip_on_launch = true
  availability_zone = "eu-west-1a"
  cidr_block = var.cidr_public

  tags = {
    Name = "public"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.elk_vpc.id
  map_public_ip_on_launch = true
  availability_zone = "eu-west-1a"
  cidr_block = var.cidr_private

  tags = {
    Name = "monitoring_subnet"
  }
}

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.elk_vpc.id
  map_public_ip_on_launch = true
  availability_zone = "eu-west-1b"
  cidr_block = var.cidr_private1
  

  tags = {
    Name = "app_subnet1"
  }
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.elk_vpc.id
  map_public_ip_on_launch = true
  availability_zone = "eu-west-1c"
  cidr_block = var.cidr_private2

  tags = {
    Name = "app_subnet2"
  }
}

resource "aws_subnet" "private3" {
  vpc_id     = aws_vpc.elk_vpc.id
  map_public_ip_on_launch = true
  availability_zone = "eu-west-1c"
  cidr_block = var.cidr_private3
 

  tags = {
    Name = "app_subnet3"
  }
}