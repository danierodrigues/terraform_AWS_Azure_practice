resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}


resource "aws_key_pair" "generated_key_pair_cso" {
  key_name   = "generated_key_pair_cso"
  public_key = tls_private_key.example.public_key_openssh
}

output "private_key" {
  value     = tls_private_key.example.private_key_pem
  sensitive = true
}