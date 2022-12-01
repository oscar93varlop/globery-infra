resource "aws_vpc" "vpc_globery" {
  name       = "vpc-${var.env}-${var.project}"
  cidr_block = var.cidr_block
}
resource "aws_subnet" "sbnt_public_1" {
  vpc_id     = aws_vpc.vpc_globery.id
  availability_zone = var.az1
  cidr_block = var.cidr_block_sbnt_public_1
}
resource "aws_subnet" "sbnt_public_2" {
  vpc_id     = aws_vpc.vpc_globery.id
  availability_zone = var.az2
  cidr_block = var.cidr_block_sbnt_public_2
}
resource "aws_subnet" "sbnt_private_1" {
  vpc_id     = aws_vpc.vpc_globery.id
  availability_zone = var.az1
  cidr_block =  var.cidr_block_sbnt_private_1

}
resource "aws_subnet" "sbnt_private-2" {
  vpc_id     = aws_vpc.vpc_globery.id
  availability_zone = var.az2
  cidr_block = var.cidr_block_sbnt_private_2

}

resource "aws_subnet" "sbnt_private_3" {
  vpc_id     = aws_vpc.vpc_globery.id
  availability_zone = var.az1
  cidr_block =  var.cidr_block_sbnt_private_3

}
resource "aws_subnet" "sbnt_private-3" {
  vpc_id     = aws_vpc.vpc_globery.id
  availability_zone = var.az2
  cidr_block = var.cidr_block_sbnt_private_3

}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc_globery.id

}

resource "aws_eip" "eip_globery" {
  vpc      = true

}
resource "aws_nat_gateway" "nat-gw-globery" {
  allocation_id = aws_eip.eip_globery.id
  subnet_id     = aws_subnet.sn_private.id

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}

resource "aws_route_table" "rtb-public" {
  vpc_id = aws_vpc.vpc_globery.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

}
resource "aws_route_table_association" "rtb-a-public" {
  subnet_id      = aws_subnet.sn_public.id
  route_table_id = aws_route_table.rtb-public.id
}

resource "aws_route_table" "rtb-private" {
  vpc_id = aws_vpc.vpc_globery.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat-gw-globery.id
  }


}
resource "aws_route_table_association" "rtb-a-private" {
  subnet_id      = aws_subnet.sn_private.id
  route_table_id = aws_route_table.rtb-private.id
}
resource "aws_route_table_association" "rtb-a-private-2" {
  subnet_id      = aws_subnet.sn_private-2.id
  route_table_id = aws_route_table.rtb-private.id
}