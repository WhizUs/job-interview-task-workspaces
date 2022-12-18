terraform {
  required_version = ">= 1.0.0"

  required_providers {
    exoscale = {
      source  = "exoscale/exoscale"
      version = "0.41.1"
    }
  }

  # You can just comment it out
  backend "s3" {
    bucket    = "job-interviews"
    key       = "workspaces.tfstate"
    region    = "at-vie-1"
    endpoint  = "https://sos-at-vie-1.exo.io"

    skip_credentials_validation = true
    skip_region_validation = true
  }
}