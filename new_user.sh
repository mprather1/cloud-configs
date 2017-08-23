#!/bin/bash

groups=(mike sudo)

adduser --disabled-password --gecos "" mike

for group in "${groups[@]}"; do
  sudo adduser mike $group
done

printf "mike ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers