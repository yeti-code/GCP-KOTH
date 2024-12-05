#!/bin/bash
# This script takes a target list from a file and reads them line by line, running a custom subfinder command that queries for subdomains. Which will be the final list of potential targets for DNS subdomain takeover.
subfinder -up

readarray -t lines < "/home/User/Desktop/GCP-Genie/resources/targets.txt"

for line in "${lines[@]}"; do
    ~/go/bin/subfinder -provider-config /"$HOME"/.config/subfinder/provider-config.yaml -d "$line" -o /home/User/Desktop/GCP-Genie/resources/outputs/target_list_subdomains.txt
done
