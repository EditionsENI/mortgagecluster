#!/bin/bash
fleetctl submit optimizer.service
fleetctl submit reporting.service
fleetctl submit notifier.service
fleetctl submit database.service
fleetctl submit portal.service
fleetctl submit calculator@.service
