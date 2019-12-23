resource aws_instance test_instance {
  instance_type = "t2.micro"
  ami           = "ami-0f59afa4a22fad2f0"
  count         = 0
}
resource aws_instance ap_php_instance {
  provider                    = aws.ap-south-1
  instance_type               = "t2.micro"
  ami                         = data.aws_ami.debian_buster.id
  user_data                   = file("${path.module}/install_ap_php.sh")
  associate_public_ip_address = true
  key_name                    = "sonalis-pub-key"
}
output "login_message" {
  value = format("login as : ssh admin@%s", aws_instance.ap_php_instance.public_ip)
}

