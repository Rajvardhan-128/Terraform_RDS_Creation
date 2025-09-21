// This looks up an existing VPC in your AWS account.
data "aws_vpc" "vpc_available" {
  filter {
    name   = "tag:Name"
    values = ["tcw_vpc"]
  }
}


# Fetches all subnet IDs inside the VPC you just found (tcw_vpc).
data "aws_subnets" "available_db_subnet" {
#   vpc_id = data.aws_vpc.vpc_available.id

  filter {

# Uses a filter: tag:Name = tcw_database* (the * means wildcard).

    name   = "tag:Name"

# This means: pick only subnets whose name starts with tcw_database.
    values = ["tcw_database*"]

  }
}

# Fetches all AZs (Availability Zones) in your region.
data "aws_availability_zones" "available" {
  state = "available"
}

//Looks up an existing security group by name tag.
data "aws_security_group" "tcw_sg" {
  filter {
    name   = "tag:Name"
    values = ["tcw_security_group"]
    
  }
}