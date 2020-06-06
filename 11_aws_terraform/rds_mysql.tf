resource "aws_db_instance" "mysqldb" {
  count                = var.mysql_enabled ? 1 : 0
  allocated_storage    = 5
  apply_immediately    = false
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t2.micro"
  identifier           = "mysql-test"
  name                 = "testdb"
  skip_final_snapshot  = true
  username             = "foo"
  publicly_accessible  = true
  password             = "foobarbaz"
  parameter_group_name = "default.mysql8.0"
}
