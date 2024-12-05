#!/bin/bash
subfinder -up

readarray -t lines < "/home/User/Desktop/GCP-Genie/resources/targets.txt"

for line in "${lines[@]}"; do
    ~/go/bin/subfinder -provider-config /"$HOME"/.config/subfinder/provider-config.yaml -d "$line" -o /home/User/Desktop/GCP-Genie/resources/outputs/target_list_subdomains.txt
done
