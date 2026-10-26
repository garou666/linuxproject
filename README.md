# Automated Network Port Scanner (Bash)

## Project Overview
This is a lightweight, dependency-free TCP port scanner written entirely in Bash for CentOS Linux. It performs network reconnaissance by attempting to connect to a range of ports on a target IP address to identify which services are running. 

It uses Bash's built-in `/dev/tcp` pseudo-device and the `timeout` command to test connections efficiently without relying on external tools like Nmap.

## Features
1. Zero Dependencies: Does not rely on external tools or package installations.
2. Custom Port Ranges: Accepts target IP, start port, and end port as arguments.
3. Timeout Handling: Prevents the script from hanging indefinitely on closed or filtered ports by enforcing a 1-second timeout per connection attempt.

## How to Run
1. Clone the repository:
   git clone https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git

2. Make the script executable:
   chmod +x portscanner.sh

3. Run the scanner (Example: scan localhost from port 1 to 100):
   ./portscanner.sh 127.0.0.1 1 100

Note: For fast results, use 127.0.0.1. Scanning public websites may be slow due to firewalls silently dropping packets on closed ports.
