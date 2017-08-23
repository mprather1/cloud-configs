#!/bin/bash

sudo fallocate -l 4G /swapfile && \

sudo chmod 600 /swapfile && \
sudo mkswap /swapfile && \
sudo swapon /swapfile && \

printf "\n/swapfile   none    swap    sw    0   0\n" >> /etc/fstab
