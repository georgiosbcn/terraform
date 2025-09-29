terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "1.60.0" # or latest stable
    }
  }
}

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.region
}

resource "ibm_is_instance" "vm_example" {
  name              = "example-instance"
  image             = var.image_id
  profile           = "bx2-2x8" # small profile
  zone              = var.zone
  resource_group    = var.resource_group_id
  vpc               = var.vpc_id
  subnet            = var.subnet_id
  primary_network_interface {
    subnet = var.subnet_id
  }
  boot_volume {
    name = "boot-volume-example"
  }
  keys = [var.ssh_key_id]
}
