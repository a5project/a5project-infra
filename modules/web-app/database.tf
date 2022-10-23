# Provision a database
# --------------------

resource "aws_db_instance" "db_instance" {
  allocated_storage = var.db_allocated_storage
  storage_type = var.db_storage_type
  engine = var.db_engine
  engine_version = var.db_engine_version
  instance_class = var.db_instance_class
  name = var.db_name
  username = var.db_user
  password = var.db_pass
  skip_final_snapshot = true
}
