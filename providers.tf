terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.0.1"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
  access_key = var.access_key
  secret_key = var.secret_key
  # access_key = data.vault_generic_secret.demo.data["access_key"]
  # secret_key = data.vault_generic_secret.demo.data["secret_key"]

}

# provider "vault" {
#   address = "https://test-cluster-public-vault-90088a28.7a4b82f9.z1.hashicorp.cloud:8200"
#   token   = "hvs.CAESIKvUUY9p3L1h0oSIt-wLu2iSpSn8H-18SobDqf7xo1B1GicKImh2cy42NjNmb3dVb0ZjRFhQOUxtcGlsMzdKdm0uVmtXb2gQjwE"
# }
