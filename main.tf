provider "azurerm" {

 subscription_id = "282067c8-5872-4eb6-a3d5-5d821583b8e8"
 client_id = "5b0a0a71-a706-456a-a523-2817f5b00c72"
 client_secret = "M-28Q~cJSDexb4a7Rh1XseBySpEIIzN5T2J-4aPB"
tenant_id = "b3e2a00d-5677-44ff-9b4f-c771831f95b7" 

features {
  
}
}

resource "azurerm_resource_group" "demo_resourceg0789" {
  name     = "demo-resourceg0789"
  location = "East Us"
}
# Storage Account Resource

resource "azurerm_storage_account" "newdemostorage0789123" {
  name                     = "newdemostorage0789123"
  resource_group_name      = azurerm_resource_group.demo_resourceg789.name
  location                 = azurerm_resource_group.demo_resourceg789.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
