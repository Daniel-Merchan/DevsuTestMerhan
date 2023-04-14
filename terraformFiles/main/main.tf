terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.44.1"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "<sub-id>"
  tenant_id       = "<tenant-id"
}

#-------------------AZURE KEY VAULT DATA FOR SERVICE PRINICPAL CREDS------------------------
data "azurerm_key_vault" "mykeyvault" {
  name="dmerchankeys"
  resource_group_name = "terraformkeys"

}
data "azurerm_key_vault_secret" "clientSe" {
  name = "clientSecret"
  key_vault_id = data.azurerm_key_vault.mykeyvault.id
}
data "azurerm_key_vault_secret" "clientID" {
  name = "clientID"
  key_vault_id = data.azurerm_key_vault.mykeyvault.id
}
#----------------------------------------------------------------

#creating a resource group
resource "azurerm_resource_group" "myresourcegroup" {
  name     = "${var.env_name}-resourcegrooup"
  location = "eastus"

}
#creating the clusters
resource "azurerm_kubernetes_cluster" "mycluster" {
  name                = "${var.env_name}-${var.cluster_name}"
  location            = azurerm_resource_group.myresourcegroup.location
  resource_group_name = azurerm_resource_group.myresourcegroup.name
  dns_prefix          = "${var.env_name}cluster"

  default_node_pool {
    name            = "${var.env_name}pool"
    node_count      = "${var.nodes}"
    vm_size         = "Standard_B2s"
  }

  service_principal {
    client_id     = data.azurerm_key_vault_secret.clientID.value
    client_secret = data.azurerm_key_vault_secret.clientSe.value  
  }

  tags = {
    environment = "${var.env_name}"
  }
  linux_profile {
    admin_username = "dmerchan"

    ssh_key {
      key_data = file("~/.ssh/id_rsa.pub")   #public key of boot machine
    }
  }

}
}
