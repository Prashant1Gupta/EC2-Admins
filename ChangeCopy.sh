#!/bin/bash

STATUS=$(aws ec2 describe-instances --instance-id i-067fc32b06f299cce | grep "stopped" | cut -c34-40)
ID=i-067fc32b06f299cce

if [ $STATUS = "stopped" ]
then
echo "Your instance is stopped...starting now..."
aws ec2 start-instances --instance-ids $ID
else
echo "Your instance is running"
fi

