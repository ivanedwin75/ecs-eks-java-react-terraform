# resource "aws_vpc" "main" {
#   cidr_block = "10.0.0.0/16"
#   tags = {
#    Name = "VPC-MapadeCrecimiento"
#  }
# }
# resource "aws_subnet" "public-subnet" {
#   count                   = length(var.public_subnet_cidrs)
#   vpc_id                  = aws_vpc.main.id
#   cidr_block              = element(var.public_subnet_cidrs, count.index)
#   map_public_ip_on_launch = "true"
#   availability_zone       = element(var.azs, count.index)
#   tags = {
#      Name = "Public Subnet ${count.index + 1}"
#   }
# }
# resource "aws_subnet" "private-subnet" {
#   count                   = length(var.private_subnet_cidrs)
#   vpc_id                  = aws_vpc.main.id
#   cidr_block              = element(var.private_subnet_cidrs, count.index)
#   map_public_ip_on_launch = "false"
#   availability_zone       = element(var.azs, count.index)
#   tags = {
#     Name = "Private Subnet ${count.index + 1}"
#   }
# }
# resource "aws_internet_gateway" "internet-gw" {
#   vpc_id = aws_vpc.main.id

#   tags = {
#     Name = "internet-gw"
#   }
# }

# resource "aws_route_table" "public-rt" {
#   vpc_id = aws_vpc.main.id
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.internet-gw.id
#   }
# }

# resource "aws_route_table_association" "public-rta" {
#   count          = length(var.public_subnet_cidrs)
#   subnet_id      = aws_subnet.public-subnet.*.id[count.index]
#   route_table_id = aws_route_table.public-rt.id
# }
