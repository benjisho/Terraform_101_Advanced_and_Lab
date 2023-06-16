provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "resource_group" // replace with a variable if the name needs to be customizable
  location = var.region
}

resource "azurerm_virtual_network" "vnet" {
  name                = "virtual_network" // replace with a variable if the name needs to be customizable
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = [var.vpc_cidr]
}

resource "azurerm_subnet" "subnet" {
  name                 = "subnet" // replace with a variable if the name needs to be customizable
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.subnet_cidr]
}

resource "azurerm_public_ip" "public_ip" {
  name                = "public_ip" // replace with a variable if the name needs to be customizable
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Dynamic"
}

resource "azurerm_network_security_group" "nsg" {
  name                = "network_security_group" // replace with a variable if the name needs to be customizable
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_network_interface" "nic" {
  name                      = "network_interface" // replace with a variable if the name needs to be customizable
  location                  = azurerm_resource_group.rg.location
  resource_group_name       = azurerm_resource_group.rg.name
  network_security_group_id = azurerm_network_security_group.nsg.id

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public_ip.id
  }
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                = "virtual_machine" // replace with a variable if the name needs to be customizable
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  network_interface_id = azurerm_network_interface.nic.id
  size                = var.instance_type["azure"]
  admin_username      = "adminuser" // replace with a variable if the name needs to be customizable

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = var.image_id["azure"]
    version   = "latest"
  }

  disable_password_authentication = true
}

resource "azurerm_storage_account" "sa" {
  name                     = "storage_account" // replace with a variable if the name needs to be customizable
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "sc" {
  name                  = "storage_container" // replace with a variable if the name needs to be customizable
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}
