# mortgagecluster #
Definition of a CoreOS + Fleet cluster for the mortgage sample application

This is the companion project for the book on Docker at Editions ENI. It explains how to create a cluster of machines and deploy a microservice architecture on Docker containers.

## Cluster instanciation ##

1. Retrieve Azure .publishsettings file, as explained in the book, and drop this file in the 
`cluster` directory
2. Call [https://discovery.etcd.io/new](https://discovery.etcd.io/new) to receive a cluster identifier
3. Set this identifier in the designated location, both in `cloud-config.yaml` and `cloud-config-master.yaml`
4. Modify information in `create-cluster.bat`according with your preferences. In particular, modify the service name if it is already used by someone else, and check the right version for the CoreOS image.
5. Execute this file
6. Open 8080->8080 and 5004->5004 endpoint on the master machine in Azure Portal

## Services installation ##

1. Install Fleet client
2. Enter your credentials in `notifier.service`
3. If necessary, change the value for `URLOptimizerJobs`environment variable in `calculator@.service`
4. Run `submit.sh`
5. Verify with `fleetctl list-unit-files` that the unit files are present
6. Run `start.sh`
7. Let some time for the service to download the images and start
8. Check everything is running by calling `fleetctl list-units`

## Running the application ##

Connect to `http://mortgagecluster.cloudapp.net:8080` or the corresponding URL if you changed the service name