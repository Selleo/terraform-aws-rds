resource "random_id" "this" {
  byte_length = 4

  prefix = "selleo-aws-rds-postgres-"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.18.1"

  name  = random_id.this.hex
  cidr = "10.0.0.0/16"

  azs              = ["eu-central-1a", "eu-central-1b"]
  private_subnets  = ["10.0.1.0/24"]
  database_subnets = ["10.0.51.0/24", "10.0.52.0/24"]
  public_subnets   = ["10.0.101.0/24", "10.0.102.0/24"]

  single_nat_gateway = true
  enable_nat_gateway = false
  enable_vpn_gateway = false
}
