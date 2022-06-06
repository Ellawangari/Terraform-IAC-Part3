region = "us-east-1"

vpc_cidr = "172.16.0.0/16"

enable_dns_support = "true"

enable_dns_hostnames = "true"

enable_classiclink = "false"

enable_classiclink_dns_support = "false"

preferred_number_of_public_subnets = 2

preferred_number_of_private_subnets = 4

environment = "production"

ami = "ami-0b0af3577fe5e3532"

keypair = "redhatkey"


account_no = "081243314443"

db-username = "admin"

db-password = "admin12345"

tags = {
  Enviroment      = "Production"
  Owner-Email     = "elamaina8@gmail.com"
  Managed-By      = "Terraform"
  Billing-Account = "081243314443"


}

