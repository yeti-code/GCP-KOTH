#!/bin/bash
subfinder -up

readarray -t lines < "/home/joshb/Desktop/GCP-Genie/resources/targets.txt"

for line in "${lines[@]}"; do
    ~/go/bin/subfinder -provider-config /"$HOME"/.config/subfinder/provider-config.yaml -d "$line" -o /home/joshb/Desktop/GCP-Genie/resources/outputs/target_list_subdomains.txt
done