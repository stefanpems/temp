#!/bin/bash

# Loop through numbers 1 to 16
for N in {1..16}
do
  # Define the filename
  FILE="y${N}.pcap"
  
  # Download the file
  curl -L -O "https://github.com/stefanpems/temp/raw/refs/heads/main/${FILE}"
  
  # Replay the file
  sudo tcpreplay -i eth1 -M5 "./${FILE}"
done