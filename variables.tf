variable "security_group_vpn_ip" {
  default = "10.20.30.40/32"
}
# variable "instance_type_size" {}
variable "access_key" {}
variable "secret_key" {}
# variable "instance_tags" {
#   description = "Project Name and Build Version"
#   type = number
# }

# Lists and Maps
# variable "instance_map" {
#   type = map
#   default = {
#     eu1m = "t1.micro"
#     eu2m = "t2.micro"
#   }
# }
variable "instance_list" {
  type    = list(any)
  default = ["t1.micro", "t2.micro"]
}

variable "name_list" {
  type    = list(any)
  default = ["dev_instance", "test_instance", "prod_instance"]
}

# variable "is_test_env" {
#   type = string
#   description = "Is this a production environment (yes/no)?"
# }

variable "ami_list" {
  type = list(any)
  default = [
    "ami-0e1c5be2aa956338b",
    "ami-0a6006bac3b9bb8d3",
    "ami-01438d6029c106183"
  ]
}
