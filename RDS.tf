provider "aws" {
  region = "ap-south-1"
  profile = "akash"
}

resource "aws_db_instance" "default" {
  allocated_storage = 20
  engine            = "mysql"
  engine_version    = "5.7.30"
  instance_class    = "db.t2.micro"
  name     = "mydb"
  username = "my_db"
  password = "redhat12345"
  port     = "3306"
  publicly_accessible = true
  iam_database_authentication_enabled = true
  vpc_security_group_ids = ["sg-080a0530731935177"]
  tags = {
     Name = "mysql"
 }
}
