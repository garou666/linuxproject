#!/bin/bash

TARGET=${1:-"127.0.0.1"}
START_PORT=${2:-1}
END_PORT=${3:-100}

echo "=================================================="
echo " Automated Network Port Scanner (Bash) "
echo " Target : $TARGET "
echo " Port Range : $START_PORT to $END_PORT "
echo "=================================================="
echo "Scanning in progress... please wait..."

for ((port=$START_PORT; port<=$END_PORT; port++)); do
	timeout 1 bash -c "echo >/dev/tcp/$TARGET/$port" 2>/dev/null

	if [ $? -eq 0 ]; then
		echo "[+] Port $port is OPEN"
	fi
done

echo "=================================================="
echo " Scan Complete "
echo "=================================================="
