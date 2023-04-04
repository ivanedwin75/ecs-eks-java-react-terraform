# resource "aws_lb" "alb1" {
#   name               = "alb1"
#   internal           = true
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group.albsg.id]
#   subnets            = [aws_subnet.private-subnet[0].id,aws_subnet.private-subnet[1].id]
# }
resource "aws_lb_target_group" "apuntador" {
  #count     = length(var.private_subnet_cidrs1)
  name     = "ecs-mc-target"
  port     = 9010
  protocol = "TCP"
  target_type = "ip"
  #vpc_id   = aws_subnet.private-subnet.*.id[count.index]
  vpc_id    = "vpc-0ec44328f2c918942"
  health_check {
    healthy_threshold   = "3"
    interval            = "300"
    protocol            = "HTTP"
    matcher             = "200"
    timeout             = "3"
    #path                = "/v1/status"
    path                = "/actuator/health"
    unhealthy_threshold = "2"
  }
  tags = var.tagss
}
resource "aws_lb_listener" "alblistener" {
  #count = length(var.private_subnet_cidrs1)
  #load_balancer_arn = aws_lb.alb1.*.arn[count.index]
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:298782619489:loadbalancer/net/aa2e77f7f15424f6e9aa761de24184bc/6b89374da12c1c58"
  port              = "9010"
  protocol          = "TCP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.apuntador.arn
  }
}
resource "aws_lb_target_group" "apuntador2" {
  #count     = length(var.private_subnet_cidrs1)
  name     = "ecs-mc-target2"
  port     = 9030
  protocol = "TCP"
  target_type = "ip"
  #vpc_id   = aws_subnet.private-subnet.*.id[count.index]
  vpc_id    = "vpc-0ec44328f2c918942"
  health_check {
    healthy_threshold   = "3"
    interval            = "300"
    protocol            = "HTTP"
    matcher             = "200"
    timeout             = "3"
    #path                = "/v1/status"
    path                = "/actuator/health"
    unhealthy_threshold = "2"
  }
  tags = var.tagss
}
resource "aws_lb_listener" "alblistener2" {
  #count = length(var.private_subnet_cidrs1)
  #load_balancer_arn = aws_lb.alb1.*.arn[count.index]
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:298782619489:loadbalancer/net/aa2e77f7f15424f6e9aa761de24184bc/6b89374da12c1c58"
  port              = "9030"
  protocol          = "TCP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.apuntador2.arn
  }
}
resource "aws_lb_target_group" "apuntador3" {
  #count     = length(var.private_subnet_cidrs1)
  name     = "ecs-mc-target3"
  port     = 9040
  protocol = "TCP"
  target_type = "ip"
  #vpc_id   = aws_subnet.private-subnet.*.id[count.index]
  vpc_id    = "vpc-0ec44328f2c918942"
  health_check {
    healthy_threshold   = "3"
    interval            = "300"
    protocol            = "HTTP"
    matcher             = "200"
    timeout             = "3"
    #path                = "/v1/status"
    #path                = "/actuator/health"
    path                = "/event"
    unhealthy_threshold = "2"
  }
  tags = var.tagss
}
resource "aws_lb_listener" "alblistener3" {
  #count = length(var.private_subnet_cidrs1)
  #load_balancer_arn = aws_lb.alb1.*.arn[count.index]
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:298782619489:loadbalancer/net/aa2e77f7f15424f6e9aa761de24184bc/6b89374da12c1c58"
  port              = "9040"
  protocol          = "TCP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.apuntador3.arn
  }
}
resource "aws_lb_target_group" "apuntador4" {
  #count     = length(var.private_subnet_cidrs1)
  name     = "ecs-mc-target4"
  port     = 9050
  protocol = "TCP"
  target_type = "ip"
  #vpc_id   = aws_subnet.private-subnet.*.id[count.index]
  vpc_id    = "vpc-0ec44328f2c918942"
  health_check {
    healthy_threshold   = "3"
    interval            = "300"
    protocol            = "HTTP"
    matcher             = "200"
    timeout             = "3"
    #path                = "/v1/status"
    path                = "/actuator/health"
    #path                = "/test"
    unhealthy_threshold = "2"
  }
  tags = var.tagss
}
resource "aws_lb_listener" "alblistener4" {
  #count = length(var.private_subnet_cidrs1)
  #load_balancer_arn = aws_lb.alb1.*.arn[count.index]
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:298782619489:loadbalancer/net/aa2e77f7f15424f6e9aa761de24184bc/6b89374da12c1c58"
  port              = "9050"
  protocol          = "TCP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.apuntador4.arn
  }
}

resource "aws_lb_target_group" "apuntador5" {
  #count     = length(var.private_subnet_cidrs1)
  name     = "ecs-mc-target5"
  port     = 9060
  protocol = "TCP"
  target_type = "ip"
  #vpc_id   = aws_subnet.private-subnet.*.id[count.index]
  vpc_id    = "vpc-0ec44328f2c918942"
  health_check {
    healthy_threshold   = "3"
    interval            = "300"
    protocol            = "HTTP"
    matcher             = "200"
    timeout             = "3"
    #path                = "/v1/status"
    path                = "/actuator/health"
    #path                = "/test"
    unhealthy_threshold = "2"
  }
  tags = var.tagss
}
resource "aws_lb_listener" "alblistener5" {
  #count = length(var.private_subnet_cidrs1)
  #load_balancer_arn = aws_lb.alb1.*.arn[count.index]
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:298782619489:loadbalancer/net/aa2e77f7f15424f6e9aa761de24184bc/6b89374da12c1c58"
  port              = "9060"
  protocol          = "TCP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.apuntador5.arn
  }
}