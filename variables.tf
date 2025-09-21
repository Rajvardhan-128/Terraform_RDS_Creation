variable "engine_name" {
    description = "The database engine to use"
    type        = string
    default     = "mysql"
  
}

variable "db_name" {
    description = "The name of the database"
    type        = string
    default     = "mydatabase"
  
}

variable "db_username" {
    description = "The username for the database"
    type        = string
    default     = "admin"
  
}

variable "db_password" {
    description = "The password for the database"
    type        = string
    default     = "YourPassword123!"

}

variable "skip_final_snapshot" {
    description = "Whether to skip the final snapshot before deletion"
    type        = bool
    default     = true
  
}

variable "delete_automated_backups" {
    description = "Whether to delete automated backups"
    type        = bool
    default     = true
  
}

variable "multi_az_deployment" {
    description = "Whether to deploy the database in multiple AZs"
    type        = bool
    default     = false
  
}

variable "publicly_accessible" {
    description = "Whether the database is publicly accessible"
    type        = bool  
    default     = false
  
}      


variable "instance_class" {
    description = "The instance class for the database"
    type        = string
    default     = "db.t3.micro"
  
}   

