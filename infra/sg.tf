# resource "aws_security_group" "serversg" {
#   vpc_id      = aws_vpc.main.id
#   name        = "serversg"
#   description = "security group that allows ssh and all egress traffic"
  
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   ingress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     # security_groups = [aws_security_group.albsg.id]
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   tags = {
#     Name = "serversg"
#   }
# }
# resource "aws_security_group" "albsg" {
#   vpc_id      = aws_vpc.main.id
#   name        = "albsg"
#   description = "security group that allows http and https traffic for alb"
  
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   tags = {
#     Name = "albsg"
#   }
# }
# # resource "aws_security_group" "rdssg" {
# #   vpc_id      = module.vpc.vpc_id
# #   name        = "rdssg"
# #   description = "security group that allows MYSQL"
  
# #   egress {
# #     from_port   = 0
# #     to_port     = 0
# #     protocol    = "-1"
# #     cidr_blocks = ["0.0.0.0/0"]
# #   }
# #   ingress {
# #     from_port   = 3306
# #     to_port     = 3306
# #     protocol    = "tcp"
# #     security_groups = [aws_security_group.serversg.id]
# #   }
# #   ingress {
# #     from_port   = 80
# #     to_port     = 80
# #     protocol    = "tcp"
# #     security_groups = [aws_security_group.serversg.id]
# #   }
# #   tags = {
# #     Name = "rdssg"
# #   }
# # }
