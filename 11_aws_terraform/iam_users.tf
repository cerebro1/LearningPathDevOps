resource "aws_iam_user" "iam_user" {
  for_each = toset(var.users)
  name     = each.value
  tags = {
    Name = each.value,
    key  = each.key #index of array
  }
}
