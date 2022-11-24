

resource "aws_instance" "ec2_example" {
  ami           = var.ami
  instance_type = var.instance_type
  associate_public_ip_address = true

  #VPC subnet
  subnet_id = aws_subnet.mypublicsubnet.id

  #Security group
  vpc_security_group_ids = [aws_security_group.allow_ssh_cso.id]

  #Public SSH key
  key_name = aws_key_pair.generated_key_pair_cso.key_name

  tags = {
    name = "cso"
  }
}