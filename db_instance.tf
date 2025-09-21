resource "aws_db_instance" "db_instance" {
    identifier = "mydb-instance"
    engine = var.engine_name
    db_name = var.db_name
    username = var.db_username
    password = var.db_password
    skip_final_snapshot = var.skip_final_snapshot
    delete_automated_backups = var.delete_automated_backups
    multi_az = var.multi_az_deployment
    publicly_accessible = var.publicly_accessible
    vpc_security_group_ids = [data.aws_security_group.tcw_sg.id]
    db_subnet_group_name = aws_db_subnet_group.mydb_subnet_group.name
    instance_class = var.instance_class
    allocated_storage = 20

    tags = {
        Name = var.db_name
    }
}