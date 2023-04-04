data "aws_vpc" "vpc-mc" {
  tags = {Project = "Mapa de crecimiento"}
}
# variable "subnet_id" {}

# data "aws_route_table" "selected" {
#   subnet_id = var.subnet_id
# }

#  output "mirt" {
#   value = data.aws_route_table.selected.id
#  }
resource "aws_vpc_endpoint" "vpcend-ecr-api" {
  vpc_id              = data.aws_vpc.vpc-mc.id
  service_name        = "com.amazonaws.us-east-1.ecr.api"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = var.sg_id
  subnet_ids          = [var.subnet_private_id[0],var.subnet_private_id[1]]
  ip_address_type     = "ipv4"
  tags                = merge(var.tagss,{Name = "vpcend-ecr-api-mc"})
}
resource "aws_vpc_endpoint" "vpcend-ecr-dkr" {
  vpc_id              = data.aws_vpc.vpc-mc.id
  service_name        = "com.amazonaws.us-east-1.ecr.dkr"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = var.sg_id
  subnet_ids          = [var.subnet_private_id[0],var.subnet_private_id[1]]
  ip_address_type     = "ipv4"
  tags                = merge(var.tagss,{Name = "vpcend-ecr-dkr-mc"})
}
resource "aws_vpc_endpoint" "vpcend-ecr-logs" {
  vpc_id              = data.aws_vpc.vpc-mc.id
  service_name        = "com.amazonaws.us-east-1.logs"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = var.sg_id
  subnet_ids          = [var.subnet_private_id[0],var.subnet_private_id[1]]
  ip_address_type     = "ipv4"
  tags                = merge(var.tagss,{Name = "vpcend-ecr-logs-mc"})
}
resource "aws_vpc_endpoint" "vpcend-s3" {
  #count               = 2
  vpc_id              = data.aws_vpc.vpc-mc.id
  service_name        = "com.amazonaws.us-east-1.s3"
  vpc_endpoint_type   = "Gateway"
  tags                = merge(var.tagss,{Name = "vpcend-s3-mc"})
  #route_table_ids     = [aws_route_table.private-rt.*.id[count.index]]
  #route_table_ids =  module.vpc.aws_route_table.private[count.index]
}
# resource "aws_route_table" "private-rt" {
#   # count    = 2
#   vpc_id   = data.aws_vpc.vpc-mc.id
#   # tags     = merge(var.tagss,{Name = "Private Subnet ${count.index + 1}"})
#   tags     = merge(var.tagss,{Name = "rt-mapadecrecimiento"})
# }
# resource "aws_route_table_association" "private-rta" {
#   subnet_id      =  "subnet-0a99df9542bf1f876"
#   route_table_id  = aws_route_table.private-rt.id
# }
# resource "aws_route_table_association" "private-rta3" {
#   subnet_id      = "subnet-0aff4a61784cde71a"
#   route_table_id  = aws_route_table.private-rt.id
# }
resource "aws_vpc_endpoint_route_table_association" "private-rta2" {
  # count           = 2
  vpc_endpoint_id = aws_vpc_endpoint.vpcend-s3.id
  # route_table_id  = aws_route_table.private-rt.*.id[count.index]
  # route_table_id  = aws_route_table.private-rt.id
  route_table_id  = "rtb-0c4f08f90feb248db"
}
