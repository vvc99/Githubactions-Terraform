virtual_networks = {
  0 : {
    address_space       : [
      "10.1.0.0/16"
    ],
    name                : "ds-vnet-test"

    subnets = {
      0 : {
        name                 : "default",
        virtual_network_name : "ds-vnet-test",
        address_prefixes     : [
          "10.1.0.0/24"
        ]
      }
    }
  }
}

/*storage_accounts = {
  0 : {
    name :  "dsstoragetest02",
    account_tier :  "Standard",
    account_replication_type :  "LRS"
  }
}*/
