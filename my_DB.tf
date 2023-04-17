data "aws_secretsmanager_secret" "by-arn" {
  arn = var.SECRET_ARN
}

data "aws_secretsmanager_secret_version" "secret-version" {
  secret_id = data.aws_secretsmanager_secret.by-arn.id
}

resource "aws_db_subnet_group" "mysql_subnets" {
  name       = "main"
  subnet_ids = [module.network.priv_sub_1_id, module.network.priv_sub_2_id]

  tags = {
    Name = "My DB subnet group"
  }
}

resource "aws_db_instance" "mysql" {
  allocated_storage      = 5
  db_name                = var.DB_NAME
  engine                 = var.DB_ENGINE
  engine_version         = var.DB_ENGINE_VERSION
  instance_class         = var.DB_INSTANCE_CLASS
  username               = jsondecode(data.aws_secretsmanager_secret_version.secret-version.secret_string)["username"]
  password               = jsondecode(data.aws_secretsmanager_secret_version.secret-version.secret_string)["password"]
  parameter_group_name   = "default.mysql5.7"
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.mysql-sec.id]
  db_subnet_group_name   = aws_db_subnet_group.mysql_subnets.id
}
