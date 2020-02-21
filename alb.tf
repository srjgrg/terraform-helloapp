resource "aws_lb" "default" {
  name               = "terraform-apringboot-helloapp"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${aws_security_group.default_lb.id}"]
  subnets            = ["subnet-122b865f", "subnet-122b865f"]

  enable_deletion_protection = true

  tags = {
    Environment = "dev"
  }
}
