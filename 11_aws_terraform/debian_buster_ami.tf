data "aws_ami" "debian_buster" {
  provider    = aws.ap-south-1
  most_recent = true
  owners      = ["136693071363"] # Debian 10 SPI account

  filter {
    name   = "name"
    values = ["debian-10-amd64-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
