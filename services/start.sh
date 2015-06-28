#!/bin/bash
fleetctl start optimizer.service
fleetctl start reporting.service
fleetctl start notifier.service
fleetctl start database.service
fleetctl start portal.service
fleetctl start calculator@{1..3}.service
