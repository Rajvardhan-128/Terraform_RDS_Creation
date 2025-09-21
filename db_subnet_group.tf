resource "aws_db_subnet_group" "mydb_subnet_group" {
  name       = "main"
  subnet_ids = data.aws_subnets.available_db_subnet.ids

  tags = {
    Name = "My DB subnet group"
  }
  
}