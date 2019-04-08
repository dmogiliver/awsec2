//subnets.tf
resource "aws_subnet" "subnet-one" {
  cidr_block = "${cidrsubnet(aws_vpc.dmogiliver-env.cidr_block, 3, 1)}"
  vpc_id = "${aws_vpc.dmogiliver-env.id}"
  availability_zone = "us-west-2a"
}