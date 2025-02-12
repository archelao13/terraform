terraform {
  cloud {
    organization = "TerraformProjectCIS"  # Sostituisci con il nome della tua organizzazione
    workspaces {
      name = "terraform-demo"
    }
  }
}

provider "aws" {
  region = "eu-south-1"  # Cambia con la tua regione AWS
}

resource "aws_instance" "example" {
  ami           = "ami-12345678"  # Sostituisci con una AMI valida
  instance_type = "t2.micro"
}
