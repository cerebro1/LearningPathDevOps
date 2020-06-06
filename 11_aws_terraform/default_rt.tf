resource "aws_default_route_table" "rt-default-vpc-ap-south-1" {
  default_route_table_id = aws_default_vpc.ap-south-1.default_route_table_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-f7934f9f"
  }
}
