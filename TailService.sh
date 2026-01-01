#!/bin/bash

# Tailscale Service Manager - TailService.sh

# Version 1.0
# Copyright 2025 Jesse Zelesnikar
# Authored by: Jesse Zelesnikar aka VelvetNull

# Licensed under GNU Affero General Public License (AGPL v3.0 )
# This software is licensed for non-commercial use only. You may use, copy, and modify
# this software for personal, educational, or research purposes, provided that this
# notice remains intact. Commercial use is strictly prohibited without prior written
# permission from the copyright holder.

# Contact at velvetnull@proton.me (For commerical Licensing Inquiries)

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE, AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES, OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT, OR OTHERWISE,
# ARISING FROM, OUT OF, OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.

# This script manages the Tailscale Service Manager
# Prerequisites:
# Tailscale should be installed on the system prior to running
# You should be logged in and have your system registered with Tailcale prior to running
# If you need to login do the following:
#	sudo tailscale up, Follow instructions to login with link provided
#	Run "sudo tailscale set --operator=<username>" . This will the user specified to operate tailscale.

# Variables
COUNT=1
# Application Start
clear
while [ $COUNT == 1 ]; do
# Application Menu
	echo "Tailscale Service Manager"
	echo "--------------------------------------------------------------------"
	echo "Choose From the Following Options"
	echo "1 = Check the status of the Tailscale Service"
	echo "2 = Start Tailscale"
	echo "3 = Use Thor Exit Node for Thor (Service needs to be started first)"
	echo "4 = Stop the Tailscale Service"
	echo "5 = Exit Tailscale Service Manager"
	echo "--------------------------------------------------------------------"
	echo -n "What option do you choose? "
	read ANSWER
# If statement to run the option selected
	if [[ $ANSWER == 1 ]]; then
		echo "Checking the status of the Tailscale Service"
		sudo systemctl status tailscaled.service
	elif [[ $ANSWER == 2 ]]; then
		echo "Starting the Tailscale Service"
		sudo systemctl start tailscaled.service
		sleep 5
		tailscale status
	elif [[ $ANSWER == 3 ]]; then
		echo "Setting Thor as an exit node"
		#sudo tailscale set --exit-node=<Exit Node IP Here>
		sleep 5
		tailscale status
	elif [[ $ANSWER == 4 ]]; then
		echo "Stopping the Tailscale Service"
		sudo systemctl stop tailscaled.service
		sleep 5
		sudo systemctl status tailscaled.service
	elif [[ $ANSWER == 5 ]]; then
		echo "Exiting the Tail Scale Service Manager"
		let COUNT=COUNT+1
		clear
		exit 0
	else
		echo "Invalid Option Chosen"
		echo "Please select a valid option from the list"
	fi
# Stop at the end of the loop to pause before going back up
	read -p "Press any key to continue"
	clear
done
