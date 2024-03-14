vkrg = {
  rg = {
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