## WPA/WPA2/WPA3 Hash Cracking Script using Hashcat 😼
This is a Bash script designed to automate the process of cracking WPA/WPA2/WPA3 PMKID or 4-way handshake hashes using a list of wordlists and Hashcat.
The script loops through a list of dictionaries, attempts to crack the hashes, and generates a report.
The script uses a list of dictionaries to attempt cracking with Hashcat (GPU-based, faster) or optionally Aircrack-ng (CPU-based, slower).
Reports are generated dinamically, timestamped for easy organization.

## How to Use ⚙️
### Prerequisites 
- **Hashcat**/**Aircrack-ng**: Ensure Hashcat is installed and properly configured for your system.
- **Wordlists**: Provide the paths to your dictionary files.
- **Hash File**: Ensure the input hash file is in .hc22000 format (e.g., generated from a WiFi PMKID or 4-way handshake using tools like hcxpcapngtool).

### Configuration 
1. update the dictionaries array with the paths to your wordlist files:
```sh
dictionaries=(
"/usr/share/wordlists/seclists/Passwords/Leaked-Databases/rockyou.txt"
"/my/path/hashes.com-hashkiller_io_2024-12_wordlist.txt"
"/my/path/crackstation.net_wordlist.txt"
)
```
_suggested sources: https://hashes.com/en/downloads, https://crackstation.net/crackstation-wordlist-password-cracking-dictionary.htm_

2. set the path to your input hash file:
```sh
input_hash="/Vodafone-WIFI-XXXXXX.hc22000"
```
3. customize the output directory for reports if needed:
```sh
output_reports="/WIFI_Cracking/Hashcat Reports/${file_name_input}_${date_format}.txt"
```
### Running the Script
```sh
chmod +x hashcat-multi-cracking.sh
./hashcat-multi-cracking.sh
```
## Disclaimer ⚠️
This script is intended for educational and authorized security testing purposes only. Unauthorized use against networks you do not own or have explicit permission to test is illegal and unethical. Always follow ethical hacking practices.





