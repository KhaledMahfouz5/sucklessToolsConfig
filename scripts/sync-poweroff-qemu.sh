#!/bin/bash

# Check if the VM is running
while true; do
    if ! doas /usr/bin/virsh list --all | grep -q "running"; then
        echo "The VM with UUID $VM_UUID is powered off."
        # Run doas to switch to root user
        doas /sbin/poweroff
    else
        echo "The VM with UUID $VM_UUID is already running."
        sleep 1
    fi
done
