terraform {
  cloud {
    organization = "TerraformProjectCIS"  # Sostituisci con il nome della tua organizzazione
    workspaces {
      name = "terraform-demo"
    }
  }
}

provider "null" {}

resource "null_resource" "example" {
  triggers = {
    example = "This is a test"
  }
}
