call azure account import AbonnementAzure.publishsettings
call azure vm delete -b -q coreos1
call azure vm delete -b -q coreos2
call azure vm delete -b -q coreos3
call azure service create --location "West Europe" mortgagecluster
call azure vm create --custom-data=.\cloud-config-master.yaml --vm-size=Large --ssh=2201 --ssh-cert=.\myCert.pem --no-ssh-password --vm-name=coreos1 --connect=mortgagecluster --location "West Europe" 2b171e93f07c4903bcad35bda10acf22__CoreOS-Stable-681.2.0 core
call azure vm create --custom-data=.\cloud-config.yaml --vm-size=Large --ssh=2202 --ssh-cert=.\myCert.pem --no-ssh-password --vm-name=coreos2 --connect=mortgagecluster --location "West Europe" 2b171e93f07c4903bcad35bda10acf22__CoreOS-Stable-681.2.0 core
call azure vm create --custom-data=.\cloud-config.yaml --vm-size=Large --ssh=2203 --ssh-cert=.\myCert.pem --no-ssh-password --vm-name=coreos3 --connect=mortgagecluster --location "West Europe" 2b171e93f07c4903bcad35bda10acf22__CoreOS-Stable-681.2.0 core
