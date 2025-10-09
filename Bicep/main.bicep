param extensions_CustomScript_fileUris array

@secure()
param extensions_CustomScript_storageAccountName string

@secure()
param extensions_CustomScript_storageAccountKey string

@secure()
param extensions_CustomScript_commandToExecute string
param privateEndpoints_db_pe_name string = 'db-pe'
param sshPublicKeys_three_key_name string = 'three_key'
param vaults_three_tier_vault_name string = 'three-tier-vault'
param sshPublicKeys_backend_key_name string = 'backend_key'
param publicIPAddresses_front_pip_name string = 'front-pip'
param networkSecurityGroups_db_nsg_name string = 'db-nsg'
param virtualNetworks_threetiervent_name string = 'threetiervent'
param loadBalancers_frontend_public_lb_name string = 'frontend-public-lb'
param networkSecurityGroups_public_nsg_name string = 'public-nsg'
param storageAccounts_threetierstorage_name string = 'threetierstorage'
param loadBalancers_backend_internal_lb_name string = 'backend-internal-lb'
param networkSecurityGroups_bastion_nsg_name string = 'bastion-nsg'
param networkSecurityGroups_private_nsg_name string = 'private-nsg'
param virtualMachineScaleSets_three_tier_vmss_name string = 'three-tier-vmss'
param flexibleServers_goal_tracker_db_name string = 'goal-tracker-db'
param virtualMachines_three_tier_vmss_d74d061f_name string = 'three-tier-vmss_d74d061f'
param virtualMachineScaleSets_three_tier_backend_name string = 'three-tier-backend'
param virtualMachines_three_tier_backend_cb8fe66a_name string = 'three-tier-backend_cb8fe66a'
param networkInterfaces_threetiervent_nic01_8e0bbc6a_name string = 'threetiervent-nic01-8e0bbc6a'
param userAssignedIdentities_three_tier_user_mi_name string = 'three-tier-user-mi'
param networkSecurityGroups_basicNsgthreetiervent_nic01_name string = 'basicNsgthreetiervent-nic01'
param networkInterfaces_threetiervent_backend_nic01_827a97a6_name string = 'threetiervent-backend-nic01-827a97a6'
param privateDnsZones_privatelink_postgres_database_azure_com_name string = 'privatelink.postgres.database.azure.com'
param schedules_shutdown_computevm_three_tier_vmss_d74d061f_name string = 'shutdown-computevm-three-tier-vmss_d74d061f'
param networkSecurityGroups_basicNsgthreetiervent_backend_nic01_name string = 'basicNsgthreetiervent-backend-nic01'
param publicIPAddresses_pip_threetiervent_eastus_private_subnet_name string = 'pip-threetiervent-eastus-private-subnet'
param publicIPAddresses_pip_threetiervent_eastus_public_subnet2_name string = 'pip-threetiervent-eastus-public-subnet2'

resource sshPublicKeys_backend_key_name_resource 'Microsoft.Compute/sshPublicKeys@2024-11-01' = {
  name: sshPublicKeys_backend_key_name
  location: 'eastus'
  properties: {
    publicKey: 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCyxB/vgAANJzECVx6ISWoEnsK4Nc+2+2q4G2p6t10OcZuHprykZaBYZe8am8y07Bb1YexsVh2LEUxaMccZwxlmkGZhCMM6uCYoh9yyFy0ZD3XeiU58LqIfERiCZEe+dObhWpuG0wX4VoLT6qfewa5EZry8cbBMpKI6BvHJ/is83Tp9KmENMyGmEaynszn8lPPAtNT5PPuBF+EqcRFw08Jm5YhyGcvpUhKjHkhylnjOc/JzXA/PDPA5wz+p0s/AAz3Bkxle7Xe6N+/WiifZFbyWXlwq6eYB0EMjinRZI+G/451OOp0Ird+WpLnbcFkxyCKYD/HGU+Br2lcHLwaCJW0ke1vFu3gfF54xwepQW0MP8lR1iQtdcXG7L4tXv2vBfzVkIIDsh8j4SYUhkruAI/sAwm51bwnsdZG1Nff6KNJccS/Vvr3rCVesDkHyQn00rEjMc51JhOJKe6gfA/wU7I/S/U9w89LH3eWm4Z2qio7ix1/HzFfroxe6wrTVt6nvfxk= generated-by-azure'
  }
}

resource sshPublicKeys_three_key_name_resource 'Microsoft.Compute/sshPublicKeys@2024-11-01' = {
  name: sshPublicKeys_three_key_name
  location: 'eastus'
  properties: {
    publicKey: 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDDdYjTIyWzzjtVeexzJkuq81voB7IOPoQE2yC1uP28f3RmCcVgJjHq0O+cQ5URNqyffwZi22NaOBYcqLECzrEMWBovFo2N0Sul2377UUyT29vx+R0H9jx1I2+SqpHSUMO2NjfTqBOVQf02fbyrJXBykz9mFRTbo+YrzylPpMk/2tQ2xeRZ95ZrbHTzkaVu/Zvsohxh1MLIHoqZHem6pmhVeN04Hw96gBkw6w58Fc3y4yLBg7JyhS2/ACIDzfEA5+ZP+ki6kpjFkn3EKIFbnaa7Kve38+oYzbd9v8iYfyCjRBcNQWNEoi/jETPMEChKxwXA4X5r162s6n9ct7iKk3HkTFTqwmo6D7I2Kd7XlD2AxyhSjTtKYTazUlmkRnMGo/FwLFML/5JT9qS39uU8trJl97sAWYUF2udSLa+eo298wd0JdHZDxHX9m6nGhjjbAzuIeZl65Rq5edI8d8v6eAx7W1WLeuHcD+7f+AxVqLBYIYCjLsJWO+kL38LrX8O3fS0= generated-by-azure'
  }
}

resource flexibleServers_goal_tracker_db_name_resource 'Microsoft.DBforPostgreSQL/flexibleServers@2025-01-01-preview' = {
  name: flexibleServers_goal_tracker_db_name
  location: 'West US'
  sku: {
    name: 'Standard_B2s'
    tier: 'Burstable'
  }
  properties: {
    replica: {
      role: 'Primary'
    }
    storage: {
      iops: 120
      tier: 'P4'
      storageSizeGB: 32
      autoGrow: 'Disabled'
    }
    network: {
      publicNetworkAccess: 'Disabled'
    }
    dataEncryption: {
      type: 'SystemManaged'
    }
    authConfig: {
      activeDirectoryAuth: 'Enabled'
      passwordAuth: 'Enabled'
      tenantId: 'b4c99fb9-fed3-4beb-96e4-bc32c3b56d20'
    }
    version: '17'
    administratorLogin: 'dbuser'
    backup: {
      backupRetentionDays: 7
      geoRedundantBackup: 'Disabled'
    }
    highAvailability: {
      mode: 'Disabled'
    }
    maintenanceWindow: {
      customWindow: 'Disabled'
      dayOfWeek: 0
      startHour: 0
      startMinute: 0
    }
    replicationRole: 'Primary'
  }
}

resource vaults_three_tier_vault_name_resource 'Microsoft.KeyVault/vaults@2024-12-01-preview' = {
  name: vaults_three_tier_vault_name
  location: 'eastus'
  properties: {
    sku: {
      family: 'A'
      name: 'Standard'
    }
    tenantId: 'b4c99fb9-fed3-4beb-96e4-bc32c3b56d20'
    accessPolicies: []
    enabledForDeployment: true
    enabledForDiskEncryption: false
    enabledForTemplateDeployment: false
    enableSoftDelete: true
    softDeleteRetentionInDays: 90
    enableRbacAuthorization: true
    vaultUri: 'https://${vaults_three_tier_vault_name}.vault.azure.net/'
    provisioningState: 'Succeeded'
    publicNetworkAccess: 'Enabled'
  }
}

resource userAssignedIdentities_three_tier_user_mi_name_resource 'Microsoft.ManagedIdentity/userAssignedIdentities@2025-01-31-preview' = {
  name: userAssignedIdentities_three_tier_user_mi_name
  location: 'eastus'
}

resource networkSecurityGroups_basicNsgthreetiervent_backend_nic01_name_resource 'Microsoft.Network/networkSecurityGroups@2024-07-01' = {
  name: networkSecurityGroups_basicNsgthreetiervent_backend_nic01_name
  location: 'eastus'
  properties: {
    securityRules: []
  }
}

resource networkSecurityGroups_basicNsgthreetiervent_nic01_name_resource 'Microsoft.Network/networkSecurityGroups@2024-07-01' = {
  name: networkSecurityGroups_basicNsgthreetiervent_nic01_name
  location: 'eastus'
  properties: {
    securityRules: [
      {
        name: 'Tcp'
        id: networkSecurityGroups_basicNsgthreetiervent_nic01_name_Tcp.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '80'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 300
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
  }
}

resource networkSecurityGroups_bastion_nsg_name_resource 'Microsoft.Network/networkSecurityGroups@2024-07-01' = {
  name: networkSecurityGroups_bastion_nsg_name
  location: 'eastus'
  properties: {
    securityRules: [
      {
        name: 'AllowOnInternet'
        id: networkSecurityGroups_bastion_nsg_name_AllowOnInternet.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: 'Internet'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 100
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'AllowGWManager'
        id: networkSecurityGroups_bastion_nsg_name_AllowGWManager.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: 'GatewayManager'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 110
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'AllowAZLoadbalancer'
        id: networkSecurityGroups_bastion_nsg_name_AllowAZLoadbalancer.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: 'AzureLoadBalancer'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 120
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'AllowFromVnet'
        id: networkSecurityGroups_bastion_nsg_name_AllowFromVnet.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 130
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: [
            '8080'
            '5701'
          ]
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'AllowOB'
        id: networkSecurityGroups_bastion_nsg_name_AllowOB.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: '*'
          sourcePortRange: '*'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: 'VirtualNetwork'
          access: 'Allow'
          priority: 140
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: [
            '22'
            '3389'
            '8080'
            '5701'
          ]
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'AllowCloud'
        id: networkSecurityGroups_bastion_nsg_name_AllowCloud.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: 'AzureCloud'
          access: 'Allow'
          priority: 150
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
  }
}

resource networkSecurityGroups_db_nsg_name_resource 'Microsoft.Network/networkSecurityGroups@2024-07-01' = {
  name: networkSecurityGroups_db_nsg_name
  location: 'eastus'
  properties: {
    securityRules: [
      {
        name: 'AllowDB'
        id: networkSecurityGroups_db_nsg_name_AllowDB.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '5432'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 100
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'AllowAzureService'
        id: networkSecurityGroups_db_nsg_name_AllowAzureService.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: 'AzureCloud'
          access: 'Allow'
          priority: 300
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
  }
}

resource networkSecurityGroups_private_nsg_name_resource 'Microsoft.Network/networkSecurityGroups@2024-07-01' = {
  name: networkSecurityGroups_private_nsg_name
  location: 'eastus'
  properties: {
    securityRules: [
      {
        name: 'AllowBackend'
        id: networkSecurityGroups_private_nsg_name_AllowBackend.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '8080'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 200
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Allow-AzureLB-probe'
        id: networkSecurityGroups_private_nsg_name_Allow_AzureLB_probe.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '8080'
          sourceAddressPrefix: 'AzureLoadBalancer'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 210
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'AllowOutboundInternet'
        id: networkSecurityGroups_private_nsg_name_AllowOutboundInternet.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '8080'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: 'Internet'
          access: 'Allow'
          priority: 220
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'AllowDBConnection'
        id: networkSecurityGroups_private_nsg_name_AllowDBConnection.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '5432'
          sourceAddressPrefix: '10.0.2.0/24'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 230
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
  }
}

resource networkSecurityGroups_public_nsg_name_resource 'Microsoft.Network/networkSecurityGroups@2024-07-01' = {
  name: networkSecurityGroups_public_nsg_name
  location: 'eastus'
  properties: {
    securityRules: [
      {
        name: 'AllowHTTP'
        id: networkSecurityGroups_public_nsg_name_AllowHTTP.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '80'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 100
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'AllowHTTPS'
        id: networkSecurityGroups_public_nsg_name_AllowHTTPS.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 110
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'TempAllow8080'
        id: networkSecurityGroups_public_nsg_name_TempAllow8080.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '8080'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 140
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'TempAllowOutbound8080'
        id: networkSecurityGroups_public_nsg_name_TempAllowOutbound8080.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '8080'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 150
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Allow3000'
        id: networkSecurityGroups_public_nsg_name_Allow3000.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '3000'
          sourceAddressPrefix: 'AzureLoadBalancer'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 160
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
  }
}

resource privateDnsZones_privatelink_postgres_database_azure_com_name_resource 'Microsoft.Network/privateDnsZones@2024-06-01' = {
  name: privateDnsZones_privatelink_postgres_database_azure_com_name
  location: 'global'
  properties: {}
}

resource publicIPAddresses_front_pip_name_resource 'Microsoft.Network/publicIPAddresses@2024-07-01' = {
  name: publicIPAddresses_front_pip_name
  location: 'eastus'
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }
  properties: {
    ipAddress: '172.190.148.101'
    publicIPAddressVersion: 'IPv4'
    publicIPAllocationMethod: 'Static'
    idleTimeoutInMinutes: 4
    ipTags: []
    ddosSettings: {
      protectionMode: 'VirtualNetworkInherited'
    }
  }
}

resource publicIPAddresses_pip_threetiervent_eastus_private_subnet_name_resource 'Microsoft.Network/publicIPAddresses@2024-07-01' = {
  name: publicIPAddresses_pip_threetiervent_eastus_private_subnet_name
  location: 'eastus'
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }
  properties: {
    ipAddress: '172.171.213.130'
    publicIPAddressVersion: 'IPv4'
    publicIPAllocationMethod: 'Static'
    idleTimeoutInMinutes: 4
    ipTags: []
    ddosSettings: {
      protectionMode: 'VirtualNetworkInherited'
    }
  }
}

resource publicIPAddresses_pip_threetiervent_eastus_public_subnet2_name_resource 'Microsoft.Network/publicIPAddresses@2024-07-01' = {
  name: publicIPAddresses_pip_threetiervent_eastus_public_subnet2_name
  location: 'eastus'
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }
  properties: {
    ipAddress: '172.172.145.114'
    publicIPAddressVersion: 'IPv4'
    publicIPAllocationMethod: 'Static'
    idleTimeoutInMinutes: 4
    ipTags: []
    ddosSettings: {
      protectionMode: 'VirtualNetworkInherited'
    }
  }
}

resource storageAccounts_threetierstorage_name_resource 'Microsoft.Storage/storageAccounts@2025-01-01' = {
  name: storageAccounts_threetierstorage_name
  location: 'eastus'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  kind: 'StorageV2'
  properties: {
    allowCrossTenantReplication: false
    minimumTlsVersion: 'TLS1_2'
    allowBlobPublicAccess: false
    networkAcls: {
      bypass: 'AzureServices'
      virtualNetworkRules: []
      ipRules: []
      defaultAction: 'Allow'
    }
    supportsHttpsTrafficOnly: true
    encryption: {
      services: {
        file: {
          keyType: 'Account'
          enabled: true
        }
        blob: {
          keyType: 'Account'
          enabled: true
        }
      }
      keySource: 'Microsoft.Storage'
    }
    accessTier: 'Hot'
  }
}

resource virtualMachines_three_tier_vmss_d74d061f_name_CustomScript 'Microsoft.Compute/virtualMachines/extensions@2024-11-01' = {
  parent: virtualMachines_three_tier_vmss_d74d061f_name_resource
  name: 'CustomScript'
  location: 'eastus'
  properties: {
    autoUpgradeMinorVersion: true
    publisher: 'Microsoft.Azure.Extensions'
    type: 'CustomScript'
    typeHandlerVersion: '2.0'
    settings: {
      fileUris: extensions_CustomScript_fileUris
    }
    protectedSettings: {
      storageAccountName: extensions_CustomScript_storageAccountName
      storageAccountKey: extensions_CustomScript_storageAccountKey
      commandToExecute: extensions_CustomScript_commandToExecute
    }
  }
}

resource virtualMachineScaleSets_three_tier_backend_name_virtualMachineScaleSets_three_tier_backend_name_cb8fe66a 'Microsoft.Compute/virtualMachineScaleSets/virtualMachines@2024-11-01' = {
  parent: virtualMachineScaleSets_three_tier_backend_name_resource
  name: '${virtualMachineScaleSets_three_tier_backend_name}_cb8fe66a'
  location: 'eastus'
  zones: [
    null
  ]
}

resource virtualMachineScaleSets_three_tier_vmss_name_virtualMachineScaleSets_three_tier_vmss_name_d74d061f 'Microsoft.Compute/virtualMachineScaleSets/virtualMachines@2024-11-01' = {
  parent: virtualMachineScaleSets_three_tier_vmss_name_resource
  name: '${virtualMachineScaleSets_three_tier_vmss_name}_d74d061f'
  location: 'eastus'
  zones: [
    null
  ]
}

resource flexibleServers_goal_tracker_db_name_1e5c7c8e_703d_4644_a759_458d54374378 'Microsoft.DBforPostgreSQL/flexibleServers/administrators@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: '1e5c7c8e-703d-4644-a759-458d54374378'
  properties: {
    principalType: 'User'
    principalName: 'pattani.arpit_outlook.com#EXT#@pattaniarpitoutlook.onmicrosoft.'
    tenantId: 'b4c99fb9-fed3-4beb-96e4-bc32c3b56d20'
  }
}

resource flexibleServers_goal_tracker_db_name_Default 'Microsoft.DBforPostgreSQL/flexibleServers/advancedThreatProtectionSettings@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'Default'
  properties: {
    state: 'Disabled'
  }
}

resource flexibleServers_goal_tracker_db_name_backup_638955115203035904 'Microsoft.DBforPostgreSQL/flexibleServers/backups@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'backup_638955115203035904'
}

resource flexibleServers_goal_tracker_db_name_allow_alter_system 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'allow_alter_system'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_allow_in_place_tablespaces 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'allow_in_place_tablespaces'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_allow_system_table_mods 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'allow_system_table_mods'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_anon_algorithm 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'anon.algorithm'
  properties: {
    value: 'sha256'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_anon_k_anonymity_provider 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'anon.k_anonymity_provider'
  properties: {
    value: 'k_anonymity'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_anon_masking_policies 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'anon.masking_policies'
  properties: {
    value: 'anon'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_anon_maskschema 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'anon.maskschema'
  properties: {
    value: 'mask'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_anon_privacy_by_default 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'anon.privacy_by_default'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_anon_restrict_to_trusted_schemas 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'anon.restrict_to_trusted_schemas'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_anon_salt 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'anon.salt'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_anon_sourceschema 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'anon.sourceschema'
  properties: {
    value: 'public'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_anon_strict_mode 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'anon.strict_mode'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_anon_transparent_dynamic_masking 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'anon.transparent_dynamic_masking'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_application_name 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'application_name'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_archive_cleanup_command 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'archive_cleanup_command'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_archive_command 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'archive_command'
  properties: {
    value: 'BlobLogUpload.sh %f %p'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_archive_library 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'archive_library'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_archive_mode 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'archive_mode'
  properties: {
    value: 'always'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_archive_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'archive_timeout'
  properties: {
    value: '300'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_array_nulls 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'array_nulls'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_authentication_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'authentication_timeout'
  properties: {
    value: '30'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_auto_explain_log_analyze 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'auto_explain.log_analyze'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_auto_explain_log_buffers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'auto_explain.log_buffers'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_auto_explain_log_format 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'auto_explain.log_format'
  properties: {
    value: 'text'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_auto_explain_log_level 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'auto_explain.log_level'
  properties: {
    value: 'log'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_auto_explain_log_min_duration 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'auto_explain.log_min_duration'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_auto_explain_log_nested_statements 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'auto_explain.log_nested_statements'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_auto_explain_log_parameter_max_length 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'auto_explain.log_parameter_max_length'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_auto_explain_log_settings 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'auto_explain.log_settings'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_auto_explain_log_timing 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'auto_explain.log_timing'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_auto_explain_log_triggers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'auto_explain.log_triggers'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_auto_explain_log_verbose 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'auto_explain.log_verbose'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_auto_explain_log_wal 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'auto_explain.log_wal'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_auto_explain_sample_rate 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'auto_explain.sample_rate'
  properties: {
    value: '1.0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_autovacuum 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'autovacuum'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_autovacuum_analyze_scale_factor 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'autovacuum_analyze_scale_factor'
  properties: {
    value: '0.1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_autovacuum_analyze_threshold 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'autovacuum_analyze_threshold'
  properties: {
    value: '50'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_autovacuum_freeze_max_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'autovacuum_freeze_max_age'
  properties: {
    value: '200000000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_autovacuum_max_workers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'autovacuum_max_workers'
  properties: {
    value: '3'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_autovacuum_multixact_freeze_max_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'autovacuum_multixact_freeze_max_age'
  properties: {
    value: '400000000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_autovacuum_naptime 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'autovacuum_naptime'
  properties: {
    value: '60'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_autovacuum_vacuum_cost_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'autovacuum_vacuum_cost_delay'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_autovacuum_vacuum_cost_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'autovacuum_vacuum_cost_limit'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_autovacuum_vacuum_insert_scale_factor 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'autovacuum_vacuum_insert_scale_factor'
  properties: {
    value: '0.2'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_autovacuum_vacuum_insert_threshold 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'autovacuum_vacuum_insert_threshold'
  properties: {
    value: '1000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_autovacuum_vacuum_scale_factor 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'autovacuum_vacuum_scale_factor'
  properties: {
    value: '0.2'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_autovacuum_vacuum_threshold 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'autovacuum_vacuum_threshold'
  properties: {
    value: '50'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_autovacuum_work_mem 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'autovacuum_work_mem'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_accepted_password_auth_method 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure.accepted_password_auth_method'
  properties: {
    value: 'md5,scram-sha-256'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_enable_temp_tablespaces_on_local_ssd 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure.enable_temp_tablespaces_on_local_ssd'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_extensions 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure.extensions'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_migration_copy_with_binary 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure.migration_copy_with_binary'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_migration_skip_analyze 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure.migration_skip_analyze'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_migration_skip_extensions 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure.migration_skip_extensions'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_migration_skip_large_objects 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure.migration_skip_large_objects'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_migration_skip_role_user 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure.migration_skip_role_user'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_migration_table_split_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure.migration_table_split_size'
  properties: {
    value: '20480'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_service_principal_id 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure.service_principal_id'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_service_principal_tenant_id 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure.service_principal_tenant_id'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_single_to_flex_migration 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure.single_to_flex_migration'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_cdc_change_batch_buffer_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure_cdc.change_batch_buffer_size'
  properties: {
    value: '16'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_cdc_change_batch_export_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure_cdc.change_batch_export_timeout'
  properties: {
    value: '30'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_cdc_max_fabric_mirrors 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure_cdc.max_fabric_mirrors'
  properties: {
    value: '3'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_cdc_max_snapshot_workers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure_cdc.max_snapshot_workers'
  properties: {
    value: '3'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_cdc_onelake_buffer_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure_cdc.onelake_buffer_size'
  properties: {
    value: '100'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_cdc_parquet_compression 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure_cdc.parquet_compression'
  properties: {
    value: 'zstd'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_cdc_snapshot_buffer_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure_cdc.snapshot_buffer_size'
  properties: {
    value: '1000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_cdc_snapshot_export_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure_cdc.snapshot_export_timeout'
  properties: {
    value: '180'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_storage_allow_network_access 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure_storage.allow_network_access'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_storage_blob_block_size_mb 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure_storage.blob_block_size_mb'
  properties: {
    value: '128'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_storage_log_level 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure_storage.log_level'
  properties: {
    value: 'log'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_storage_public_account_access 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure_storage.public_account_access'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_backend_flush_after 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'backend_flush_after'
  properties: {
    value: '256'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_backslash_quote 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'backslash_quote'
  properties: {
    value: 'safe_encoding'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_backtrace_functions 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'backtrace_functions'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_bgwriter_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'bgwriter_delay'
  properties: {
    value: '20'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_bgwriter_flush_after 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'bgwriter_flush_after'
  properties: {
    value: '64'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_bgwriter_lru_maxpages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'bgwriter_lru_maxpages'
  properties: {
    value: '100'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_bgwriter_lru_multiplier 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'bgwriter_lru_multiplier'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_block_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'block_size'
  properties: {
    value: '8192'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_bonjour 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'bonjour'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_bonjour_name 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'bonjour_name'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_bytea_output 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'bytea_output'
  properties: {
    value: 'hex'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_check_function_bodies 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'check_function_bodies'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_checkpoint_completion_target 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'checkpoint_completion_target'
  properties: {
    value: '0.9'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_checkpoint_flush_after 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'checkpoint_flush_after'
  properties: {
    value: '32'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_checkpoint_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'checkpoint_timeout'
  properties: {
    value: '600'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_checkpoint_warning 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'checkpoint_warning'
  properties: {
    value: '30'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_client_connection_check_interval 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'client_connection_check_interval'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_client_encoding 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'client_encoding'
  properties: {
    value: 'UTF8'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_client_min_messages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'client_min_messages'
  properties: {
    value: 'notice'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_cluster_name 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'cluster_name'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_commit_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'commit_delay'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_commit_siblings 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'commit_siblings'
  properties: {
    value: '5'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_commit_timestamp_buffers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'commit_timestamp_buffers'
  properties: {
    value: '256'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_compute_query_id 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'compute_query_id'
  properties: {
    value: 'auto'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_config_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'config_file'
  properties: {
    value: '/datadrive/pg/data/postgresql.conf'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_connection_throttle_bucket_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'connection_throttle.bucket_limit'
  properties: {
    value: '2000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_connection_throttle_enable 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'connection_throttle.enable'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_connection_throttle_factor_bias 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'connection_throttle.factor_bias'
  properties: {
    value: '0.8'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_connection_throttle_hash_entries_max 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'connection_throttle.hash_entries_max'
  properties: {
    value: '500'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_connection_throttle_reset_time 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'connection_throttle.reset_time'
  properties: {
    value: '120'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_connection_throttle_restore_factor 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'connection_throttle.restore_factor'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_connection_throttle_update_time 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'connection_throttle.update_time'
  properties: {
    value: '20'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_constraint_exclusion 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'constraint_exclusion'
  properties: {
    value: 'partition'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_cpu_index_tuple_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'cpu_index_tuple_cost'
  properties: {
    value: '0.005'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_cpu_operator_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'cpu_operator_cost'
  properties: {
    value: '0.0025'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_cpu_tuple_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'cpu_tuple_cost'
  properties: {
    value: '0.01'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_createrole_self_grant 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'createrole_self_grant'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_cron_database_name 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'cron.database_name'
  properties: {
    value: 'postgres'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_cron_enable_superuser_jobs 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'cron.enable_superuser_jobs'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_cron_host 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'cron.host'
  properties: {
    value: '/tmp'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_cron_launch_active_jobs 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'cron.launch_active_jobs'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_cron_log_min_messages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'cron.log_min_messages'
  properties: {
    value: 'warning'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_cron_log_run 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'cron.log_run'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_cron_log_statement 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'cron.log_statement'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_cron_max_running_jobs 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'cron.max_running_jobs'
  properties: {
    value: '32'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_cron_timezone 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'cron.timezone'
  properties: {
    value: 'GMT'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_cron_use_background_workers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'cron.use_background_workers'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_cursor_tuple_fraction 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'cursor_tuple_fraction'
  properties: {
    value: '0.1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_data_checksums 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'data_checksums'
  properties: {
    value: 'on'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_data_directory 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'data_directory'
  properties: {
    value: '/datadrive/pg/data'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_data_directory_mode 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'data_directory_mode'
  properties: {
    value: '0700'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_data_sync_retry 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'data_sync_retry'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_DateStyle 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'DateStyle'
  properties: {
    value: 'ISO, MDY'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_db_user_namespace 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'db_user_namespace'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_deadlock_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'deadlock_timeout'
  properties: {
    value: '1000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_debug_assertions 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'debug_assertions'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_debug_discard_caches 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'debug_discard_caches'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_debug_io_direct 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'debug_io_direct'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_debug_logical_replication_streaming 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'debug_logical_replication_streaming'
  properties: {
    value: 'buffered'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_debug_parallel_query 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'debug_parallel_query'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_debug_pretty_print 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'debug_pretty_print'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_debug_print_parse 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'debug_print_parse'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_debug_print_plan 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'debug_print_plan'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_debug_print_rewritten 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'debug_print_rewritten'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_default_statistics_target 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'default_statistics_target'
  properties: {
    value: '100'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_default_table_access_method 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'default_table_access_method'
  properties: {
    value: 'heap'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_default_tablespace 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'default_tablespace'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_default_text_search_config 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'default_text_search_config'
  properties: {
    value: 'pg_catalog.english'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_default_toast_compression 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'default_toast_compression'
  properties: {
    value: 'pglz'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_default_transaction_deferrable 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'default_transaction_deferrable'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_default_transaction_isolation 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'default_transaction_isolation'
  properties: {
    value: 'read committed'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_default_transaction_read_only 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'default_transaction_read_only'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_duckdb_max_memory 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'duckdb.max_memory'
  properties: {
    value: '1024'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_duckdb_max_workers_per_postgres_scan 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'duckdb.max_workers_per_postgres_scan'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_duckdb_memory_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'duckdb.memory_limit'
  properties: {
    value: '1024'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_duckdb_threads 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'duckdb.threads'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_duckdb_worker_threads 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'duckdb.worker_threads'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_dynamic_library_path 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'dynamic_library_path'
  properties: {
    value: '$libdir'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_dynamic_shared_memory_type 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'dynamic_shared_memory_type'
  properties: {
    value: 'posix'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_effective_cache_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'effective_cache_size'
  properties: {
    value: '393216'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_effective_io_concurrency 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'effective_io_concurrency'
  properties: {
    value: '1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_async_append 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_async_append'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_bitmapscan 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_bitmapscan'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_gathermerge 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_gathermerge'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_group_by_reordering 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_group_by_reordering'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_hashagg 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_hashagg'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_hashjoin 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_hashjoin'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_incremental_sort 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_incremental_sort'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_indexonlyscan 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_indexonlyscan'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_indexscan 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_indexscan'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_material 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_material'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_memoize 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_memoize'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_mergejoin 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_mergejoin'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_nestloop 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_nestloop'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_parallel_append 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_parallel_append'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_parallel_hash 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_parallel_hash'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_partition_pruning 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_partition_pruning'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_partitionwise_aggregate 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_partitionwise_aggregate'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_partitionwise_join 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_partitionwise_join'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_presorted_aggregate 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_presorted_aggregate'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_seqscan 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_seqscan'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_sort 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_sort'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_enable_tidscan 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'enable_tidscan'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_escape_string_warning 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'escape_string_warning'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_event_source 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'event_source'
  properties: {
    value: 'PostgreSQL'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_event_triggers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'event_triggers'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_exit_on_error 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'exit_on_error'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_external_pid_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'external_pid_file'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_extra_float_digits 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'extra_float_digits'
  properties: {
    value: '1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_from_collapse_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'from_collapse_limit'
  properties: {
    value: '8'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_fsync 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'fsync'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_full_page_writes 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'full_page_writes'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_geqo 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'geqo'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_geqo_effort 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'geqo_effort'
  properties: {
    value: '5'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_geqo_generations 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'geqo_generations'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_geqo_pool_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'geqo_pool_size'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_geqo_seed 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'geqo_seed'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_geqo_selection_bias 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'geqo_selection_bias'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_geqo_threshold 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'geqo_threshold'
  properties: {
    value: '12'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_gin_fuzzy_search_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'gin_fuzzy_search_limit'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_gin_pending_list_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'gin_pending_list_limit'
  properties: {
    value: '4096'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_gss_accept_delegation 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'gss_accept_delegation'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_hash_mem_multiplier 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'hash_mem_multiplier'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_hba_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'hba_file'
  properties: {
    value: '/datadrive/pg/data/pg_hba.conf'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_hot_standby 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'hot_standby'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_hot_standby_feedback 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'hot_standby_feedback'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_huge_page_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'huge_page_size'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_huge_pages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'huge_pages'
  properties: {
    value: 'try'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_huge_pages_status 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'huge_pages_status'
  properties: {
    value: 'off'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_icu_validation_level 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'icu_validation_level'
  properties: {
    value: 'warning'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_ident_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ident_file'
  properties: {
    value: '/datadrive/pg/data/pg_ident.conf'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_idle_in_transaction_session_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'idle_in_transaction_session_timeout'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_idle_session_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'idle_session_timeout'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_ignore_checksum_failure 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ignore_checksum_failure'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_ignore_invalid_pages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ignore_invalid_pages'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_ignore_system_indexes 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ignore_system_indexes'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_in_hot_standby 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'in_hot_standby'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_integer_datetimes 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'integer_datetimes'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_intelligent_tuning 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'intelligent_tuning'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_intelligent_tuning_metric_targets 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'intelligent_tuning.metric_targets'
  properties: {
    value: 'none'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_IntervalStyle 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'IntervalStyle'
  properties: {
    value: 'postgres'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_io_combine_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'io_combine_limit'
  properties: {
    value: '16'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_jit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'jit'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_jit_above_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'jit_above_cost'
  properties: {
    value: '100000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_jit_debugging_support 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'jit_debugging_support'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_jit_dump_bitcode 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'jit_dump_bitcode'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_jit_expressions 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'jit_expressions'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_jit_inline_above_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'jit_inline_above_cost'
  properties: {
    value: '500000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_jit_optimize_above_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'jit_optimize_above_cost'
  properties: {
    value: '500000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_jit_profiling_support 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'jit_profiling_support'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_jit_provider 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'jit_provider'
  properties: {
    value: 'llvmjit'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_jit_tuple_deforming 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'jit_tuple_deforming'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_join_collapse_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'join_collapse_limit'
  properties: {
    value: '8'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_krb_caseins_users 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'krb_caseins_users'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_krb_server_keyfile 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'krb_server_keyfile'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_lc_messages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'lc_messages'
  properties: {
    value: 'en_US.utf8'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_lc_monetary 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'lc_monetary'
  properties: {
    value: 'en_US.utf-8'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_lc_numeric 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'lc_numeric'
  properties: {
    value: 'en_US.utf-8'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_lc_time 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'lc_time'
  properties: {
    value: 'en_US.utf8'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_listen_addresses 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'listen_addresses'
  properties: {
    value: '*'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_lo_compat_privileges 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'lo_compat_privileges'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_local_preload_libraries 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'local_preload_libraries'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_lock_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'lock_timeout'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_autovacuum_min_duration 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_autovacuum_min_duration'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_checkpoints 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_checkpoints'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_connections 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_connections'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_destination 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_destination'
  properties: {
    value: 'stderr'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_directory 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_directory'
  properties: {
    value: 'log'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_disconnections 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_disconnections'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_duration 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_duration'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_error_verbosity 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_error_verbosity'
  properties: {
    value: 'default'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_executor_stats 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_executor_stats'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_file_mode 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_file_mode'
  properties: {
    value: '0600'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_log_filename 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_filename'
  properties: {
    value: 'postgresql-%Y-%m-%d_%H%M%S.log'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_hostname 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_hostname'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_line_prefix 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_line_prefix'
  properties: {
    value: '%t-%c-'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_lock_waits 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_lock_waits'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_min_duration_sample 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_min_duration_sample'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_min_duration_statement 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_min_duration_statement'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_min_error_statement 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_min_error_statement'
  properties: {
    value: 'error'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_min_messages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_min_messages'
  properties: {
    value: 'warning'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_parameter_max_length 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_parameter_max_length'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_parameter_max_length_on_error 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_parameter_max_length_on_error'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_parser_stats 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_parser_stats'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_planner_stats 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_planner_stats'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_recovery_conflict_waits 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_recovery_conflict_waits'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_replication_commands 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_replication_commands'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_rotation_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_rotation_age'
  properties: {
    value: '60'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_log_rotation_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_rotation_size'
  properties: {
    value: '102400'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_log_startup_progress_interval 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_startup_progress_interval'
  properties: {
    value: '10000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_statement 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_statement'
  properties: {
    value: 'none'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_statement_sample_rate 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_statement_sample_rate'
  properties: {
    value: '1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_statement_stats 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_statement_stats'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_temp_files 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_temp_files'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_timezone 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_timezone'
  properties: {
    value: 'UTC'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_log_transaction_sample_rate 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_transaction_sample_rate'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_log_truncate_on_rotation 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'log_truncate_on_rotation'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_logfiles_download_enable 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'logfiles.download_enable'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_logfiles_retention_days 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'logfiles.retention_days'
  properties: {
    value: '3'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_logging_collector 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'logging_collector'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_logical_decoding_work_mem 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'logical_decoding_work_mem'
  properties: {
    value: '65536'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_maintenance_io_concurrency 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'maintenance_io_concurrency'
  properties: {
    value: '10'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_maintenance_work_mem 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'maintenance_work_mem'
  properties: {
    value: '157696'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_connections 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_connections'
  properties: {
    value: '429'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_files_per_process 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_files_per_process'
  properties: {
    value: '1000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_function_args 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_function_args'
  properties: {
    value: '100'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_identifier_length 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_identifier_length'
  properties: {
    value: '63'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_index_keys 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_index_keys'
  properties: {
    value: '32'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_locks_per_transaction 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_locks_per_transaction'
  properties: {
    value: '64'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_logical_replication_workers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_logical_replication_workers'
  properties: {
    value: '4'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_notify_queue_pages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_notify_queue_pages'
  properties: {
    value: '1048576'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_parallel_apply_workers_per_subscription 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_parallel_apply_workers_per_subscription'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_parallel_maintenance_workers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_parallel_maintenance_workers'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_parallel_workers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_parallel_workers'
  properties: {
    value: '8'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_parallel_workers_per_gather 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_parallel_workers_per_gather'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_pred_locks_per_page 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_pred_locks_per_page'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_pred_locks_per_relation 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_pred_locks_per_relation'
  properties: {
    value: '-2'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_pred_locks_per_transaction 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_pred_locks_per_transaction'
  properties: {
    value: '64'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_prepared_transactions 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_prepared_transactions'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_replication_slots 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_replication_slots'
  properties: {
    value: '10'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_slot_wal_keep_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_slot_wal_keep_size'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_stack_depth 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_stack_depth'
  properties: {
    value: '2048'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_max_standby_archive_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_standby_archive_delay'
  properties: {
    value: '30000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_standby_streaming_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_standby_streaming_delay'
  properties: {
    value: '30000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_sync_workers_per_subscription 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_sync_workers_per_subscription'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_wal_senders 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_wal_senders'
  properties: {
    value: '10'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_wal_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_wal_size'
  properties: {
    value: '2048'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_max_worker_processes 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'max_worker_processes'
  properties: {
    value: '8'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_metrics_autovacuum_diagnostics 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'metrics.autovacuum_diagnostics'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_metrics_collector_database_activity 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'metrics.collector_database_activity'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_metrics_pgbouncer_diagnostics 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'metrics.pgbouncer_diagnostics'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_min_dynamic_shared_memory 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'min_dynamic_shared_memory'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_min_parallel_index_scan_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'min_parallel_index_scan_size'
  properties: {
    value: '64'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_min_parallel_table_scan_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'min_parallel_table_scan_size'
  properties: {
    value: '1024'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_min_wal_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'min_wal_size'
  properties: {
    value: '80'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_multixact_member_buffers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'multixact_member_buffers'
  properties: {
    value: '32'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_multixact_offset_buffers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'multixact_offset_buffers'
  properties: {
    value: '16'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_notify_buffers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'notify_buffers'
  properties: {
    value: '16'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_parallel_leader_participation 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'parallel_leader_participation'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_parallel_setup_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'parallel_setup_cost'
  properties: {
    value: '1000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_parallel_tuple_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'parallel_tuple_cost'
  properties: {
    value: '0.1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_password_encryption 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'password_encryption'
  properties: {
    value: 'scram-sha-256'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_hint_plan_debug_print 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_hint_plan.debug_print'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_hint_plan_enable_hint 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_hint_plan.enable_hint'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_hint_plan_enable_hint_table 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_hint_plan.enable_hint_table'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_hint_plan_message_level 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_hint_plan.message_level'
  properties: {
    value: 'log'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_hint_plan_parse_messages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_hint_plan.parse_messages'
  properties: {
    value: 'info'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_partman_bgw_analyze 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_partman_bgw.analyze'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_partman_bgw_dbname 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_partman_bgw.dbname'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_partman_bgw_interval 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_partman_bgw.interval'
  properties: {
    value: '3600'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_partman_bgw_jobmon 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_partman_bgw.jobmon'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_partman_bgw_maintenance_wait 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_partman_bgw.maintenance_wait'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_partman_bgw_role 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_partman_bgw.role'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_prewarm_autoprewarm 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_prewarm.autoprewarm'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_prewarm_autoprewarm_interval 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_prewarm.autoprewarm_interval'
  properties: {
    value: '300'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_qs_interval_length_minutes 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_qs.interval_length_minutes'
  properties: {
    value: '15'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_qs_is_enabled_fs 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_qs.is_enabled_fs'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_qs_max_captured_queries 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_qs.max_captured_queries'
  properties: {
    value: '500'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_qs_max_plan_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_qs.max_plan_size'
  properties: {
    value: '7500'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_qs_max_query_text_length 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_qs.max_query_text_length'
  properties: {
    value: '6000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_qs_parameters_capture_mode 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_qs.parameters_capture_mode'
  properties: {
    value: 'capture_parameterless_only'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_qs_query_capture_mode 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_qs.query_capture_mode'
  properties: {
    value: 'none'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_qs_retention_period_in_days 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_qs.retention_period_in_days'
  properties: {
    value: '7'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_qs_store_query_plans 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_qs.store_query_plans'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_qs_track_utility 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_qs.track_utility'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_stat_statements_max 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_stat_statements.max'
  properties: {
    value: '5000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_stat_statements_save 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_stat_statements.save'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_stat_statements_track 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_stat_statements.track'
  properties: {
    value: 'none'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_stat_statements_track_planning 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_stat_statements.track_planning'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pg_stat_statements_track_utility 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pg_stat_statements.track_utility'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pgaadauth_enable_group_sync 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pgaadauth.enable_group_sync'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pgaudit_log 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pgaudit.log'
  properties: {
    value: 'none'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pgaudit_log_catalog 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pgaudit.log_catalog'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pgaudit_log_client 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pgaudit.log_client'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pgaudit_log_level 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pgaudit.log_level'
  properties: {
    value: 'log'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pgaudit_log_parameter 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pgaudit.log_parameter'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pgaudit_log_parameter_max_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pgaudit.log_parameter_max_size'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pgaudit_log_relation 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pgaudit.log_relation'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pgaudit_log_rows 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pgaudit.log_rows'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pgaudit_log_statement 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pgaudit.log_statement'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pgaudit_log_statement_once 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pgaudit.log_statement_once'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pgaudit_role 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pgaudit.role'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pglogical_batch_inserts 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pglogical.batch_inserts'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pglogical_conflict_log_level 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pglogical.conflict_log_level'
  properties: {
    value: 'log'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pglogical_conflict_resolution 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pglogical.conflict_resolution'
  properties: {
    value: 'apply_remote'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pglogical_extra_connection_options 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pglogical.extra_connection_options'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pglogical_synchronous_commit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pglogical.synchronous_commit'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pglogical_temp_directory 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pglogical.temp_directory'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pglogical_use_spi 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pglogical.use_spi'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pgms_stats_is_enabled_fs 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pgms_stats.is_enabled_fs'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pgms_wait_sampling_history_period 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pgms_wait_sampling.history_period'
  properties: {
    value: '100'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pgms_wait_sampling_is_enabled_fs 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pgms_wait_sampling.is_enabled_fs'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pgms_wait_sampling_query_capture_mode 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pgms_wait_sampling.query_capture_mode'
  properties: {
    value: 'none'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_plan_cache_mode 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'plan_cache_mode'
  properties: {
    value: 'auto'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_port 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'port'
  properties: {
    value: '5432'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_post_auth_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'post_auth_delay'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_postgis_gdal_enabled_drivers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'postgis.gdal_enabled_drivers'
  properties: {
    value: 'DISABLE_ALL'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_pre_auth_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'pre_auth_delay'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_primary_conninfo 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'primary_conninfo'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_primary_slot_name 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'primary_slot_name'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_quote_all_identifiers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'quote_all_identifiers'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_random_page_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'random_page_cost'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_recovery_end_command 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'recovery_end_command'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_recovery_init_sync_method 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'recovery_init_sync_method'
  properties: {
    value: 'fsync'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_recovery_min_apply_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'recovery_min_apply_delay'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_recovery_prefetch 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'recovery_prefetch'
  properties: {
    value: 'try'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_recovery_target 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'recovery_target'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_recovery_target_action 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'recovery_target_action'
  properties: {
    value: 'pause'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_recovery_target_inclusive 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'recovery_target_inclusive'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_recovery_target_lsn 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'recovery_target_lsn'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_recovery_target_name 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'recovery_target_name'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_recovery_target_time 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'recovery_target_time'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_recovery_target_timeline 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'recovery_target_timeline'
  properties: {
    value: 'latest'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_recovery_target_xid 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'recovery_target_xid'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_recursive_worktable_factor 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'recursive_worktable_factor'
  properties: {
    value: '10'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_remove_temp_files_after_crash 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'remove_temp_files_after_crash'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_require_secure_transport 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'require_secure_transport'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_reserved_connections 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'reserved_connections'
  properties: {
    value: '5'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_restart_after_crash 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'restart_after_crash'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_restore_command 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'restore_command'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_restrict_nonsystem_relation_kind 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'restrict_nonsystem_relation_kind'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_row_security 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'row_security'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_scram_iterations 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'scram_iterations'
  properties: {
    value: '4096'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_search_path 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'search_path'
  properties: {
    value: '"$user", public'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_segment_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'segment_size'
  properties: {
    value: '131072'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_send_abort_for_crash 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'send_abort_for_crash'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_send_abort_for_kill 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'send_abort_for_kill'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_seq_page_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'seq_page_cost'
  properties: {
    value: '1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_serializable_buffers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'serializable_buffers'
  properties: {
    value: '32'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_server_encoding 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'server_encoding'
  properties: {
    value: 'UTF8'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_server_version 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'server_version'
  properties: {
    value: '17.6'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_server_version_num 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'server_version_num'
  properties: {
    value: '170006'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_session_preload_libraries 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'session_preload_libraries'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_session_replication_role 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'session_replication_role'
  properties: {
    value: 'origin'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_shared_buffers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'shared_buffers'
  properties: {
    value: '131072'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_shared_memory_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'shared_memory_size'
  properties: {
    value: '1127'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_shared_memory_size_in_huge_pages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'shared_memory_size_in_huge_pages'
  properties: {
    value: '564'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_shared_memory_type 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'shared_memory_type'
  properties: {
    value: 'mmap'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_shared_preload_libraries 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'shared_preload_libraries'
  properties: {
    value: 'pg_cron,pg_stat_statements'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_squeeze_max_xlock_time 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'squeeze.max_xlock_time'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_squeeze_worker_autostart 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'squeeze.worker_autostart'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_squeeze_worker_role 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'squeeze.worker_role'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_squeeze_workers_per_database 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'squeeze.workers_per_database'
  properties: {
    value: '1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_ssl 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ssl'
  properties: {
    value: 'on'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_ssl_ca_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ssl_ca_file'
  properties: {
    value: '/datadrive/certs/ca.pem'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_ssl_cert_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ssl_cert_file'
  properties: {
    value: '/datadrive/certs/cert.pem'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_ssl_ciphers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ssl_ciphers'
  properties: {
    value: 'ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_ssl_crl_dir 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ssl_crl_dir'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_ssl_crl_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ssl_crl_file'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_ssl_dh_params_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ssl_dh_params_file'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_ssl_ecdh_curve 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ssl_ecdh_curve'
  properties: {
    value: 'prime256v1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_ssl_key_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ssl_key_file'
  properties: {
    value: '/datadrive/certs/key.pem'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_ssl_library 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ssl_library'
  properties: {
    value: 'OpenSSL'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_ssl_max_protocol_version 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ssl_max_protocol_version'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_ssl_min_protocol_version 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ssl_min_protocol_version'
  properties: {
    value: 'TLSv1.2'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_ssl_passphrase_command 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ssl_passphrase_command'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_ssl_passphrase_command_supports_reload 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ssl_passphrase_command_supports_reload'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_ssl_prefer_server_ciphers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ssl_prefer_server_ciphers'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_standard_conforming_strings 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'standard_conforming_strings'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_statement_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'statement_timeout'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_stats_fetch_consistency 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'stats_fetch_consistency'
  properties: {
    value: 'cache'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_subtransaction_buffers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'subtransaction_buffers'
  properties: {
    value: '256'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_summarize_wal 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'summarize_wal'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_superuser_reserved_connections 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'superuser_reserved_connections'
  properties: {
    value: '10'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_sync_replication_slots 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'sync_replication_slots'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_synchronize_seqscans 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'synchronize_seqscans'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_synchronized_standby_slots 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'synchronized_standby_slots'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_synchronous_commit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'synchronous_commit'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_synchronous_standby_names 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'synchronous_standby_names'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_syslog_facility 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'syslog_facility'
  properties: {
    value: 'local0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_syslog_ident 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'syslog_ident'
  properties: {
    value: 'postgres'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_syslog_sequence_numbers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'syslog_sequence_numbers'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_syslog_split_messages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'syslog_split_messages'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_tcp_keepalives_count 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'tcp_keepalives_count'
  properties: {
    value: '9'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_tcp_keepalives_idle 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'tcp_keepalives_idle'
  properties: {
    value: '120'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_tcp_keepalives_interval 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'tcp_keepalives_interval'
  properties: {
    value: '30'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_tcp_user_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'tcp_user_timeout'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_temp_buffers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'temp_buffers'
  properties: {
    value: '1024'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_temp_file_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'temp_file_limit'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_temp_tablespaces 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'temp_tablespaces'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_timescaledb_bgw_launcher_poll_time 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'timescaledb.bgw_launcher_poll_time'
  properties: {
    value: '60000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_timescaledb_disable_load 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'timescaledb.disable_load'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_timescaledb_max_background_workers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'timescaledb.max_background_workers'
  properties: {
    value: '16'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_timescaledb_osm_disable_load 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'timescaledb_osm.disable_load'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_TimeZone 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'TimeZone'
  properties: {
    value: 'UTC'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_timezone_abbreviations 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'timezone_abbreviations'
  properties: {
    value: 'Default'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_trace_connection_negotiation 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'trace_connection_negotiation'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_trace_notify 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'trace_notify'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_trace_sort 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'trace_sort'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_track_activities 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'track_activities'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_track_activity_query_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'track_activity_query_size'
  properties: {
    value: '1024'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_track_commit_timestamp 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'track_commit_timestamp'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_track_counts 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'track_counts'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_track_functions 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'track_functions'
  properties: {
    value: 'none'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_track_io_timing 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'track_io_timing'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_track_wal_io_timing 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'track_wal_io_timing'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_transaction_buffers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'transaction_buffers'
  properties: {
    value: '256'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_transaction_deferrable 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'transaction_deferrable'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_transaction_isolation 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'transaction_isolation'
  properties: {
    value: 'read committed'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_transaction_read_only 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'transaction_read_only'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_transaction_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'transaction_timeout'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_transform_null_equals 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'transform_null_equals'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_unix_socket_directories 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'unix_socket_directories'
  properties: {
    value: '/tmp,/tmp/tuning_sockets'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_unix_socket_group 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'unix_socket_group'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_unix_socket_permissions 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'unix_socket_permissions'
  properties: {
    value: '0777'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_update_process_title 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'update_process_title'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_vacuum_buffer_usage_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'vacuum_buffer_usage_limit'
  properties: {
    value: '2048'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_vacuum_cost_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'vacuum_cost_delay'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_vacuum_cost_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'vacuum_cost_limit'
  properties: {
    value: '200'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_vacuum_cost_page_dirty 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'vacuum_cost_page_dirty'
  properties: {
    value: '20'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_vacuum_cost_page_hit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'vacuum_cost_page_hit'
  properties: {
    value: '1'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_vacuum_cost_page_miss 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'vacuum_cost_page_miss'
  properties: {
    value: '10'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_vacuum_failsafe_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'vacuum_failsafe_age'
  properties: {
    value: '1600000000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_vacuum_freeze_min_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'vacuum_freeze_min_age'
  properties: {
    value: '50000000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_vacuum_freeze_table_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'vacuum_freeze_table_age'
  properties: {
    value: '150000000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_vacuum_multixact_failsafe_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'vacuum_multixact_failsafe_age'
  properties: {
    value: '1600000000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_vacuum_multixact_freeze_min_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'vacuum_multixact_freeze_min_age'
  properties: {
    value: '5000000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_vacuum_multixact_freeze_table_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'vacuum_multixact_freeze_table_age'
  properties: {
    value: '150000000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_block_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_block_size'
  properties: {
    value: '8192'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_buffers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_buffers'
  properties: {
    value: '2048'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_compression 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_compression'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_consistency_checking 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_consistency_checking'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_decode_buffer_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_decode_buffer_size'
  properties: {
    value: '524288'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_init_zero 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_init_zero'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_keep_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_keep_size'
  properties: {
    value: '400'
    source: 'user-override'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_level 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_level'
  properties: {
    value: 'replica'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_log_hints 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_log_hints'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_receiver_create_temp_slot 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_receiver_create_temp_slot'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_receiver_status_interval 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_receiver_status_interval'
  properties: {
    value: '10'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_receiver_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_receiver_timeout'
  properties: {
    value: '60000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_recycle 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_recycle'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_retrieve_retry_interval 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_retrieve_retry_interval'
  properties: {
    value: '5000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_segment_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_segment_size'
  properties: {
    value: '16777216'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_sender_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_sender_timeout'
  properties: {
    value: '60000'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_skip_threshold 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_skip_threshold'
  properties: {
    value: '2048'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_summary_keep_time 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_summary_keep_time'
  properties: {
    value: '14400'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_sync_method 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_sync_method'
  properties: {
    value: 'fdatasync'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_writer_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_writer_delay'
  properties: {
    value: '200'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_wal_writer_flush_after 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'wal_writer_flush_after'
  properties: {
    value: '128'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_work_mem 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'work_mem'
  properties: {
    value: '4096'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_xmlbinary 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'xmlbinary'
  properties: {
    value: 'base64'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_xmloption 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'xmloption'
  properties: {
    value: 'content'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_zero_damaged_pages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'zero_damaged_pages'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_maintenance 'Microsoft.DBforPostgreSQL/flexibleServers/databases@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure_maintenance'
  properties: {
    charset: 'UTF8'
    collation: 'en_US.utf8'
  }
}

resource flexibleServers_goal_tracker_db_name_azure_sys 'Microsoft.DBforPostgreSQL/flexibleServers/databases@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'azure_sys'
  properties: {
    charset: 'UTF8'
    collation: 'en_US.utf8'
  }
}

resource flexibleServers_goal_tracker_db_name_goalsdb 'Microsoft.DBforPostgreSQL/flexibleServers/databases@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'goalsdb'
  properties: {
    charset: 'UTF8'
    collation: 'en_US.utf8'
  }
}

resource flexibleServers_goal_tracker_db_name_postgres 'Microsoft.DBforPostgreSQL/flexibleServers/databases@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'postgres'
  properties: {
    charset: 'UTF8'
    collation: 'en_US.utf8'
  }
}

resource flexibleServers_goal_tracker_db_name_AllowAllAzureServicesAndResourcesWithinAzureIps_2025_10_8_14_35_54 'Microsoft.DBforPostgreSQL/flexibleServers/firewallRules@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'AllowAllAzureServicesAndResourcesWithinAzureIps_2025-10-8_14-35-54'
  properties: {
    startIpAddress: '0.0.0.0'
    endIpAddress: '0.0.0.0'
  }
}

resource flexibleServers_goal_tracker_db_name_ClientIPAddress_2025_10_8_15_37_2 'Microsoft.DBforPostgreSQL/flexibleServers/firewallRules@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'ClientIPAddress_2025-10-8_15-37-2'
  properties: {
    startIpAddress: '203.187.194.23'
    endIpAddress: '203.187.194.23'
  }
}

resource flexibleServers_goal_tracker_db_name_db_pe_9d161401_bd36_4233_b335_a3c9dd74e21b 'Microsoft.DBforPostgreSQL/flexibleServers/privateEndpointConnections@2025-01-01-preview' = {
  parent: flexibleServers_goal_tracker_db_name_resource
  name: 'db-pe.9d161401-bd36-4233-b335-a3c9dd74e21b'
  properties: {
    privateEndpoint: {}
    privateLinkServiceConnectionState: {
      status: 'Approved'
      description: 'Auto-Approved'
      actionsRequired: 'None'
    }
  }
}

resource schedules_shutdown_computevm_three_tier_vmss_d74d061f_name_resource 'microsoft.devtestlab/schedules@2018-09-15' = {
  name: schedules_shutdown_computevm_three_tier_vmss_d74d061f_name
  location: 'eastus'
  properties: {
    status: 'Enabled'
    taskType: 'ComputeVmShutdownTask'
    dailyRecurrence: {
      time: '2100'
    }
    timeZoneId: 'India Standard Time'
    notificationSettings: {
      status: 'Disabled'
      timeInMinutes: 30
      notificationLocale: 'en'
    }
    targetResourceId: virtualMachines_three_tier_vmss_d74d061f_name_resource.id
  }
}

resource vaults_three_tier_vault_name_db_host 'Microsoft.KeyVault/vaults/secrets@2024-12-01-preview' = {
  parent: vaults_three_tier_vault_name_resource
  name: 'db-host'
  location: 'eastus'
  properties: {
    attributes: {
      enabled: true
    }
  }
}

resource vaults_three_tier_vault_name_db_name 'Microsoft.KeyVault/vaults/secrets@2024-12-01-preview' = {
  parent: vaults_three_tier_vault_name_resource
  name: 'db-name'
  location: 'eastus'
  properties: {
    attributes: {
      enabled: true
    }
  }
}

resource vaults_three_tier_vault_name_db_password 'Microsoft.KeyVault/vaults/secrets@2024-12-01-preview' = {
  parent: vaults_three_tier_vault_name_resource
  name: 'db-password'
  location: 'eastus'
  properties: {
    attributes: {
      enabled: true
    }
  }
}

resource vaults_three_tier_vault_name_db_port 'Microsoft.KeyVault/vaults/secrets@2024-12-01-preview' = {
  parent: vaults_three_tier_vault_name_resource
  name: 'db-port'
  location: 'eastus'
  properties: {
    attributes: {
      enabled: true
    }
  }
}

resource vaults_three_tier_vault_name_db_sslmode 'Microsoft.KeyVault/vaults/secrets@2024-12-01-preview' = {
  parent: vaults_three_tier_vault_name_resource
  name: 'db-sslmode'
  location: 'eastus'
  properties: {
    attributes: {
      enabled: true
    }
  }
}

resource vaults_three_tier_vault_name_db_username 'Microsoft.KeyVault/vaults/secrets@2024-12-01-preview' = {
  parent: vaults_three_tier_vault_name_resource
  name: 'db-username'
  location: 'eastus'
  properties: {
    attributes: {
      enabled: true
    }
  }
}

resource loadBalancers_backend_internal_lb_name_resource 'Microsoft.Network/loadBalancers@2024-07-01' = {
  name: loadBalancers_backend_internal_lb_name
  location: 'eastus'
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }
  properties: {
    frontendIPConfigurations: [
      {
        name: 'private-ip'
        id: '${loadBalancers_backend_internal_lb_name_resource.id}/frontendIPConfigurations/private-ip'
        properties: {
          privateIPAddress: '10.0.2.4'
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: virtualNetworks_threetiervent_name_private_subnet.id
          }
          privateIPAddressVersion: 'IPv4'
        }
        zones: [
          '3'
          '1'
          '2'
        ]
      }
    ]
    backendAddressPools: [
      {
        name: 'internal-lb-backendpool'
        id: loadBalancers_backend_internal_lb_name_internal_lb_backendpool.id
        properties: {
          loadBalancerBackendAddresses: [
            {
              name: 'b29d73cb-57ce-4d16-b785-e96e96c0eaa4'
              properties: {}
            }
          ]
        }
      }
    ]
    loadBalancingRules: [
      {
        name: 'lb-rule-backend'
        id: '${loadBalancers_backend_internal_lb_name_resource.id}/loadBalancingRules/lb-rule-backend'
        properties: {
          frontendIPConfiguration: {
            id: '${loadBalancers_backend_internal_lb_name_resource.id}/frontendIPConfigurations/private-ip'
          }
          frontendPort: 8080
          backendPort: 8080
          enableFloatingIP: false
          idleTimeoutInMinutes: 4
          protocol: 'Tcp'
          enableTcpReset: false
          loadDistribution: 'Default'
          disableOutboundSnat: true
          enableConnectionTracking: false
          backendAddressPool: {
            id: loadBalancers_backend_internal_lb_name_internal_lb_backendpool.id
          }
          backendAddressPools: [
            {
              id: loadBalancers_backend_internal_lb_name_internal_lb_backendpool.id
            }
          ]
          probe: {
            id: '${loadBalancers_backend_internal_lb_name_resource.id}/probes/backend-health'
          }
        }
      }
    ]
    probes: [
      {
        name: 'backend-health'
        id: '${loadBalancers_backend_internal_lb_name_resource.id}/probes/backend-health'
        properties: {
          protocol: 'Http'
          port: 8080
          requestPath: '/health'
          intervalInSeconds: 8
          numberOfProbes: 1
          probeThreshold: 1
          noHealthyBackendsBehavior: 'AllProbedDown'
        }
      }
    ]
    inboundNatRules: []
    outboundRules: []
    inboundNatPools: []
  }
}

resource loadBalancers_frontend_public_lb_name_resource 'Microsoft.Network/loadBalancers@2024-07-01' = {
  name: loadBalancers_frontend_public_lb_name
  location: 'eastus'
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }
  properties: {
    frontendIPConfigurations: [
      {
        name: 'frontend-lb-ip'
        id: '${loadBalancers_frontend_public_lb_name_resource.id}/frontendIPConfigurations/frontend-lb-ip'
        properties: {
          privateIPAllocationMethod: 'Dynamic'
          publicIPAddress: {
            id: publicIPAddresses_front_pip_name_resource.id
          }
        }
      }
    ]
    backendAddressPools: [
      {
        name: 'front-backend-pool'
        id: loadBalancers_frontend_public_lb_name_front_backend_pool.id
        properties: {
          loadBalancerBackendAddresses: [
            {
              name: '7543241f-c14d-490f-a0ad-57f5c8ec3332'
              properties: {}
            }
          ]
        }
      }
    ]
    loadBalancingRules: [
      {
        name: 'front-lb-rule'
        id: '${loadBalancers_frontend_public_lb_name_resource.id}/loadBalancingRules/front-lb-rule'
        properties: {
          frontendIPConfiguration: {
            id: '${loadBalancers_frontend_public_lb_name_resource.id}/frontendIPConfigurations/frontend-lb-ip'
          }
          frontendPort: 80
          backendPort: 80
          enableFloatingIP: false
          idleTimeoutInMinutes: 4
          protocol: 'Tcp'
          enableTcpReset: false
          loadDistribution: 'Default'
          disableOutboundSnat: true
          enableConnectionTracking: false
          backendAddressPool: {
            id: loadBalancers_frontend_public_lb_name_front_backend_pool.id
          }
          backendAddressPools: [
            {
              id: loadBalancers_frontend_public_lb_name_front_backend_pool.id
            }
          ]
          probe: {
            id: '${loadBalancers_frontend_public_lb_name_resource.id}/probes/frontend-probe'
          }
        }
      }
    ]
    probes: [
      {
        name: 'frontend-probe'
        id: '${loadBalancers_frontend_public_lb_name_resource.id}/probes/frontend-probe'
        properties: {
          protocol: 'Http'
          port: 80
          requestPath: '/'
          intervalInSeconds: 5
          numberOfProbes: 1
          probeThreshold: 1
          noHealthyBackendsBehavior: 'AllProbedDown'
        }
      }
    ]
    inboundNatRules: []
    outboundRules: []
    inboundNatPools: []
  }
}

resource loadBalancers_frontend_public_lb_name_front_backend_pool 'Microsoft.Network/loadBalancers/backendAddressPools@2024-07-01' = {
  name: '${loadBalancers_frontend_public_lb_name}/front-backend-pool'
  properties: {
    loadBalancerBackendAddresses: [
      {
        name: '7543241f-c14d-490f-a0ad-57f5c8ec3332'
        properties: {}
      }
    ]
  }
  dependsOn: [
    loadBalancers_frontend_public_lb_name_resource
  ]
}

resource loadBalancers_backend_internal_lb_name_internal_lb_backendpool 'Microsoft.Network/loadBalancers/backendAddressPools@2024-07-01' = {
  name: '${loadBalancers_backend_internal_lb_name}/internal-lb-backendpool'
  properties: {
    loadBalancerBackendAddresses: [
      {
        name: 'b29d73cb-57ce-4d16-b785-e96e96c0eaa4'
        properties: {}
      }
    ]
  }
  dependsOn: [
    loadBalancers_backend_internal_lb_name_resource
  ]
}

resource networkSecurityGroups_public_nsg_name_Allow3000 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_public_nsg_name}/Allow3000'
  properties: {
    protocol: '*'
    sourcePortRange: '*'
    destinationPortRange: '3000'
    sourceAddressPrefix: 'AzureLoadBalancer'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 160
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_public_nsg_name_resource
  ]
}

resource networkSecurityGroups_bastion_nsg_name_AllowAZLoadbalancer 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_bastion_nsg_name}/AllowAZLoadbalancer'
  properties: {
    protocol: 'TCP'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: 'AzureLoadBalancer'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 120
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_bastion_nsg_name_resource
  ]
}

resource networkSecurityGroups_private_nsg_name_Allow_AzureLB_probe 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_private_nsg_name}/Allow-AzureLB-probe'
  properties: {
    protocol: '*'
    sourcePortRange: '*'
    destinationPortRange: '8080'
    sourceAddressPrefix: 'AzureLoadBalancer'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 210
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_private_nsg_name_resource
  ]
}

resource networkSecurityGroups_db_nsg_name_AllowAzureService 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_db_nsg_name}/AllowAzureService'
  properties: {
    protocol: 'TCP'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: 'AzureCloud'
    access: 'Allow'
    priority: 300
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_db_nsg_name_resource
  ]
}

resource networkSecurityGroups_private_nsg_name_AllowBackend 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_private_nsg_name}/AllowBackend'
  properties: {
    protocol: '*'
    sourcePortRange: '*'
    destinationPortRange: '8080'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 200
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_private_nsg_name_resource
  ]
}

resource networkSecurityGroups_bastion_nsg_name_AllowCloud 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_bastion_nsg_name}/AllowCloud'
  properties: {
    protocol: 'TCP'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: 'AzureCloud'
    access: 'Allow'
    priority: 150
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_bastion_nsg_name_resource
  ]
}

resource networkSecurityGroups_db_nsg_name_AllowDB 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_db_nsg_name}/AllowDB'
  properties: {
    protocol: 'TCP'
    sourcePortRange: '*'
    destinationPortRange: '5432'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 100
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_db_nsg_name_resource
  ]
}

resource networkSecurityGroups_private_nsg_name_AllowDBConnection 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_private_nsg_name}/AllowDBConnection'
  properties: {
    protocol: 'TCP'
    sourcePortRange: '*'
    destinationPortRange: '5432'
    sourceAddressPrefix: '10.0.2.0/24'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 230
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_private_nsg_name_resource
  ]
}

resource networkSecurityGroups_bastion_nsg_name_AllowFromVnet 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_bastion_nsg_name}/AllowFromVnet'
  properties: {
    protocol: 'TCP'
    sourcePortRange: '*'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 130
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: [
      '8080'
      '5701'
    ]
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_bastion_nsg_name_resource
  ]
}

resource networkSecurityGroups_bastion_nsg_name_AllowGWManager 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_bastion_nsg_name}/AllowGWManager'
  properties: {
    protocol: 'TCP'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: 'GatewayManager'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 110
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_bastion_nsg_name_resource
  ]
}

resource networkSecurityGroups_public_nsg_name_AllowHTTP 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_public_nsg_name}/AllowHTTP'
  properties: {
    protocol: 'TCP'
    sourcePortRange: '*'
    destinationPortRange: '80'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 100
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_public_nsg_name_resource
  ]
}

resource networkSecurityGroups_public_nsg_name_AllowHTTPS 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_public_nsg_name}/AllowHTTPS'
  properties: {
    protocol: 'TCP'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 110
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_public_nsg_name_resource
  ]
}

resource networkSecurityGroups_bastion_nsg_name_AllowOB 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_bastion_nsg_name}/AllowOB'
  properties: {
    protocol: '*'
    sourcePortRange: '*'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: 'VirtualNetwork'
    access: 'Allow'
    priority: 140
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: [
      '22'
      '3389'
      '8080'
      '5701'
    ]
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_bastion_nsg_name_resource
  ]
}

resource networkSecurityGroups_bastion_nsg_name_AllowOnInternet 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_bastion_nsg_name}/AllowOnInternet'
  properties: {
    protocol: 'TCP'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: 'Internet'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 100
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_bastion_nsg_name_resource
  ]
}

resource networkSecurityGroups_private_nsg_name_AllowOutboundInternet 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_private_nsg_name}/AllowOutboundInternet'
  properties: {
    protocol: '*'
    sourcePortRange: '*'
    destinationPortRange: '8080'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: 'Internet'
    access: 'Allow'
    priority: 220
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_private_nsg_name_resource
  ]
}

resource networkSecurityGroups_basicNsgthreetiervent_nic01_name_Tcp 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_basicNsgthreetiervent_nic01_name}/Tcp'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '80'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 300
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_basicNsgthreetiervent_nic01_name_resource
  ]
}

resource networkSecurityGroups_public_nsg_name_TempAllow8080 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_public_nsg_name}/TempAllow8080'
  properties: {
    protocol: '*'
    sourcePortRange: '*'
    destinationPortRange: '8080'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 140
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_public_nsg_name_resource
  ]
}

resource networkSecurityGroups_public_nsg_name_TempAllowOutbound8080 'Microsoft.Network/networkSecurityGroups/securityRules@2024-07-01' = {
  name: '${networkSecurityGroups_public_nsg_name}/TempAllowOutbound8080'
  properties: {
    protocol: '*'
    sourcePortRange: '*'
    destinationPortRange: '8080'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 150
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_public_nsg_name_resource
  ]
}

resource privateDnsZones_privatelink_postgres_database_azure_com_name_goal_tracker_db 'Microsoft.Network/privateDnsZones/A@2024-06-01' = {
  parent: privateDnsZones_privatelink_postgres_database_azure_com_name_resource
  name: 'goal-tracker-db'
  properties: {
    metadata: {
      creator: 'created by private endpoint db-pe with resource guid 1a990164-5870-4f13-b260-e1bc774d301f'
    }
    ttl: 10
    aRecords: [
      {
        ipv4Address: '10.0.3.4'
      }
    ]
  }
}

resource privateDnsZones_privatelink_postgres_database_azure_com_name_three_tiebaj5r5 'Microsoft.Network/privateDnsZones/A@2024-06-01' = {
  parent: privateDnsZones_privatelink_postgres_database_azure_com_name_resource
  name: 'three-tiebaj5r5'
  properties: {
    ttl: 10
    aRecords: [
      {
        ipv4Address: '10.0.1.4'
      }
    ]
  }
}

resource privateDnsZones_privatelink_postgres_database_azure_com_name_three_tieejsck6 'Microsoft.Network/privateDnsZones/A@2024-06-01' = {
  parent: privateDnsZones_privatelink_postgres_database_azure_com_name_resource
  name: 'three-tieejsck6'
  properties: {
    ttl: 10
    aRecords: [
      {
        ipv4Address: '10.0.2.5'
      }
    ]
  }
}

resource Microsoft_Network_privateDnsZones_SOA_privateDnsZones_privatelink_postgres_database_azure_com_name 'Microsoft.Network/privateDnsZones/SOA@2024-06-01' = {
  parent: privateDnsZones_privatelink_postgres_database_azure_com_name_resource
  name: '@'
  properties: {
    ttl: 3600
    soaRecord: {
      email: 'azureprivatedns-host.microsoft.com'
      expireTime: 2419200
      host: 'azureprivatedns.net'
      minimumTtl: 10
      refreshTime: 3600
      retryTime: 300
      serialNumber: 1
    }
  }
}

resource storageAccounts_threetierstorage_name_default 'Microsoft.Storage/storageAccounts/blobServices@2025-01-01' = {
  parent: storageAccounts_threetierstorage_name_resource
  name: 'default'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  properties: {
    cors: {
      corsRules: []
    }
    deleteRetentionPolicy: {
      allowPermanentDelete: false
      enabled: false
    }
  }
}

resource Microsoft_Storage_storageAccounts_fileServices_storageAccounts_threetierstorage_name_default 'Microsoft.Storage/storageAccounts/fileServices@2025-01-01' = {
  parent: storageAccounts_threetierstorage_name_resource
  name: 'default'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  properties: {
    protocolSettings: {
      smb: {}
    }
    cors: {
      corsRules: []
    }
    shareDeleteRetentionPolicy: {
      enabled: true
      days: 7
    }
  }
}

resource Microsoft_Storage_storageAccounts_queueServices_storageAccounts_threetierstorage_name_default 'Microsoft.Storage/storageAccounts/queueServices@2025-01-01' = {
  parent: storageAccounts_threetierstorage_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource Microsoft_Storage_storageAccounts_tableServices_storageAccounts_threetierstorage_name_default 'Microsoft.Storage/storageAccounts/tableServices@2025-01-01' = {
  parent: storageAccounts_threetierstorage_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource virtualMachines_three_tier_backend_cb8fe66a_name_resource 'Microsoft.Compute/virtualMachines@2024-11-01' = {
  name: virtualMachines_three_tier_backend_cb8fe66a_name
  location: 'eastus'
  tags: {
    VirtualMachineProfileTimeCreated: '10/8/2025 8:25:50 AM +00:00'
  }
  identity: {
    type: 'UserAssigned'
    userAssignedIdentities: {
      '/subscriptions/ae664dcd-dcfb-44a7-9c6e-a9f1408975ff/resourceGroups/threetierdemo/providers/Microsoft.ManagedIdentity/userAssignedIdentities/three-tier-user-mi': {}
    }
  }
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_D2ps_v6'
    }
    virtualMachineScaleSet: {
      id: virtualMachineScaleSets_three_tier_backend_name_resource.id
    }
    additionalCapabilities: {
      hibernationEnabled: false
    }
    storageProfile: {
      imageReference: {
        publisher: 'canonical'
        offer: '0001-com-ubuntu-server-jammy'
        sku: '22_04-lts-arm64'
        version: 'latest'
      }
      osDisk: {
        osType: 'Linux'
        name: '${virtualMachines_three_tier_backend_cb8fe66a_name}_OsDisk_1_40337fed11ae4b35bf1b7af63ccff2b5'
        createOption: 'FromImage'
        caching: 'ReadWrite'
        managedDisk: {
          storageAccountType: 'Standard_LRS'
          id: resourceId(
            'Microsoft.Compute/disks',
            '${virtualMachines_three_tier_backend_cb8fe66a_name}_OsDisk_1_40337fed11ae4b35bf1b7af63ccff2b5'
          )
        }
        deleteOption: 'Delete'
        diskSizeGB: 30
      }
      dataDisks: []
      diskControllerType: 'SCSI'
    }
    osProfile: {
      computerName: 'three-tieEJSCK6'
      adminUsername: 'azureuser'
      linuxConfiguration: {
        disablePasswordAuthentication: true
        ssh: {
          publicKeys: [
            {
              path: '/home/azureuser/.ssh/authorized_keys'
              keyData: 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCyxB/vgAANJzECVx6ISWoEnsK4Nc+2+2q4G2p6t10OcZuHprykZaBYZe8am8y07Bb1YexsVh2LEUxaMccZwxlmkGZhCMM6uCYoh9yyFy0ZD3XeiU58LqIfERiCZEe+dObhWpuG0wX4VoLT6qfewa5EZry8cbBMpKI6BvHJ/is83Tp9KmENMyGmEaynszn8lPPAtNT5PPuBF+EqcRFw08Jm5YhyGcvpUhKjHkhylnjOc/JzXA/PDPA5wz+p0s/AAz3Bkxle7Xe6N+/WiifZFbyWXlwq6eYB0EMjinRZI+G/451OOp0Ird+WpLnbcFkxyCKYD/HGU+Br2lcHLwaCJW0ke1vFu3gfF54xwepQW0MP8lR1iQtdcXG7L4tXv2vBfzVkIIDsh8j4SYUhkruAI/sAwm51bwnsdZG1Nff6KNJccS/Vvr3rCVesDkHyQn00rEjMc51JhOJKe6gfA/wU7I/S/U9w89LH3eWm4Z2qio7ix1/HzFfroxe6wrTVt6nvfxk= generated-by-azure'
            }
          ]
        }
        provisionVMAgent: true
        patchSettings: {
          patchMode: 'ImageDefault'
          assessmentMode: 'ImageDefault'
        }
      }
      secrets: []
      allowExtensionOperations: true
      requireGuestProvisionSignal: true
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: networkInterfaces_threetiervent_backend_nic01_827a97a6_name_resource.id
          properties: {
            primary: true
            deleteOption: 'Delete'
          }
        }
      ]
    }
    diagnosticsProfile: {
      bootDiagnostics: {
        enabled: true
      }
    }
  }
}

resource virtualMachines_three_tier_vmss_d74d061f_name_resource 'Microsoft.Compute/virtualMachines@2024-11-01' = {
  name: virtualMachines_three_tier_vmss_d74d061f_name
  location: 'eastus'
  tags: {
    VirtualMachineProfileTimeCreated: '10/7/2025 1:24:27 PM +00:00'
  }
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_D2ps_v6'
    }
    virtualMachineScaleSet: {
      id: virtualMachineScaleSets_three_tier_vmss_name_resource.id
    }
    additionalCapabilities: {
      hibernationEnabled: false
    }
    storageProfile: {
      imageReference: {
        publisher: 'canonical'
        offer: '0001-com-ubuntu-server-jammy'
        sku: '22_04-lts-arm64'
        version: 'latest'
      }
      osDisk: {
        osType: 'Linux'
        name: '${virtualMachines_three_tier_vmss_d74d061f_name}_OsDisk_1_745ad4d6d42644d2b26b2fe560ed5a0c'
        createOption: 'FromImage'
        caching: 'ReadWrite'
        managedDisk: {
          storageAccountType: 'Standard_LRS'
          id: resourceId(
            'Microsoft.Compute/disks',
            '${virtualMachines_three_tier_vmss_d74d061f_name}_OsDisk_1_745ad4d6d42644d2b26b2fe560ed5a0c'
          )
        }
        deleteOption: 'Delete'
        diskSizeGB: 30
      }
      dataDisks: []
      diskControllerType: 'SCSI'
    }
    osProfile: {
      computerName: 'three-tieBAJ5R5'
      adminUsername: 'azureuser'
      linuxConfiguration: {
        disablePasswordAuthentication: true
        ssh: {
          publicKeys: [
            {
              path: '/home/azureuser/.ssh/authorized_keys'
              keyData: 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDDdYjTIyWzzjtVeexzJkuq81voB7IOPoQE2yC1uP28f3RmCcVgJjHq0O+cQ5URNqyffwZi22NaOBYcqLECzrEMWBovFo2N0Sul2377UUyT29vx+R0H9jx1I2+SqpHSUMO2NjfTqBOVQf02fbyrJXBykz9mFRTbo+YrzylPpMk/2tQ2xeRZ95ZrbHTzkaVu/Zvsohxh1MLIHoqZHem6pmhVeN04Hw96gBkw6w58Fc3y4yLBg7JyhS2/ACIDzfEA5+ZP+ki6kpjFkn3EKIFbnaa7Kve38+oYzbd9v8iYfyCjRBcNQWNEoi/jETPMEChKxwXA4X5r162s6n9ct7iKk3HkTFTqwmo6D7I2Kd7XlD2AxyhSjTtKYTazUlmkRnMGo/FwLFML/5JT9qS39uU8trJl97sAWYUF2udSLa+eo298wd0JdHZDxHX9m6nGhjjbAzuIeZl65Rq5edI8d8v6eAx7W1WLeuHcD+7f+AxVqLBYIYCjLsJWO+kL38LrX8O3fS0= generated-by-azure'
            }
          ]
        }
        provisionVMAgent: true
        patchSettings: {
          patchMode: 'ImageDefault'
          assessmentMode: 'ImageDefault'
        }
      }
      secrets: []
      allowExtensionOperations: true
      requireGuestProvisionSignal: true
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: networkInterfaces_threetiervent_nic01_8e0bbc6a_name_resource.id
          properties: {
            primary: true
            deleteOption: 'Delete'
          }
        }
      ]
    }
  }
}

resource privateDnsZones_privatelink_postgres_database_azure_com_name_pvtdnszone_vnet_link 'Microsoft.Network/privateDnsZones/virtualNetworkLinks@2024-06-01' = {
  parent: privateDnsZones_privatelink_postgres_database_azure_com_name_resource
  name: 'pvtdnszone-vnet-link'
  location: 'global'
  properties: {
    registrationEnabled: true
    resolutionPolicy: 'Default'
    virtualNetwork: {
      id: virtualNetworks_threetiervent_name_resource.id
    }
  }
}

resource privateEndpoints_db_pe_name_resource 'Microsoft.Network/privateEndpoints@2024-07-01' = {
  name: privateEndpoints_db_pe_name
  location: 'eastus'
  properties: {
    privateLinkServiceConnections: [
      {
        name: privateEndpoints_db_pe_name
        id: '${privateEndpoints_db_pe_name_resource.id}/privateLinkServiceConnections/${privateEndpoints_db_pe_name}'
        properties: {
          privateLinkServiceId: flexibleServers_goal_tracker_db_name_resource.id
          groupIds: [
            'postgresqlServer'
          ]
          privateLinkServiceConnectionState: {
            status: 'Approved'
            description: 'Auto-Approved'
          }
        }
      }
    ]
    manualPrivateLinkServiceConnections: []
    customNetworkInterfaceName: '${privateEndpoints_db_pe_name}-nic'
    subnet: {
      id: virtualNetworks_threetiervent_name_db_subnet.id
    }
    ipConfigurations: []
    customDnsConfigs: []
  }
}

resource privateEndpoints_db_pe_name_default 'Microsoft.Network/privateEndpoints/privateDnsZoneGroups@2024-07-01' = {
  name: '${privateEndpoints_db_pe_name}/default'
  properties: {
    privateDnsZoneConfigs: [
      {
        name: 'privatelink-postgres-database-azure-com'
        properties: {
          privateDnsZoneId: privateDnsZones_privatelink_postgres_database_azure_com_name_resource.id
        }
      }
    ]
  }
  dependsOn: [
    privateEndpoints_db_pe_name_resource
  ]
}

resource virtualNetworks_threetiervent_name_db_subnet 'Microsoft.Network/virtualNetworks/subnets@2024-07-01' = {
  name: '${virtualNetworks_threetiervent_name}/db-subnet'
  properties: {
    addressPrefixes: [
      '10.0.3.0/24'
    ]
    networkSecurityGroup: {
      id: networkSecurityGroups_db_nsg_name_resource.id
    }
    delegations: []
    privateEndpointNetworkPolicies: 'NetworkSecurityGroupEnabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
  dependsOn: [
    virtualNetworks_threetiervent_name_resource
  ]
}

resource virtualNetworks_threetiervent_name_private_subnet 'Microsoft.Network/virtualNetworks/subnets@2024-07-01' = {
  name: '${virtualNetworks_threetiervent_name}/private-subnet'
  properties: {
    addressPrefixes: [
      '10.0.2.0/24'
    ]
    networkSecurityGroup: {
      id: networkSecurityGroups_private_nsg_name_resource.id
    }
    delegations: []
    privateEndpointNetworkPolicies: 'Disabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
    defaultOutboundAccess: false
  }
  dependsOn: [
    virtualNetworks_threetiervent_name_resource
  ]
}

resource virtualNetworks_threetiervent_name_public_subnet 'Microsoft.Network/virtualNetworks/subnets@2024-07-01' = {
  name: '${virtualNetworks_threetiervent_name}/public-subnet'
  properties: {
    addressPrefixes: [
      '10.0.1.0/24'
    ]
    networkSecurityGroup: {
      id: networkSecurityGroups_public_nsg_name_resource.id
    }
    delegations: []
    privateEndpointNetworkPolicies: 'Disabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
  dependsOn: [
    virtualNetworks_threetiervent_name_resource
  ]
}

resource storageAccounts_threetierstorage_name_default_script 'Microsoft.Storage/storageAccounts/blobServices/containers@2025-01-01' = {
  parent: storageAccounts_threetierstorage_name_default
  name: 'script'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [
    storageAccounts_threetierstorage_name_resource
  ]
}

resource virtualMachineScaleSets_three_tier_backend_name_resource 'Microsoft.Compute/virtualMachineScaleSets@2024-11-01' = {
  name: virtualMachineScaleSets_three_tier_backend_name
  location: 'eastus'
  sku: {
    name: 'Standard_D2ps_v6'
    tier: 'Standard'
    capacity: 1
  }
  properties: {
    singlePlacementGroup: false
    orchestrationMode: 'Flexible'
    upgradePolicy: {
      mode: 'Manual'
    }
    scaleInPolicy: {
      rules: [
        'Default'
      ]
      forceDeletion: false
    }
    virtualMachineProfile: {
      osProfile: {
        computerNamePrefix: 'three-tie'
        adminUsername: 'azureuser'
        linuxConfiguration: {
          disablePasswordAuthentication: true
          ssh: {
            publicKeys: [
              {
                path: '/home/azureuser/.ssh/authorized_keys'
                keyData: 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCyxB/vgAANJzECVx6ISWoEnsK4Nc+2+2q4G2p6t10OcZuHprykZaBYZe8am8y07Bb1YexsVh2LEUxaMccZwxlmkGZhCMM6uCYoh9yyFy0ZD3XeiU58LqIfERiCZEe+dObhWpuG0wX4VoLT6qfewa5EZry8cbBMpKI6BvHJ/is83Tp9KmENMyGmEaynszn8lPPAtNT5PPuBF+EqcRFw08Jm5YhyGcvpUhKjHkhylnjOc/JzXA/PDPA5wz+p0s/AAz3Bkxle7Xe6N+/WiifZFbyWXlwq6eYB0EMjinRZI+G/451OOp0Ird+WpLnbcFkxyCKYD/HGU+Br2lcHLwaCJW0ke1vFu3gfF54xwepQW0MP8lR1iQtdcXG7L4tXv2vBfzVkIIDsh8j4SYUhkruAI/sAwm51bwnsdZG1Nff6KNJccS/Vvr3rCVesDkHyQn00rEjMc51JhOJKe6gfA/wU7I/S/U9w89LH3eWm4Z2qio7ix1/HzFfroxe6wrTVt6nvfxk= generated-by-azure'
              }
            ]
          }
          provisionVMAgent: true
          patchSettings: {
            patchMode: 'ImageDefault'
            assessmentMode: 'ImageDefault'
          }
        }
        secrets: []
        allowExtensionOperations: true
        requireGuestProvisionSignal: true
      }
      storageProfile: {
        osDisk: {
          osType: 'Linux'
          createOption: 'FromImage'
          caching: 'ReadWrite'
          managedDisk: {
            storageAccountType: 'Standard_LRS'
          }
          deleteOption: 'Delete'
          diskSizeGB: 30
        }
        imageReference: {
          publisher: 'canonical'
          offer: '0001-com-ubuntu-server-jammy'
          sku: '22_04-lts-arm64'
          version: 'latest'
        }
        diskControllerType: 'SCSI'
      }
      networkProfile: {
        networkApiVersion: '2020-11-01'
        networkInterfaceConfigurations: [
          {
            name: 'threetiervent-backend-nic01'
            properties: {
              primary: true
              enableAcceleratedNetworking: false
              disableTcpStateTracking: false
              enableIPForwarding: false
              auxiliaryMode: 'None'
              auxiliarySku: 'None'
              deleteOption: 'Delete'
              ipConfigurations: [
                {
                  name: 'threetiervent-backend-nic01-defaultIpConfiguration'
                  properties: {
                    privateIPAddressVersion: 'IPv4'
                    subnet: {
                      id: virtualNetworks_threetiervent_name_private_subnet.id
                    }
                    primary: true
                    applicationSecurityGroups: []
                    loadBalancerBackendAddressPools: [
                      {
                        id: loadBalancers_backend_internal_lb_name_internal_lb_backendpool.id
                      }
                    ]
                    applicationGatewayBackendAddressPools: []
                  }
                }
              ]
              networkSecurityGroup: {
                id: networkSecurityGroups_basicNsgthreetiervent_backend_nic01_name_resource.id
              }
              dnsSettings: {
                dnsServers: []
              }
            }
          }
        ]
      }
      diagnosticsProfile: {
        bootDiagnostics: {
          enabled: true
        }
      }
      extensionProfile: {
        extensions: []
      }
    }
    additionalCapabilities: {
      hibernationEnabled: false
    }
    platformFaultDomainCount: 1
    constrainedMaximumCapacity: false
  }
}

resource virtualMachineScaleSets_three_tier_vmss_name_resource 'Microsoft.Compute/virtualMachineScaleSets@2024-11-01' = {
  name: virtualMachineScaleSets_three_tier_vmss_name
  location: 'eastus'
  sku: {
    name: 'Standard_D2ps_v6'
    tier: 'Standard'
    capacity: 1
  }
  properties: {
    singlePlacementGroup: false
    orchestrationMode: 'Flexible'
    upgradePolicy: {
      mode: 'Manual'
    }
    scaleInPolicy: {
      rules: [
        'Default'
      ]
      forceDeletion: false
    }
    virtualMachineProfile: {
      osProfile: {
        computerNamePrefix: 'three-tie'
        adminUsername: 'azureuser'
        linuxConfiguration: {
          disablePasswordAuthentication: true
          ssh: {
            publicKeys: [
              {
                path: '/home/azureuser/.ssh/authorized_keys'
                keyData: 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDDdYjTIyWzzjtVeexzJkuq81voB7IOPoQE2yC1uP28f3RmCcVgJjHq0O+cQ5URNqyffwZi22NaOBYcqLECzrEMWBovFo2N0Sul2377UUyT29vx+R0H9jx1I2+SqpHSUMO2NjfTqBOVQf02fbyrJXBykz9mFRTbo+YrzylPpMk/2tQ2xeRZ95ZrbHTzkaVu/Zvsohxh1MLIHoqZHem6pmhVeN04Hw96gBkw6w58Fc3y4yLBg7JyhS2/ACIDzfEA5+ZP+ki6kpjFkn3EKIFbnaa7Kve38+oYzbd9v8iYfyCjRBcNQWNEoi/jETPMEChKxwXA4X5r162s6n9ct7iKk3HkTFTqwmo6D7I2Kd7XlD2AxyhSjTtKYTazUlmkRnMGo/FwLFML/5JT9qS39uU8trJl97sAWYUF2udSLa+eo298wd0JdHZDxHX9m6nGhjjbAzuIeZl65Rq5edI8d8v6eAx7W1WLeuHcD+7f+AxVqLBYIYCjLsJWO+kL38LrX8O3fS0= generated-by-azure'
              }
            ]
          }
          provisionVMAgent: true
          patchSettings: {
            patchMode: 'ImageDefault'
            assessmentMode: 'ImageDefault'
          }
        }
        secrets: []
        allowExtensionOperations: true
        requireGuestProvisionSignal: true
      }
      storageProfile: {
        osDisk: {
          osType: 'Linux'
          createOption: 'FromImage'
          caching: 'ReadWrite'
          managedDisk: {
            storageAccountType: 'Standard_LRS'
          }
          deleteOption: 'Delete'
          diskSizeGB: 30
        }
        imageReference: {
          publisher: 'canonical'
          offer: '0001-com-ubuntu-server-jammy'
          sku: '22_04-lts-arm64'
          version: 'latest'
        }
        diskControllerType: 'SCSI'
      }
      networkProfile: {
        networkApiVersion: '2020-11-01'
        networkInterfaceConfigurations: [
          {
            name: 'threetiervent-nic01'
            properties: {
              primary: true
              enableAcceleratedNetworking: false
              disableTcpStateTracking: false
              enableIPForwarding: false
              auxiliaryMode: 'None'
              auxiliarySku: 'None'
              deleteOption: 'Delete'
              ipConfigurations: [
                {
                  name: 'threetiervent-nic01-defaultIpConfiguration'
                  properties: {
                    privateIPAddressVersion: 'IPv4'
                    subnet: {
                      id: virtualNetworks_threetiervent_name_public_subnet.id
                    }
                    primary: true
                    applicationSecurityGroups: []
                    loadBalancerBackendAddressPools: [
                      {
                        id: loadBalancers_frontend_public_lb_name_front_backend_pool.id
                      }
                    ]
                    applicationGatewayBackendAddressPools: []
                  }
                }
              ]
              networkSecurityGroup: {
                id: networkSecurityGroups_basicNsgthreetiervent_nic01_name_resource.id
              }
              dnsSettings: {
                dnsServers: []
              }
            }
          }
        ]
      }
      extensionProfile: {
        extensions: []
      }
    }
    additionalCapabilities: {
      hibernationEnabled: false
    }
    platformFaultDomainCount: 1
    constrainedMaximumCapacity: false
  }
}

resource networkInterfaces_threetiervent_backend_nic01_827a97a6_name_resource 'Microsoft.Network/networkInterfaces@2024-07-01' = {
  name: networkInterfaces_threetiervent_backend_nic01_827a97a6_name
  location: 'eastus'
  tags: {
    fastpathenabled: 'True'
  }
  kind: 'Regular'
  properties: {
    ipConfigurations: [
      {
        name: 'threetiervent-backend-nic01-defaultIpConfiguration'
        id: '${networkInterfaces_threetiervent_backend_nic01_827a97a6_name_resource.id}/ipConfigurations/threetiervent-backend-nic01-defaultIpConfiguration'
        type: 'Microsoft.Network/networkInterfaces/ipConfigurations'
        properties: {
          privateIPAddress: '10.0.2.5'
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: virtualNetworks_threetiervent_name_private_subnet.id
          }
          primary: true
          privateIPAddressVersion: 'IPv4'
          loadBalancerBackendAddressPools: [
            {
              id: loadBalancers_backend_internal_lb_name_internal_lb_backendpool.id
            }
          ]
        }
      }
    ]
    dnsSettings: {
      dnsServers: []
    }
    enableAcceleratedNetworking: false
    enableIPForwarding: false
    disableTcpStateTracking: false
    networkSecurityGroup: {
      id: networkSecurityGroups_private_nsg_name_resource.id
    }
    nicType: 'Standard'
    auxiliaryMode: 'None'
    auxiliarySku: 'None'
  }
}

resource networkInterfaces_threetiervent_nic01_8e0bbc6a_name_resource 'Microsoft.Network/networkInterfaces@2024-07-01' = {
  name: networkInterfaces_threetiervent_nic01_8e0bbc6a_name
  location: 'eastus'
  tags: {
    fastpathenabled: 'True'
  }
  kind: 'Regular'
  properties: {
    ipConfigurations: [
      {
        name: 'threetiervent-nic01-defaultIpConfiguration'
        id: '${networkInterfaces_threetiervent_nic01_8e0bbc6a_name_resource.id}/ipConfigurations/threetiervent-nic01-defaultIpConfiguration'
        type: 'Microsoft.Network/networkInterfaces/ipConfigurations'
        properties: {
          privateIPAddress: '10.0.1.4'
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: virtualNetworks_threetiervent_name_public_subnet.id
          }
          primary: true
          privateIPAddressVersion: 'IPv4'
          loadBalancerBackendAddressPools: [
            {
              id: loadBalancers_frontend_public_lb_name_front_backend_pool.id
            }
          ]
        }
      }
    ]
    dnsSettings: {
      dnsServers: []
    }
    enableAcceleratedNetworking: false
    enableIPForwarding: false
    disableTcpStateTracking: false
    networkSecurityGroup: {
      id: networkSecurityGroups_public_nsg_name_resource.id
    }
    nicType: 'Standard'
    auxiliaryMode: 'None'
    auxiliarySku: 'None'
  }
}

resource virtualNetworks_threetiervent_name_resource 'Microsoft.Network/virtualNetworks@2024-07-01' = {
  name: virtualNetworks_threetiervent_name
  location: 'eastus'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    encryption: {
      enabled: false
      enforcement: 'AllowUnencrypted'
    }
    privateEndpointVNetPolicies: 'Disabled'
    subnets: [
      {
        name: 'public-subnet'
        id: virtualNetworks_threetiervent_name_public_subnet.id
        properties: {
          addressPrefixes: [
            '10.0.1.0/24'
          ]
          networkSecurityGroup: {
            id: networkSecurityGroups_public_nsg_name_resource.id
          }
          delegations: []
          privateEndpointNetworkPolicies: 'Disabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
        type: 'Microsoft.Network/virtualNetworks/subnets'
      }
      {
        name: 'private-subnet'
        id: virtualNetworks_threetiervent_name_private_subnet.id
        properties: {
          addressPrefixes: [
            '10.0.2.0/24'
          ]
          networkSecurityGroup: {
            id: networkSecurityGroups_private_nsg_name_resource.id
          }
          delegations: []
          privateEndpointNetworkPolicies: 'Disabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
          defaultOutboundAccess: false
        }
        type: 'Microsoft.Network/virtualNetworks/subnets'
      }
      {
        name: 'db-subnet'
        id: virtualNetworks_threetiervent_name_db_subnet.id
        properties: {
          addressPrefixes: [
            '10.0.3.0/24'
          ]
          networkSecurityGroup: {
            id: networkSecurityGroups_db_nsg_name_resource.id
          }
          delegations: []
          privateEndpointNetworkPolicies: 'NetworkSecurityGroupEnabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
        type: 'Microsoft.Network/virtualNetworks/subnets'
      }
    ]
    virtualNetworkPeerings: []
    enableDdosProtection: false
  }
}
