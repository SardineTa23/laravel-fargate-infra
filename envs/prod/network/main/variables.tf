variable "vpc_cidr" {
  type    = string
  default = "172.31.0.0/16"
}

variable "azs" {
  type = map(object({
    public_cidr  = string
    private_cidr = string
  }))

  default = {
    "a" = {
      private_cidr = "172.31.0.0/20"
      public_cidr  = "172.31.48.0/20"
    },
    "c" = {
      private_cidr = "172.31.16.0/20"
      public_cidr  = "172.31.64.0/20"
    }
  }
}

# terraform apply -var='enable_nat_gateway=false'で作成すると、Natなしとなり料金がかからない
variable "enable_nat_gateway" {
  type    = bool
  default = true
}

# 可用性を考えるとNatは複数必要だが、こちらがFalseであれば作成されるNatは一つになり料金を抑えられる
variable "single_nat_gateway" {
  type    = bool
  default = true
}
