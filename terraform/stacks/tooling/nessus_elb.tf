resource "aws_elb" "nessus_elb" {
  name = "${var.stack_description}-Nessus"
  subnets = ["${module.stack.public_subnet_az1}" ,"${module.stack.public_subnet_az2}"] 
  security_groups = ["${module.stack.web_traffic_security_group}"]

  listener {
    lb_port = 443
    lb_protocol = "HTTPS"
    instance_port = 8834
    instance_protocol = "HTTPS"

    ssl_certificate_id = "arn:aws-us-gov:iam::${var.account_id}:server-certificate/${var.nessus_elb_cert_name}"
  }

  health_check {
    healthy_threshold = 2
    interval = 61
    target = "SSL:8834"
    timeout = 60
    unhealthy_threshold = 3
  }

  tags =  {
    Name = "${var.stack_description}-Nessus"
  }

}
