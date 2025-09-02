rg = {
    rg1 = {
        name = "swift"
        location = "west india"
    }
}

vnet = {
    vnet1 = {
        name = "swift-vnet1"
        rgkey = "rg1"
        address_space = ["172.168.0.0/16"]
    }

    vnet2 = {
        name = "swift-vnet2"
        rgkey = "rg1"
        address_space = ["192.168.0.0/16"]
    }

    vnet3 = {
        name = "swift-bastion-vnet"
        rgkey = "rg1"
        address_space = ["10.0.0.0/16"]
    }
}

subnet = {
    subnet1 = {
        name = "swift-frontend-subnet"
        rgkey = "rg1"
        vnetkey = "vnet1"
        address_prefixes = ["172.168.1.0/24"]
    }

    subnet2 = {
        name = "swift-backend-subnet"
        rgkey = "rg1"
        vnetkey = "vnet2"
        address_prefixes = ["192.168.1.0/24"]

    }

    subnet3 = {
        name = "AzureBastionSubnet"
        rgkey = "rg1"
        vnetkey = "vnet3"
        address_prefixes = ["10.0.0.0/24"]
    }
}