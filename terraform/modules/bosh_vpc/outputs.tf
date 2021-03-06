/* VPC */
output "vpc_id" {
    value = "${aws_vpc.main_vpc.id}"
}

output "vpc_cidr" {
    value = "${var.vpc_cidr}"
}

/* Private network */
output "private_subnet_az1" {
  value = "${aws_subnet.az1_private.id}"
}

output "private_subnet_az2" {
  value = "${aws_subnet.az2_private.id}"
}

output "private_route_table_az1" {
  value = "${aws_route_table.az1_private_route_table.id}"
}

output "private_route_table_az2" {
  value = "${aws_route_table.az2_private_route_table.id}"
}

/* Public network */
output "public_subnet_az1" {
  value = "${aws_subnet.az1_public.id}"
}

output "public_subnet_az2" {
  value = "${aws_subnet.az2_public.id}"
}

output "public_route_table" {
  value = "${aws_route_table.public_network.id}"
}

/* Security Groups */
output "bosh_security_group" {
  value = "${aws_security_group.bosh.id}"
}

output "local_vpc_traffic_security_group" {
    value = "${aws_security_group.local_vpc_traffic.id}"
}

output "web_traffic_security_group" {
  value = "${aws_security_group.web_traffic.id}"
}