#! /bin/bash
# motd
# Changes the message of the day
# Should work on any Linux we use for CCDC
# Author: IJ
# Date: 1/22/2024

# The following variable can be changed to change the motd
new_motd = "***UNAUTHORIZED ACCESS TO THIS DEVICE IS PROHIBITED***"

# Backup the existing motd file
sudo cp /etc/motd /etc/motd.backup

# Write the new motd to the file
echo "$new_motd" | sudo tee /etc/motd > /dev/null

# Ensure new MOTD is in place
echo "Message of the Day has been updated to: "
cat /etc/motd
