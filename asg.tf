resource "aws_autoscaling_group" "default" {
  name                      = "terraform-springboot-helloapp"
  max_size                  = 3
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 2
  force_delete              = true
  launch_configuration      = "${aws_launch_configuration.default.name}"
  vpc_zone_identifier       = ["subnet-122b865f", "subnet-799f8125"]
  target_group_arns         = ["${aws_lb_target_group.default.arn}"]
}

