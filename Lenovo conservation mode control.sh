#!/usr/bin/bash
echo "Enable or disable Lenovo conservation mode? y for enable, n for disable"
read user_response

if [ $user_response == "y" ]
then
echo  -n  "1" | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode > /dev/null

elif [ $user_response == "n" ] 
then
echo  -n  "0" | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode > /dev/null

else
echo "Please respond with y or n!"
fi
