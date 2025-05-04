#!/bin/bash
# Output file
outfile="elenabaldaeva"

echo "=============================" >> "$outfile"
echo " Starred Commands Log Report" >> "$outfile"
echo " Run on: $(date)" >> "$outfile"
echo "=============================" >> "$outfile"
echo "" >> "$outfile"

echo "1. Date:" >> "$outfile"
date >> "$outfile"
echo -e "\n-----------------------------\n" >> "$outfile"

echo "2. Hostname:" >> "$outfile"
hostname >> "$outfile"
echo -e "\n-----------------------------\n" >> "$outfile"

echo "3. Architecture:" >> "$outfile"
arch >> "$outfile"
echo -e "\n-----------------------------\n" >> "$outfile"

echo "4. Full System Info:" >> "$outfile"
uname -a >> "$outfile"
echo -e "\n-----------------------------\n" >> "$outfile"

echo "5. System Uptime:" >> "$outfile"
uptime >> "$outfile"
echo -e "\n-----------------------------\n" >> "$outfile"

echo "6. Current User:" >> "$outfile"
whoami >> "$outfile"
echo -e "\n-----------------------------\n" >> "$outfile"

echo "7. Who is Logged In and What They're Doing:" >> "$outfile"
w >> "$outfile"
echo -e "\n-----------------------------\n" >> "$outfile"

echo "8. Top Processes (first 10 lines):" >> "$outfile"
top -b -n 1 | head -n 10 >> "$outfile"
echo -e "\n-----------------------------\n" >> "$outfile"

echo "9. Command History (last 10 commands):" >> "$outfile"
history | tail -n 10 >> "$outfile"
echo -e "\n=============================\n\n" >> "$outfile"
