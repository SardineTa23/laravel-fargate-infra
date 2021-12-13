terraform {
  backend "s3" {
    bucket = "kensho-tfstate"
    key    = "example/prod/log/app_tigers623_v1.0.0.tfstate"
    region = "ap-northeast-1"
  }
}
