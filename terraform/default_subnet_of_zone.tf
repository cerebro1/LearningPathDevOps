#availability zone mandatory to provide for default subnet

resource aws_default_subnet ap-south-1a {
  availability_zone = "ap-south-1a"
}
resource aws_default_subnet ap-south-1b {
  availability_zone = "ap-south-1b"
}
resource aws_default_subnet ap-south-1c {
  availability_zone = "ap-south-1c"
}
