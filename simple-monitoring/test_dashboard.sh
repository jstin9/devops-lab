#!/bin/bash

echo "--- Stress Test Started ---"

echo "Allocating 1GB RAM..."
dd if=/dev/zero of=/dev/shm/test_ram_load bs=1M count=1000
echo "Loaded 1GB RAM!"

echo "Stressing CPU and holding RAM for 10 seconds..."
timeout 10s md5sum /dev/zero &

sleep 10

echo "Cleaning up RAM..."
rm -f /dev/shm/test_ram_load

echo "Stressing Network & Disk (downloading 100Mb file...)"
curl -o /tmp/test100m.bin https://fsn1-speed.hetzner.com/100MB.bin

echo "Deleting temporary file..."
rm /tmp/test100m.bin

echo "--- Stress Test Complete ---"
