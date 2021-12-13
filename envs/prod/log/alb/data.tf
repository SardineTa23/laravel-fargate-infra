# ELBの管理をおこなっているAWSアカウントIDを参照(リージョンごとに異なる)
data "aws_elb_service_account" "current" {}