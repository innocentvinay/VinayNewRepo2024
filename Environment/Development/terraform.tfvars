vkrg = {
  rg1 = {
    name     = "Vinay-RG"
    location = "west us"
    tags = {
      created_by = "Vinay"
      managed_by = "Vinay"
    }
  }

}
vkvnet = {
  vnet2 = {
    vnetname      = "vinayvnet"
    location      = "west us"
    rgname        = "Vinay-RG"
    address_space = ["10.0.0.0/16"]
    tags = {
      managed_by = "vinay"
    }

  }

}
subnet = {
  sub1 = {
    subname          = "AzureBastionSubnet"
    rgname           = "Vinay-RG"
    vnetname         = "vinayvnet"
    address_prefixes = ["10.0.0.0/24"]
  }
}
nsg = {
  nsg1 = {
    nsgname  = "vinaynsg"
    location = "west us"
    rgname   = "Vinay-RG"


  }

}
security_rules = {
  security_rules1 = {
    name                       = "rule1"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  },
  security_rules2 = {
    name                       = "rule2"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }


}
pip = {
  pip1 = {
    pipname           = "vinay-pip"
    location          = "west us"
    rgname            = "Vinay-RG"
    allocation_method = "Static"
    sku               = "Standard"
  }
}
vksa = {
  sa1 = {
    saname                   = "vinaystorage12"
    rgname                   = "Vinay-RG"
    location                 = "west us"
    account_tier             = "Standard"
    account_replication_type = "GRS"
    tags = {
      environment = "staging"
    }
  }
}
vkconst = {
  vkconst1 = {
    conname               = "containerno1"
    saname                = "vinaystorage12"
    container_access_type = "private"
  }
}
bastion = {
  bastion1 = {
    bastionname = "bastionhost"
    location    = "west us"
    rgname      = "Vinay-RG"
    pipname     = "vinay-pip"
    subname     = "AzureBastionSubnet"
    vnetname    = "vinayvnet"
  }




}
keyvault = {
  keyvault1 = {
    keyname = "Azurekeyvault"
    rgname       = "Vinay-RG"
    location     = "west us"
     

  }
}

