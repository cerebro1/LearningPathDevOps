resource aws_default_network_acl nacl-ap-south-1 {
  default_network_acl_id = aws_default_vpc.ap-south-1.default_network_acl_id
  subnet_ids = [
    "subnet-401a3228",
    "subnet-76fe673a",
    "subnet-af3e9ed4",
  ]

  ingress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = aws_default_vpc.ap-south-1.cidr_block
    from_port  = 0
    to_port    = 0
  }
  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    icmp_code  = 0
    icmp_type  = 0
    protocol   = "6"
    rule_no    = 22
    to_port    = 65535
  }

  egress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
}
