resource "aws_security_group" "allow_ssh_cso" {
  vpc_id = aws_vpc.my-vpc.id
  name   = "allow_ssh_cso"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    name = "allow_ssh_cso"
  }
}