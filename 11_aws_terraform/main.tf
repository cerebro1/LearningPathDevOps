terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "ap-south-1"
}

# https://www.terraform.io/docs/configuration/providers.html#alias-multiple-provider-instances
# use as aws.ap-south-1
provider aws {
  alias  = "ap-south-1"
  region = "ap-south-1"
}

# use as aws.ap-northeast-1
provider aws {
  alias  = "ap-northeast-1"
  region = "ap-northeast-1"
}

terraform {
  backend "s3" {
    bucket         = "terraform-up-and-running-state-sonalis" #variables not allowed here
    key            = "terraform.tfstate"                      #path
    region         = "ap-south-1"
    dynamodb_table = "terraform-up-and-running-locks"
  }
}

