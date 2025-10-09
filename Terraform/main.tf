terraform {
  required_providers {
    azurerm = {
      source  = "azurerm"
      version = "4.40.0"
    }
  }
}
provider "azurerm" {
  features {}
}
resource "azurerm_linux_virtual_machine" "res-0" {
  admin_password                                         = "" # Masked sensitive attribute
  admin_username                                         = "azureuser"
  allow_extension_operations                             = true
  availability_set_id                                    = ""
  bypass_platform_safety_checks_on_user_schedule_enabled = false
  capacity_reservation_group_id                          = ""
  computer_name                                          = "three-tieEJSCK6"
  custom_data                                            = "" # Masked sensitive attribute
  dedicated_host_group_id                                = ""
  dedicated_host_id                                      = ""
  disable_password_authentication                        = true
  disk_controller_type                                   = "SCSI"
  edge_zone                                              = ""
  encryption_at_host_enabled                             = false
  eviction_policy                                        = ""
  extensions_time_budget                                 = "PT1H30M"
  license_type                                           = ""
  location                                               = "eastus"
  max_bid_price                                          = -1
  name                                                   = "THREE-TIER-BACKEND_CB8FE66A"
  network_interface_ids                                  = [azurerm_network_interface.res-33.id]
  patch_assessment_mode                                  = "ImageDefault"
  patch_mode                                             = "ImageDefault"
  platform_fault_domain                                  = -1
  priority                                               = "Regular"
  provision_vm_agent                                     = true
  proximity_placement_group_id                           = ""
  reboot_setting                                         = ""
  resource_group_name                                    = "THREETIERDEMO"
  secure_boot_enabled                                    = false
  size                                                   = "Standard_D2ps_v6"
  source_image_id                                        = ""
  tags = {
    VirtualMachineProfileTimeCreated = "10/8/2025 8:25:50 AM +00:00"
  }
  user_data                         = ""
  virtual_machine_scale_set_id      = azurerm_orchestrated_virtual_machine_scale_set.res-6.id
  vm_agent_platform_updates_enabled = false
  vtpm_enabled                      = false
  zone                              = ""
  additional_capabilities {
    hibernation_enabled = false
    ultra_ssd_enabled   = false
  }
  admin_ssh_key {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCyxB/vgAANJzECVx6ISWoEnsK4Nc+2+2q4G2p6t10OcZuHprykZaBYZe8am8y07Bb1YexsVh2LEUxaMccZwxlmkGZhCMM6uCYoh9yyFy0ZD3XeiU58LqIfERiCZEe+dObhWpuG0wX4VoLT6qfewa5EZry8cbBMpKI6BvHJ/is83Tp9KmENMyGmEaynszn8lPPAtNT5PPuBF+EqcRFw08Jm5YhyGcvpUhKjHkhylnjOc/JzXA/PDPA5wz+p0s/AAz3Bkxle7Xe6N+/WiifZFbyWXlwq6eYB0EMjinRZI+G/451OOp0Ird+WpLnbcFkxyCKYD/HGU+Br2lcHLwaCJW0ke1vFu3gfF54xwepQW0MP8lR1iQtdcXG7L4tXv2vBfzVkIIDsh8j4SYUhkruAI/sAwm51bwnsdZG1Nff6KNJccS/Vvr3rCVesDkHyQn00rEjMc51JhOJKe6gfA/wU7I/S/U9w89LH3eWm4Z2qio7ix1/HzFfroxe6wrTVt6nvfxk= generated-by-azure"
    username   = "azureuser"
  }
  boot_diagnostics {
    storage_account_uri = ""
  }
  identity {
    identity_ids = [azurerm_user_assigned_identity.res-24.id]
    type         = "UserAssigned"
  }
  os_disk {
    caching                          = "ReadWrite"
    disk_encryption_set_id           = ""
    disk_size_gb                     = 30
    name                             = "three-tier-backend_cb8fe66a_OsDisk_1_40337fed11ae4b35bf1b7af63ccff2b5"
    secure_vm_disk_encryption_set_id = ""
    security_encryption_type         = ""
    storage_account_type             = "Standard_LRS"
    write_accelerator_enabled        = false
  }
  source_image_reference {
    offer     = "0001-com-ubuntu-server-jammy"
    publisher = "canonical"
    sku       = "22_04-lts-arm64"
    version   = "latest"
  }
}
resource "azurerm_linux_virtual_machine" "res-1" {
  admin_password                                         = "" # Masked sensitive attribute
  admin_username                                         = "azureuser"
  allow_extension_operations                             = true
  availability_set_id                                    = ""
  bypass_platform_safety_checks_on_user_schedule_enabled = false
  capacity_reservation_group_id                          = ""
  computer_name                                          = "three-tieBAJ5R5"
  custom_data                                            = "" # Masked sensitive attribute
  dedicated_host_group_id                                = ""
  dedicated_host_id                                      = ""
  disable_password_authentication                        = true
  disk_controller_type                                   = "SCSI"
  edge_zone                                              = ""
  encryption_at_host_enabled                             = false
  eviction_policy                                        = ""
  extensions_time_budget                                 = "PT1H30M"
  license_type                                           = ""
  location                                               = "eastus"
  max_bid_price                                          = -1
  name                                                   = "THREE-TIER-VMSS_D74D061F"
  network_interface_ids                                  = [azurerm_network_interface.res-36.id]
  patch_assessment_mode                                  = "ImageDefault"
  patch_mode                                             = "ImageDefault"
  platform_fault_domain                                  = -1
  priority                                               = "Regular"
  provision_vm_agent                                     = true
  proximity_placement_group_id                           = ""
  reboot_setting                                         = ""
  resource_group_name                                    = "THREETIERDEMO"
  secure_boot_enabled                                    = false
  size                                                   = "Standard_D2ps_v6"
  source_image_id                                        = ""
  tags = {
    VirtualMachineProfileTimeCreated = "10/7/2025 1:24:27 PM +00:00"
  }
  user_data                         = ""
  virtual_machine_scale_set_id      = azurerm_orchestrated_virtual_machine_scale_set.res-8.id
  vm_agent_platform_updates_enabled = false
  vtpm_enabled                      = false
  zone                              = ""
  additional_capabilities {
    hibernation_enabled = false
    ultra_ssd_enabled   = false
  }
  admin_ssh_key {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDDdYjTIyWzzjtVeexzJkuq81voB7IOPoQE2yC1uP28f3RmCcVgJjHq0O+cQ5URNqyffwZi22NaOBYcqLECzrEMWBovFo2N0Sul2377UUyT29vx+R0H9jx1I2+SqpHSUMO2NjfTqBOVQf02fbyrJXBykz9mFRTbo+YrzylPpMk/2tQ2xeRZ95ZrbHTzkaVu/Zvsohxh1MLIHoqZHem6pmhVeN04Hw96gBkw6w58Fc3y4yLBg7JyhS2/ACIDzfEA5+ZP+ki6kpjFkn3EKIFbnaa7Kve38+oYzbd9v8iYfyCjRBcNQWNEoi/jETPMEChKxwXA4X5r162s6n9ct7iKk3HkTFTqwmo6D7I2Kd7XlD2AxyhSjTtKYTazUlmkRnMGo/FwLFML/5JT9qS39uU8trJl97sAWYUF2udSLa+eo298wd0JdHZDxHX9m6nGhjjbAzuIeZl65Rq5edI8d8v6eAx7W1WLeuHcD+7f+AxVqLBYIYCjLsJWO+kL38LrX8O3fS0= generated-by-azure"
    username   = "azureuser"
  }
  os_disk {
    caching                          = "ReadWrite"
    disk_encryption_set_id           = ""
    disk_size_gb                     = 30
    name                             = "three-tier-vmss_d74d061f_OsDisk_1_745ad4d6d42644d2b26b2fe560ed5a0c"
    secure_vm_disk_encryption_set_id = ""
    security_encryption_type         = ""
    storage_account_type             = "Standard_LRS"
    write_accelerator_enabled        = false
  }
  source_image_reference {
    offer     = "0001-com-ubuntu-server-jammy"
    publisher = "canonical"
    sku       = "22_04-lts-arm64"
    version   = "latest"
  }
}
resource "azurerm_virtual_machine_extension" "res-2" {
  auto_upgrade_minor_version  = true
  automatic_upgrade_enabled   = false
  failure_suppression_enabled = false
  name                        = "CustomScript"
  protected_settings          = "" # Masked sensitive attribute
  provision_after_extensions  = []
  publisher                   = "Microsoft.Azure.Extensions"
  settings                    = jsonencode({})
  tags                        = {}
  type                        = "CustomScript"
  type_handler_version        = "2.0"
  virtual_machine_id          = "/subscriptions/ae664dcd-dcfb-44a7-9c6e-a9f1408975ff/resourceGroups/THREETIERDEMO/providers/Microsoft.Compute/virtualMachines/three-tier-vmss_d74d061f"
  depends_on = [
    azurerm_linux_virtual_machine.res-1,
  ]
}
resource "azurerm_resource_group" "res-3" {
  location   = "eastus"
  managed_by = ""
  name       = "threetierdemo"
  tags       = {}
}
resource "azurerm_ssh_public_key" "res-4" {
  location            = "eastus"
  name                = "backend_key"
  public_key          = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCyxB/vgAANJzECVx6ISWoEnsK4Nc+2+2q4G2p6t10OcZuHprykZaBYZe8am8y07Bb1YexsVh2LEUxaMccZwxlmkGZhCMM6uCYoh9yyFy0ZD3XeiU58LqIfERiCZEe+dObhWpuG0wX4VoLT6qfewa5EZry8cbBMpKI6BvHJ/is83Tp9KmENMyGmEaynszn8lPPAtNT5PPuBF+EqcRFw08Jm5YhyGcvpUhKjHkhylnjOc/JzXA/PDPA5wz+p0s/AAz3Bkxle7Xe6N+/WiifZFbyWXlwq6eYB0EMjinRZI+G/451OOp0Ird+WpLnbcFkxyCKYD/HGU+Br2lcHLwaCJW0ke1vFu3gfF54xwepQW0MP8lR1iQtdcXG7L4tXv2vBfzVkIIDsh8j4SYUhkruAI/sAwm51bwnsdZG1Nff6KNJccS/Vvr3rCVesDkHyQn00rEjMc51JhOJKe6gfA/wU7I/S/U9w89LH3eWm4Z2qio7ix1/HzFfroxe6wrTVt6nvfxk= generated-by-azure"
  resource_group_name = azurerm_resource_group.res-3.name
  tags                = {}
}
resource "azurerm_ssh_public_key" "res-5" {
  location            = "eastus"
  name                = "three_key"
  public_key          = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDDdYjTIyWzzjtVeexzJkuq81voB7IOPoQE2yC1uP28f3RmCcVgJjHq0O+cQ5URNqyffwZi22NaOBYcqLECzrEMWBovFo2N0Sul2377UUyT29vx+R0H9jx1I2+SqpHSUMO2NjfTqBOVQf02fbyrJXBykz9mFRTbo+YrzylPpMk/2tQ2xeRZ95ZrbHTzkaVu/Zvsohxh1MLIHoqZHem6pmhVeN04Hw96gBkw6w58Fc3y4yLBg7JyhS2/ACIDzfEA5+ZP+ki6kpjFkn3EKIFbnaa7Kve38+oYzbd9v8iYfyCjRBcNQWNEoi/jETPMEChKxwXA4X5r162s6n9ct7iKk3HkTFTqwmo6D7I2Kd7XlD2AxyhSjTtKYTazUlmkRnMGo/FwLFML/5JT9qS39uU8trJl97sAWYUF2udSLa+eo298wd0JdHZDxHX9m6nGhjjbAzuIeZl65Rq5edI8d8v6eAx7W1WLeuHcD+7f+AxVqLBYIYCjLsJWO+kL38LrX8O3fS0= generated-by-azure"
  resource_group_name = azurerm_resource_group.res-3.name
  tags                = {}
}
resource "azurerm_orchestrated_virtual_machine_scale_set" "res-6" {
  capacity_reservation_group_id = ""
  encryption_at_host_enabled    = false
  eviction_policy               = ""
  extension_operations_enabled  = true
  extensions_time_budget        = "PT1H30M"
  instances                     = 1
  license_type                  = ""
  location                      = "eastus"
  max_bid_price                 = -1
  name                          = "three-tier-backend"
  network_api_version           = "2020-11-01"
  platform_fault_domain_count   = 1
  priority                      = "Regular"
  proximity_placement_group_id  = ""
  resource_group_name           = azurerm_resource_group.res-3.name
  single_placement_group        = false
  sku_name                      = "Standard_D2ps_v6"
  source_image_id               = ""
  tags                          = {}
  upgrade_mode                  = "Manual"
  user_data_base64              = "" # Masked sensitive attribute
  zone_balance                  = false
  zones                         = []
  additional_capabilities {
    ultra_ssd_enabled = false
  }
  boot_diagnostics {
    storage_account_uri = ""
  }
  network_interface {
    auxiliary_mode                = ""
    auxiliary_sku                 = ""
    dns_servers                   = []
    enable_accelerated_networking = false
    enable_ip_forwarding          = false
    name                          = "threetiervent-backend-nic01"
    network_security_group_id     = azurerm_network_security_group.res-39.id
    primary                       = true
    ip_configuration {
      application_gateway_backend_address_pool_ids = []
      application_security_group_ids               = []
      load_balancer_backend_address_pool_ids       = [azurerm_lb_backend_address_pool.res-26.id]
      name                                         = "threetiervent-backend-nic01-defaultIpConfiguration"
      primary                                      = true
      subnet_id                                    = "/subscriptions/ae664dcd-dcfb-44a7-9c6e-a9f1408975ff/resourceGroups/threetierdemo/providers/Microsoft.Network/virtualNetworks/threetiervent/subnets/private-subnet"
      version                                      = "IPv4"
    }
  }
  os_disk {
    caching                   = "ReadWrite"
    disk_encryption_set_id    = ""
    disk_size_gb              = 30
    storage_account_type      = "Standard_LRS"
    write_accelerator_enabled = false
  }
  os_profile {
    custom_data = "" # Masked sensitive attribute
    linux_configuration {
      admin_password                  = "" # Masked sensitive attribute
      admin_username                  = "azureuser"
      computer_name_prefix            = "three-tie"
      disable_password_authentication = true
      patch_assessment_mode           = "ImageDefault"
      patch_mode                      = "ImageDefault"
      provision_vm_agent              = true
      admin_ssh_key {
        public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCyxB/vgAANJzECVx6ISWoEnsK4Nc+2+2q4G2p6t10OcZuHprykZaBYZe8am8y07Bb1YexsVh2LEUxaMccZwxlmkGZhCMM6uCYoh9yyFy0ZD3XeiU58LqIfERiCZEe+dObhWpuG0wX4VoLT6qfewa5EZry8cbBMpKI6BvHJ/is83Tp9KmENMyGmEaynszn8lPPAtNT5PPuBF+EqcRFw08Jm5YhyGcvpUhKjHkhylnjOc/JzXA/PDPA5wz+p0s/AAz3Bkxle7Xe6N+/WiifZFbyWXlwq6eYB0EMjinRZI+G/451OOp0Ird+WpLnbcFkxyCKYD/HGU+Br2lcHLwaCJW0ke1vFu3gfF54xwepQW0MP8lR1iQtdcXG7L4tXv2vBfzVkIIDsh8j4SYUhkruAI/sAwm51bwnsdZG1Nff6KNJccS/Vvr3rCVesDkHyQn00rEjMc51JhOJKe6gfA/wU7I/S/U9w89LH3eWm4Z2qio7ix1/HzFfroxe6wrTVt6nvfxk= generated-by-azure"
        username   = "azureuser"
      }
    }
  }
  source_image_reference {
    offer     = "0001-com-ubuntu-server-jammy"
    publisher = "canonical"
    sku       = "22_04-lts-arm64"
    version   = "latest"
  }
  depends_on = [
    # One of azurerm_subnet.res-75,azurerm_subnet_network_security_group_association.res-76 (can't auto-resolve as their ids are identical)
  ]
}
resource "azurerm_orchestrated_virtual_machine_scale_set" "res-8" {
  capacity_reservation_group_id = ""
  encryption_at_host_enabled    = false
  eviction_policy               = ""
  extension_operations_enabled  = true
  extensions_time_budget        = "PT1H30M"
  instances                     = 1
  license_type                  = ""
  location                      = "eastus"
  max_bid_price                 = -1
  name                          = "three-tier-vmss"
  network_api_version           = "2020-11-01"
  platform_fault_domain_count   = 1
  priority                      = "Regular"
  proximity_placement_group_id  = ""
  resource_group_name           = azurerm_resource_group.res-3.name
  single_placement_group        = false
  sku_name                      = "Standard_D2ps_v6"
  source_image_id               = ""
  tags                          = {}
  upgrade_mode                  = "Manual"
  user_data_base64              = "" # Masked sensitive attribute
  zone_balance                  = false
  zones                         = []
  additional_capabilities {
    ultra_ssd_enabled = false
  }
  network_interface {
    auxiliary_mode                = ""
    auxiliary_sku                 = ""
    dns_servers                   = []
    enable_accelerated_networking = false
    enable_ip_forwarding          = false
    name                          = "threetiervent-nic01"
    network_security_group_id     = azurerm_network_security_group.res-40.id
    primary                       = true
    ip_configuration {
      application_gateway_backend_address_pool_ids = []
      application_security_group_ids               = []
      load_balancer_backend_address_pool_ids       = [azurerm_lb_backend_address_pool.res-30.id]
      name                                         = "threetiervent-nic01-defaultIpConfiguration"
      primary                                      = true
      subnet_id                                    = "/subscriptions/ae664dcd-dcfb-44a7-9c6e-a9f1408975ff/resourceGroups/threetierdemo/providers/Microsoft.Network/virtualNetworks/threetiervent/subnets/public-subnet"
      version                                      = "IPv4"
    }
  }
  os_disk {
    caching                   = "ReadWrite"
    disk_encryption_set_id    = ""
    disk_size_gb              = 30
    storage_account_type      = "Standard_LRS"
    write_accelerator_enabled = false
  }
  os_profile {
    custom_data = "" # Masked sensitive attribute
    linux_configuration {
      admin_password                  = "" # Masked sensitive attribute
      admin_username                  = "azureuser"
      computer_name_prefix            = "three-tie"
      disable_password_authentication = true
      patch_assessment_mode           = "ImageDefault"
      patch_mode                      = "ImageDefault"
      provision_vm_agent              = true
      admin_ssh_key {
        public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDDdYjTIyWzzjtVeexzJkuq81voB7IOPoQE2yC1uP28f3RmCcVgJjHq0O+cQ5URNqyffwZi22NaOBYcqLECzrEMWBovFo2N0Sul2377UUyT29vx+R0H9jx1I2+SqpHSUMO2NjfTqBOVQf02fbyrJXBykz9mFRTbo+YrzylPpMk/2tQ2xeRZ95ZrbHTzkaVu/Zvsohxh1MLIHoqZHem6pmhVeN04Hw96gBkw6w58Fc3y4yLBg7JyhS2/ACIDzfEA5+ZP+ki6kpjFkn3EKIFbnaa7Kve38+oYzbd9v8iYfyCjRBcNQWNEoi/jETPMEChKxwXA4X5r162s6n9ct7iKk3HkTFTqwmo6D7I2Kd7XlD2AxyhSjTtKYTazUlmkRnMGo/FwLFML/5JT9qS39uU8trJl97sAWYUF2udSLa+eo298wd0JdHZDxHX9m6nGhjjbAzuIeZl65Rq5edI8d8v6eAx7W1WLeuHcD+7f+AxVqLBYIYCjLsJWO+kL38LrX8O3fS0= generated-by-azure"
        username   = "azureuser"
      }
    }
  }
  source_image_reference {
    offer     = "0001-com-ubuntu-server-jammy"
    publisher = "canonical"
    sku       = "22_04-lts-arm64"
    version   = "latest"
  }
  depends_on = [
    # One of azurerm_subnet.res-77,azurerm_subnet_network_security_group_association.res-78 (can't auto-resolve as their ids are identical)
  ]
}
resource "azurerm_postgresql_flexible_server" "res-10" {
  administrator_login               = "dbuser"
  administrator_password            = "" # Masked sensitive attribute
  administrator_password_wo_version = 0
  auto_grow_enabled                 = false
  backup_retention_days             = 7
  delegated_subnet_id               = ""
  geo_redundant_backup_enabled      = false
  location                          = "westus"
  name                              = "goal-tracker-db"
  private_dns_zone_id               = ""
  public_network_access_enabled     = false
  replication_role                  = ""
  resource_group_name               = azurerm_resource_group.res-3.name
  sku_name                          = "B_Standard_B2s"
  storage_mb                        = 32768
  storage_tier                      = "P4"
  tags                              = {}
  version                           = "17"
  zone                              = ""
  authentication {
    active_directory_auth_enabled = true
    password_auth_enabled         = true
    tenant_id                     = "b4c99fb9-fed3-4beb-96e4-bc32c3b56d20"
  }
}
resource "azurerm_postgresql_flexible_server_backup" "res-12" {
  name      = "backup_638955115203035904"
  server_id = azurerm_postgresql_flexible_server.res-10.id
}
resource "azurerm_postgresql_flexible_server_firewall_rule" "res-13" {
  end_ip_address   = "0.0.0.0"
  name             = "AllowAllAzureServicesAndResourcesWithinAzureIps_2025-10-8_14-35-54"
  server_id        = azurerm_postgresql_flexible_server.res-10.id
  start_ip_address = "0.0.0.0"
}
resource "azurerm_postgresql_flexible_server_firewall_rule" "res-14" {
  end_ip_address   = "203.187.194.23"
  name             = "ClientIPAddress_2025-10-8_15-37-2"
  server_id        = azurerm_postgresql_flexible_server.res-10.id
  start_ip_address = "203.187.194.23"
}
resource "azurerm_dev_test_global_vm_shutdown_schedule" "res-16" {
  daily_recurrence_time = "2100"
  enabled               = true
  location              = "eastus"
  tags                  = {}
  timezone              = "India Standard Time"
  virtual_machine_id    = "/subscriptions/ae664dcd-dcfb-44a7-9c6e-a9f1408975ff/resourceGroups/threetierdemo/providers/Microsoft.Compute/virtualMachines/three-tier-vmss_d74d061f"
  notification_settings {
    email           = ""
    enabled         = false
    time_in_minutes = 30
    webhook_url     = ""
  }
  depends_on = [
    azurerm_resource_group.res-3,
  ]
}
resource "azurerm_key_vault" "res-17" {
  access_policy                   = []
  enable_rbac_authorization       = true
  enabled_for_deployment          = true
  enabled_for_disk_encryption     = false
  enabled_for_template_deployment = false
  location                        = "eastus"
  name                            = "three-tier-vault"
  public_network_access_enabled   = true
  purge_protection_enabled        = false
  resource_group_name             = azurerm_resource_group.res-3.name
  sku_name                        = "standard"
  soft_delete_retention_days      = 90
  tags                            = {}
  tenant_id                       = "b4c99fb9-fed3-4beb-96e4-bc32c3b56d20"
  network_acls {
    bypass                     = "AzureServices"
    default_action             = "Allow"
    ip_rules                   = []
    virtual_network_subnet_ids = []
  }
}
resource "azurerm_user_assigned_identity" "res-24" {
  location            = "eastus"
  name                = "three-tier-user-mi"
  resource_group_name = azurerm_resource_group.res-3.name
  tags                = {}
}
resource "azurerm_lb" "res-25" {
  edge_zone           = ""
  location            = "eastus"
  name                = "backend-internal-lb"
  resource_group_name = azurerm_resource_group.res-3.name
  sku                 = "Standard"
  sku_tier            = "Regional"
  tags                = {}
  frontend_ip_configuration {
    gateway_load_balancer_frontend_ip_configuration_id = ""
    name                                               = "private-ip"
    private_ip_address                                 = "10.0.2.4"
    private_ip_address_allocation                      = "Dynamic"
    private_ip_address_version                         = "IPv4"
    public_ip_address_id                               = ""
    public_ip_prefix_id                                = ""
    subnet_id                                          = "/subscriptions/ae664dcd-dcfb-44a7-9c6e-a9f1408975ff/resourceGroups/threetierdemo/providers/Microsoft.Network/virtualNetworks/threetiervent/subnets/private-subnet"
    zones                                              = ["1", "2", "3"]
  }
  depends_on = [
    # One of azurerm_subnet.res-75,azurerm_subnet_network_security_group_association.res-76 (can't auto-resolve as their ids are identical)
  ]
}
resource "azurerm_lb_backend_address_pool" "res-26" {
  loadbalancer_id    = azurerm_lb.res-25.id
  name               = "internal-lb-backendpool"
  synchronous_mode   = ""
  virtual_network_id = ""
}
resource "azurerm_lb_rule" "res-27" {
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.res-26.id]
  backend_port                   = 8080
  disable_outbound_snat          = true
  enable_floating_ip             = false
  enable_tcp_reset               = false
  frontend_ip_configuration_name = "private-ip"
  frontend_port                  = 8080
  idle_timeout_in_minutes        = 4
  load_distribution              = "Default"
  loadbalancer_id                = azurerm_lb.res-25.id
  name                           = "lb-rule-backend"
  probe_id                       = azurerm_lb_probe.res-28.id
  protocol                       = "Tcp"
}
resource "azurerm_lb_probe" "res-28" {
  interval_in_seconds = 8
  loadbalancer_id     = azurerm_lb.res-25.id
  name                = "backend-health"
  number_of_probes    = 1
  port                = 8080
  probe_threshold     = 1
  protocol            = "Http"
  request_path        = "/health"
}
resource "azurerm_lb" "res-29" {
  edge_zone           = ""
  location            = "eastus"
  name                = "frontend-public-lb"
  resource_group_name = azurerm_resource_group.res-3.name
  sku                 = "Standard"
  sku_tier            = "Regional"
  tags                = {}
  frontend_ip_configuration {
    gateway_load_balancer_frontend_ip_configuration_id = ""
    name                                               = "frontend-lb-ip"
    private_ip_address                                 = ""
    private_ip_address_allocation                      = "Dynamic"
    private_ip_address_version                         = ""
    public_ip_address_id                               = azurerm_public_ip.res-69.id
    public_ip_prefix_id                                = ""
    subnet_id                                          = ""
    zones                                              = []
  }
}
resource "azurerm_lb_backend_address_pool" "res-30" {
  loadbalancer_id    = azurerm_lb.res-29.id
  name               = "front-backend-pool"
  synchronous_mode   = ""
  virtual_network_id = ""
}
resource "azurerm_lb_rule" "res-31" {
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.res-30.id]
  backend_port                   = 80
  disable_outbound_snat          = true
  enable_floating_ip             = false
  enable_tcp_reset               = false
  frontend_ip_configuration_name = "frontend-lb-ip"
  frontend_port                  = 80
  idle_timeout_in_minutes        = 4
  load_distribution              = "Default"
  loadbalancer_id                = azurerm_lb.res-29.id
  name                           = "front-lb-rule"
  probe_id                       = azurerm_lb_probe.res-32.id
  protocol                       = "Tcp"
}
resource "azurerm_lb_probe" "res-32" {
  interval_in_seconds = 5
  loadbalancer_id     = azurerm_lb.res-29.id
  name                = "frontend-probe"
  number_of_probes    = 1
  port                = 80
  probe_threshold     = 1
  protocol            = "Http"
  request_path        = "/"
}
resource "azurerm_network_interface" "res-33" {
  accelerated_networking_enabled = false
  auxiliary_mode                 = ""
  auxiliary_sku                  = ""
  dns_servers                    = []
  edge_zone                      = ""
  internal_dns_name_label        = ""
  ip_forwarding_enabled          = false
  location                       = "eastus"
  name                           = "threetiervent-backend-nic01-827a97a6"
  resource_group_name            = azurerm_resource_group.res-3.name
  tags = {
    fastpathenabled = "True"
  }
  ip_configuration {
    gateway_load_balancer_frontend_ip_configuration_id = ""
    name                                               = "threetiervent-backend-nic01-defaultIpConfiguration"
    primary                                            = true
    private_ip_address                                 = "10.0.2.5"
    private_ip_address_allocation                      = "Dynamic"
    private_ip_address_version                         = "IPv4"
    public_ip_address_id                               = ""
    subnet_id                                          = "/subscriptions/ae664dcd-dcfb-44a7-9c6e-a9f1408975ff/resourceGroups/threetierdemo/providers/Microsoft.Network/virtualNetworks/threetiervent/subnets/private-subnet"
  }
  depends_on = [
    # One of azurerm_subnet.res-75,azurerm_subnet_network_security_group_association.res-76 (can't auto-resolve as their ids are identical)
  ]
}
resource "azurerm_network_interface_backend_address_pool_association" "res-34" {
  backend_address_pool_id = azurerm_lb_backend_address_pool.res-26.id
  ip_configuration_name   = "threetiervent-backend-nic01-defaultIpConfiguration"
  network_interface_id    = azurerm_network_interface.res-33.id
}
resource "azurerm_network_interface_security_group_association" "res-35" {
  network_interface_id      = azurerm_network_interface.res-33.id
  network_security_group_id = azurerm_network_security_group.res-52.id
}
resource "azurerm_network_interface" "res-36" {
  accelerated_networking_enabled = false
  auxiliary_mode                 = ""
  auxiliary_sku                  = ""
  dns_servers                    = []
  edge_zone                      = ""
  internal_dns_name_label        = ""
  ip_forwarding_enabled          = false
  location                       = "eastus"
  name                           = "threetiervent-nic01-8e0bbc6a"
  resource_group_name            = azurerm_resource_group.res-3.name
  tags = {
    fastpathenabled = "True"
  }
  ip_configuration {
    gateway_load_balancer_frontend_ip_configuration_id = ""
    name                                               = "threetiervent-nic01-defaultIpConfiguration"
    primary                                            = true
    private_ip_address                                 = "10.0.1.4"
    private_ip_address_allocation                      = "Dynamic"
    private_ip_address_version                         = "IPv4"
    public_ip_address_id                               = ""
    subnet_id                                          = "/subscriptions/ae664dcd-dcfb-44a7-9c6e-a9f1408975ff/resourceGroups/threetierdemo/providers/Microsoft.Network/virtualNetworks/threetiervent/subnets/public-subnet"
  }
  depends_on = [
    # One of azurerm_subnet.res-77,azurerm_subnet_network_security_group_association.res-78 (can't auto-resolve as their ids are identical)
  ]
}
resource "azurerm_network_interface_backend_address_pool_association" "res-37" {
  backend_address_pool_id = azurerm_lb_backend_address_pool.res-30.id
  ip_configuration_name   = "threetiervent-nic01-defaultIpConfiguration"
  network_interface_id    = azurerm_network_interface.res-36.id
}
resource "azurerm_network_interface_security_group_association" "res-38" {
  network_interface_id      = azurerm_network_interface.res-36.id
  network_security_group_id = azurerm_network_security_group.res-57.id
}
resource "azurerm_network_security_group" "res-39" {
  location            = "eastus"
  name                = "basicNsgthreetiervent-backend-nic01"
  resource_group_name = azurerm_resource_group.res-3.name
  security_rule       = []
  tags                = {}
}
resource "azurerm_network_security_group" "res-40" {
  location            = "eastus"
  name                = "basicNsgthreetiervent-nic01"
  resource_group_name = azurerm_resource_group.res-3.name
  security_rule = [{
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "80"
    destination_port_ranges                    = []
    direction                                  = "Inbound"
    name                                       = "Tcp"
    priority                                   = 300
    protocol                                   = "Tcp"
    source_address_prefix                      = "*"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
  }]
  tags = {}
}
resource "azurerm_network_security_rule" "res-41" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "*"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = "80"
  destination_port_ranges                    = []
  direction                                  = "Inbound"
  name                                       = "Tcp"
  network_security_group_name                = "basicNsgthreetiervent-nic01"
  priority                                   = 300
  protocol                                   = "Tcp"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "*"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-40,
  ]
}
resource "azurerm_network_security_group" "res-42" {
  location            = "eastus"
  name                = "bastion-nsg"
  resource_group_name = azurerm_resource_group.res-3.name
  security_rule = [{
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = ""
    destination_port_ranges                    = ["5701", "8080"]
    direction                                  = "Inbound"
    name                                       = "AllowFromVnet"
    priority                                   = 130
    protocol                                   = "Tcp"
    source_address_prefix                      = "VirtualNetwork"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
    }, {
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "443"
    destination_port_ranges                    = []
    direction                                  = "Inbound"
    name                                       = "AllowAZLoadbalancer"
    priority                                   = 120
    protocol                                   = "Tcp"
    source_address_prefix                      = "AzureLoadBalancer"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
    }, {
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "443"
    destination_port_ranges                    = []
    direction                                  = "Inbound"
    name                                       = "AllowGWManager"
    priority                                   = 110
    protocol                                   = "Tcp"
    source_address_prefix                      = "GatewayManager"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
    }, {
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "443"
    destination_port_ranges                    = []
    direction                                  = "Inbound"
    name                                       = "AllowOnInternet"
    priority                                   = 100
    protocol                                   = "Tcp"
    source_address_prefix                      = "Internet"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
    }, {
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "AzureCloud"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "443"
    destination_port_ranges                    = []
    direction                                  = "Outbound"
    name                                       = "AllowCloud"
    priority                                   = 150
    protocol                                   = "Tcp"
    source_address_prefix                      = "*"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
    }, {
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "VirtualNetwork"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = ""
    destination_port_ranges                    = ["22", "3389", "5701", "8080"]
    direction                                  = "Outbound"
    name                                       = "AllowOB"
    priority                                   = 140
    protocol                                   = "*"
    source_address_prefix                      = "*"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
  }]
  tags = {}
}
resource "azurerm_network_security_rule" "res-43" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "*"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = "443"
  destination_port_ranges                    = []
  direction                                  = "Inbound"
  name                                       = "AllowAZLoadbalancer"
  network_security_group_name                = "bastion-nsg"
  priority                                   = 120
  protocol                                   = "Tcp"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "AzureLoadBalancer"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-42,
  ]
}
resource "azurerm_network_security_rule" "res-44" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "AzureCloud"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = "443"
  destination_port_ranges                    = []
  direction                                  = "Outbound"
  name                                       = "AllowCloud"
  network_security_group_name                = "bastion-nsg"
  priority                                   = 150
  protocol                                   = "Tcp"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "*"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-42,
  ]
}
resource "azurerm_network_security_rule" "res-45" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "*"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = ""
  destination_port_ranges                    = ["5701", "8080"]
  direction                                  = "Inbound"
  name                                       = "AllowFromVnet"
  network_security_group_name                = "bastion-nsg"
  priority                                   = 130
  protocol                                   = "Tcp"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "VirtualNetwork"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-42,
  ]
}
resource "azurerm_network_security_rule" "res-46" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "*"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = "443"
  destination_port_ranges                    = []
  direction                                  = "Inbound"
  name                                       = "AllowGWManager"
  network_security_group_name                = "bastion-nsg"
  priority                                   = 110
  protocol                                   = "Tcp"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "GatewayManager"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-42,
  ]
}
resource "azurerm_network_security_rule" "res-47" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "VirtualNetwork"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = ""
  destination_port_ranges                    = ["22", "3389", "5701", "8080"]
  direction                                  = "Outbound"
  name                                       = "AllowOB"
  network_security_group_name                = "bastion-nsg"
  priority                                   = 140
  protocol                                   = "*"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "*"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-42,
  ]
}
resource "azurerm_network_security_rule" "res-48" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "*"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = "443"
  destination_port_ranges                    = []
  direction                                  = "Inbound"
  name                                       = "AllowOnInternet"
  network_security_group_name                = "bastion-nsg"
  priority                                   = 100
  protocol                                   = "Tcp"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "Internet"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-42,
  ]
}
resource "azurerm_network_security_group" "res-49" {
  location            = "eastus"
  name                = "db-nsg"
  resource_group_name = azurerm_resource_group.res-3.name
  security_rule = [{
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "5432"
    destination_port_ranges                    = []
    direction                                  = "Inbound"
    name                                       = "AllowDB"
    priority                                   = 100
    protocol                                   = "Tcp"
    source_address_prefix                      = "VirtualNetwork"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
    }, {
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "AzureCloud"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "443"
    destination_port_ranges                    = []
    direction                                  = "Outbound"
    name                                       = "AllowAzureService"
    priority                                   = 300
    protocol                                   = "Tcp"
    source_address_prefix                      = "*"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
  }]
  tags = {}
}
resource "azurerm_network_security_rule" "res-50" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "AzureCloud"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = "443"
  destination_port_ranges                    = []
  direction                                  = "Outbound"
  name                                       = "AllowAzureService"
  network_security_group_name                = "db-nsg"
  priority                                   = 300
  protocol                                   = "Tcp"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "*"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-49,
  ]
}
resource "azurerm_network_security_rule" "res-51" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "*"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = "5432"
  destination_port_ranges                    = []
  direction                                  = "Inbound"
  name                                       = "AllowDB"
  network_security_group_name                = "db-nsg"
  priority                                   = 100
  protocol                                   = "Tcp"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "VirtualNetwork"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-49,
  ]
}
resource "azurerm_network_security_group" "res-52" {
  location            = "eastus"
  name                = "private-nsg"
  resource_group_name = azurerm_resource_group.res-3.name
  security_rule = [{
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "5432"
    destination_port_ranges                    = []
    direction                                  = "Outbound"
    name                                       = "AllowDBConnection"
    priority                                   = 230
    protocol                                   = "Tcp"
    source_address_prefix                      = "10.0.2.0/24"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
    }, {
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "8080"
    destination_port_ranges                    = []
    direction                                  = "Inbound"
    name                                       = "Allow-AzureLB-probe"
    priority                                   = 210
    protocol                                   = "*"
    source_address_prefix                      = "AzureLoadBalancer"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
    }, {
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "8080"
    destination_port_ranges                    = []
    direction                                  = "Inbound"
    name                                       = "AllowBackend"
    priority                                   = 200
    protocol                                   = "*"
    source_address_prefix                      = "VirtualNetwork"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
    }, {
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "Internet"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "8080"
    destination_port_ranges                    = []
    direction                                  = "Outbound"
    name                                       = "AllowOutboundInternet"
    priority                                   = 220
    protocol                                   = "*"
    source_address_prefix                      = "*"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
  }]
  tags = {}
}
resource "azurerm_network_security_rule" "res-53" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "*"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = "8080"
  destination_port_ranges                    = []
  direction                                  = "Inbound"
  name                                       = "Allow-AzureLB-probe"
  network_security_group_name                = "private-nsg"
  priority                                   = 210
  protocol                                   = "*"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "AzureLoadBalancer"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-52,
  ]
}
resource "azurerm_network_security_rule" "res-54" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "*"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = "8080"
  destination_port_ranges                    = []
  direction                                  = "Inbound"
  name                                       = "AllowBackend"
  network_security_group_name                = "private-nsg"
  priority                                   = 200
  protocol                                   = "*"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "VirtualNetwork"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-52,
  ]
}
resource "azurerm_network_security_rule" "res-55" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "*"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = "5432"
  destination_port_ranges                    = []
  direction                                  = "Outbound"
  name                                       = "AllowDBConnection"
  network_security_group_name                = "private-nsg"
  priority                                   = 230
  protocol                                   = "Tcp"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "10.0.2.0/24"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-52,
  ]
}
resource "azurerm_network_security_rule" "res-56" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "Internet"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = "8080"
  destination_port_ranges                    = []
  direction                                  = "Outbound"
  name                                       = "AllowOutboundInternet"
  network_security_group_name                = "private-nsg"
  priority                                   = 220
  protocol                                   = "*"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "*"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-52,
  ]
}
resource "azurerm_network_security_group" "res-57" {
  location            = "eastus"
  name                = "public-nsg"
  resource_group_name = azurerm_resource_group.res-3.name
  security_rule = [{
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "3000"
    destination_port_ranges                    = []
    direction                                  = "Inbound"
    name                                       = "Allow3000"
    priority                                   = 160
    protocol                                   = "*"
    source_address_prefix                      = "AzureLoadBalancer"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
    }, {
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "443"
    destination_port_ranges                    = []
    direction                                  = "Inbound"
    name                                       = "AllowHTTPS"
    priority                                   = 110
    protocol                                   = "Tcp"
    source_address_prefix                      = "*"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
    }, {
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "80"
    destination_port_ranges                    = []
    direction                                  = "Inbound"
    name                                       = "AllowHTTP"
    priority                                   = 100
    protocol                                   = "Tcp"
    source_address_prefix                      = "*"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
    }, {
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "8080"
    destination_port_ranges                    = []
    direction                                  = "Inbound"
    name                                       = "TempAllow8080"
    priority                                   = 140
    protocol                                   = "*"
    source_address_prefix                      = "*"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
    }, {
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "8080"
    destination_port_ranges                    = []
    direction                                  = "Outbound"
    name                                       = "TempAllowOutbound8080"
    priority                                   = 150
    protocol                                   = "*"
    source_address_prefix                      = "VirtualNetwork"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
  }]
  tags = {}
}
resource "azurerm_network_security_rule" "res-58" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "*"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = "3000"
  destination_port_ranges                    = []
  direction                                  = "Inbound"
  name                                       = "Allow3000"
  network_security_group_name                = "public-nsg"
  priority                                   = 160
  protocol                                   = "*"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "AzureLoadBalancer"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-57,
  ]
}
resource "azurerm_network_security_rule" "res-59" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "*"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = "80"
  destination_port_ranges                    = []
  direction                                  = "Inbound"
  name                                       = "AllowHTTP"
  network_security_group_name                = "public-nsg"
  priority                                   = 100
  protocol                                   = "Tcp"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "*"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-57,
  ]
}
resource "azurerm_network_security_rule" "res-60" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "*"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = "443"
  destination_port_ranges                    = []
  direction                                  = "Inbound"
  name                                       = "AllowHTTPS"
  network_security_group_name                = "public-nsg"
  priority                                   = 110
  protocol                                   = "Tcp"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "*"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-57,
  ]
}
resource "azurerm_network_security_rule" "res-61" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "*"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = "8080"
  destination_port_ranges                    = []
  direction                                  = "Inbound"
  name                                       = "TempAllow8080"
  network_security_group_name                = "public-nsg"
  priority                                   = 140
  protocol                                   = "*"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "*"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-57,
  ]
}
resource "azurerm_network_security_rule" "res-62" {
  access                                     = "Allow"
  description                                = ""
  destination_address_prefix                 = "*"
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = "8080"
  destination_port_ranges                    = []
  direction                                  = "Outbound"
  name                                       = "TempAllowOutbound8080"
  network_security_group_name                = "public-nsg"
  priority                                   = 150
  protocol                                   = "*"
  resource_group_name                        = azurerm_resource_group.res-3.name
  source_address_prefix                      = "VirtualNetwork"
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = "*"
  source_port_ranges                         = []
  depends_on = [
    azurerm_network_security_group.res-57,
  ]
}
resource "azurerm_private_dns_zone" "res-63" {
  name                = "privatelink.postgres.database.azure.com"
  resource_group_name = azurerm_resource_group.res-3.name
  tags                = {}
  soa_record {
    email        = "azureprivatedns-host.microsoft.com"
    expire_time  = 2419200
    minimum_ttl  = 10
    refresh_time = 3600
    retry_time   = 300
    tags         = {}
    ttl          = 3600
  }
}
resource "azurerm_private_dns_a_record" "res-64" {
  name                = "goal-tracker-db"
  records             = ["10.0.3.4"]
  resource_group_name = azurerm_resource_group.res-3.name
  tags = {
    creator = "created by private endpoint db-pe with resource guid 1a990164-5870-4f13-b260-e1bc774d301f"
  }
  ttl       = 10
  zone_name = "privatelink.postgres.database.azure.com"
  depends_on = [
    azurerm_private_dns_zone.res-63,
  ]
}
resource "azurerm_private_dns_zone_virtual_network_link" "res-66" {
  name                  = "pvtdnszone-vnet-link"
  private_dns_zone_name = "privatelink.postgres.database.azure.com"
  registration_enabled  = true
  resolution_policy     = "Default"
  resource_group_name   = azurerm_resource_group.res-3.name
  tags                  = {}
  virtual_network_id    = azurerm_virtual_network.res-72.id
  depends_on = [
    azurerm_private_dns_zone.res-63,
  ]
}
resource "azurerm_private_endpoint" "res-67" {
  custom_network_interface_name = "db-pe-nic"
  location                      = "eastus"
  name                          = "db-pe"
  resource_group_name           = azurerm_resource_group.res-3.name
  subnet_id                     = "/subscriptions/ae664dcd-dcfb-44a7-9c6e-a9f1408975ff/resourceGroups/threetierdemo/providers/Microsoft.Network/virtualNetworks/threetiervent/subnets/db-subnet"
  tags                          = {}
  private_dns_zone_group {
    name                 = "default"
    private_dns_zone_ids = [azurerm_private_dns_zone.res-63.id]
  }
  private_service_connection {
    is_manual_connection              = false
    name                              = "db-pe"
    private_connection_resource_alias = ""
    private_connection_resource_id    = azurerm_postgresql_flexible_server.res-10.id
    request_message                   = ""
    subresource_names                 = ["postgresqlServer"]
  }
  depends_on = [
    # One of azurerm_subnet.res-73,azurerm_subnet_network_security_group_association.res-74 (can't auto-resolve as their ids are identical)
  ]
}
resource "azurerm_public_ip" "res-69" {
  allocation_method       = "Static"
  ddos_protection_mode    = "VirtualNetworkInherited"
  edge_zone               = ""
  idle_timeout_in_minutes = 4
  ip_tags                 = {}
  ip_version              = "IPv4"
  location                = "eastus"
  name                    = "front-pip"
  resource_group_name     = azurerm_resource_group.res-3.name
  sku                     = "Standard"
  sku_tier                = "Regional"
  tags                    = {}
  zones                   = []
}
resource "azurerm_public_ip" "res-70" {
  allocation_method       = "Static"
  ddos_protection_mode    = "VirtualNetworkInherited"
  edge_zone               = ""
  idle_timeout_in_minutes = 4
  ip_tags                 = {}
  ip_version              = "IPv4"
  location                = "eastus"
  name                    = "pip-threetiervent-eastus-private-subnet"
  resource_group_name     = azurerm_resource_group.res-3.name
  sku                     = "Standard"
  sku_tier                = "Regional"
  tags                    = {}
  zones                   = []
}
resource "azurerm_public_ip" "res-71" {
  allocation_method       = "Static"
  ddos_protection_mode    = "VirtualNetworkInherited"
  edge_zone               = ""
  idle_timeout_in_minutes = 4
  ip_tags                 = {}
  ip_version              = "IPv4"
  location                = "eastus"
  name                    = "pip-threetiervent-eastus-public-subnet2"
  resource_group_name     = azurerm_resource_group.res-3.name
  sku                     = "Standard"
  sku_tier                = "Regional"
  tags                    = {}
  zones                   = []
}
resource "azurerm_virtual_network" "res-72" {
  address_space                  = ["10.0.0.0/16"]
  bgp_community                  = ""
  dns_servers                    = []
  edge_zone                      = ""
  flow_timeout_in_minutes        = 0
  location                       = "eastus"
  name                           = "threetiervent"
  private_endpoint_vnet_policies = "Disabled"
  resource_group_name            = azurerm_resource_group.res-3.name
  subnet = [{
    address_prefixes                              = ["10.0.1.0/24"]
    default_outbound_access_enabled               = false
    delegation                                    = []
    id                                            = azurerm_subnet_network_security_group_association.res-78.id
    name                                          = "public-subnet"
    private_endpoint_network_policies             = "Disabled"
    private_link_service_network_policies_enabled = true
    route_table_id                                = ""
    security_group                                = azurerm_network_security_group.res-57.id
    service_endpoint_policy_ids                   = []
    service_endpoints                             = []
    }, {
    address_prefixes                              = ["10.0.2.0/24"]
    default_outbound_access_enabled               = false
    delegation                                    = []
    id                                            = azurerm_subnet_network_security_group_association.res-76.id
    name                                          = "private-subnet"
    private_endpoint_network_policies             = "Disabled"
    private_link_service_network_policies_enabled = true
    route_table_id                                = ""
    security_group                                = azurerm_network_security_group.res-52.id
    service_endpoint_policy_ids                   = []
    service_endpoints                             = []
    }, {
    address_prefixes                              = ["10.0.3.0/24"]
    default_outbound_access_enabled               = false
    delegation                                    = []
    id                                            = azurerm_subnet_network_security_group_association.res-74.id
    name                                          = "db-subnet"
    private_endpoint_network_policies             = "NetworkSecurityGroupEnabled"
    private_link_service_network_policies_enabled = true
    route_table_id                                = ""
    security_group                                = azurerm_network_security_group.res-49.id
    service_endpoint_policy_ids                   = []
    service_endpoints                             = []
  }]
  tags = {}
}
resource "azurerm_subnet" "res-73" {
  address_prefixes                              = ["10.0.3.0/24"]
  default_outbound_access_enabled               = true
  name                                          = "db-subnet"
  private_endpoint_network_policies             = "NetworkSecurityGroupEnabled"
  private_link_service_network_policies_enabled = true
  resource_group_name                           = azurerm_resource_group.res-3.name
  service_endpoint_policy_ids                   = []
  service_endpoints                             = []
  virtual_network_name                          = "threetiervent"
  depends_on = [
    azurerm_virtual_network.res-72,
  ]
}
resource "azurerm_subnet_network_security_group_association" "res-74" {
  network_security_group_id = azurerm_network_security_group.res-49.id
  subnet_id                 = azurerm_subnet.res-73.id
}
resource "azurerm_subnet" "res-75" {
  address_prefixes                              = ["10.0.2.0/24"]
  default_outbound_access_enabled               = false
  name                                          = "private-subnet"
  private_endpoint_network_policies             = "Disabled"
  private_link_service_network_policies_enabled = true
  resource_group_name                           = azurerm_resource_group.res-3.name
  service_endpoint_policy_ids                   = []
  service_endpoints                             = []
  virtual_network_name                          = "threetiervent"
  depends_on = [
    azurerm_virtual_network.res-72,
  ]
}
resource "azurerm_subnet_network_security_group_association" "res-76" {
  network_security_group_id = azurerm_network_security_group.res-52.id
  subnet_id                 = azurerm_subnet.res-75.id
}
resource "azurerm_subnet" "res-77" {
  address_prefixes                              = ["10.0.1.0/24"]
  default_outbound_access_enabled               = true
  name                                          = "public-subnet"
  private_endpoint_network_policies             = "Disabled"
  private_link_service_network_policies_enabled = true
  resource_group_name                           = azurerm_resource_group.res-3.name
  service_endpoint_policy_ids                   = []
  service_endpoints                             = []
  virtual_network_name                          = "threetiervent"
  depends_on = [
    azurerm_virtual_network.res-72,
  ]
}
resource "azurerm_subnet_network_security_group_association" "res-78" {
  network_security_group_id = azurerm_network_security_group.res-57.id
  subnet_id                 = azurerm_subnet.res-77.id
}
resource "azurerm_storage_account" "res-79" {
  access_tier                       = "Hot"
  account_kind                      = "StorageV2"
  account_replication_type          = "LRS"
  account_tier                      = "Standard"
  allow_nested_items_to_be_public   = false
  allowed_copy_scope                = ""
  cross_tenant_replication_enabled  = false
  default_to_oauth_authentication   = false
  dns_endpoint_type                 = "Standard"
  edge_zone                         = ""
  https_traffic_only_enabled        = true
  infrastructure_encryption_enabled = false
  is_hns_enabled                    = false
  large_file_share_enabled          = false
  local_user_enabled                = true
  location                          = "eastus"
  min_tls_version                   = "TLS1_2"
  name                              = "threetierstorage"
  nfsv3_enabled                     = false
  primary_access_key                = "" # Masked sensitive attribute
  primary_blob_connection_string    = "" # Masked sensitive attribute
  primary_connection_string         = "" # Masked sensitive attribute
  provisioned_billing_model_version = ""
  public_network_access_enabled     = true
  queue_encryption_key_type         = "Service"
  resource_group_name               = azurerm_resource_group.res-3.name
  secondary_access_key              = "" # Masked sensitive attribute
  secondary_blob_connection_string  = "" # Masked sensitive attribute
  secondary_connection_string       = "" # Masked sensitive attribute
  sftp_enabled                      = false
  shared_access_key_enabled         = true
  table_encryption_key_type         = "Service"
  tags                              = {}
  blob_properties {
    change_feed_enabled           = false
    change_feed_retention_in_days = 0
    default_service_version       = ""
    last_access_time_enabled      = false
    versioning_enabled            = false
  }
  share_properties {
    retention_policy {
      days = 7
    }
  }
}
resource "azurerm_storage_container" "res-81" {
  container_access_type             = "private"
  default_encryption_scope          = "$account-encryption-key"
  encryption_scope_override_enabled = true
  metadata                          = {}
  name                              = "script"
  storage_account_id                = azurerm_storage_account.res-79.id
  storage_account_name              = ""
}
