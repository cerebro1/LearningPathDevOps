#resource aws_default_vpc eu-north-1 {}
resource aws_default_vpc ap-south-1 {}
#resource aws_default_vpc eu-west-3 {}
#resource aws_default_vpc eu-west-2 {}
#resource aws_default_vpc eu-west-1 {}
#resource aws_default_vpc ap-northeast-2 {}
resource aws_default_vpc ap-northeast-1 {
  provider = aws.ap-northeast-1
}
#resource aws_default_vpc sa-east-1 {}
#resource aws_default_vpc ca-central-1 {}
#resource aws_default_vpc ap-southeast-1 {}
#resource aws_default_vpc ap-southeast-2 {}
#resource aws_default_vpc eu-central-1 {}
#resource aws_default_vpc us-east-1 {}
#resource aws_default_vpc us-east-2 {}
#resource aws_default_vpc us-west-1 {}
#resource aws_default_vpc us-west-2 {}
