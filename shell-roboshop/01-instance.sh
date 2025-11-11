#!/bin/bash
AMI-ID="ami-09c813fb71547fc4f"
SG_ID="sg-08465db66b958e1af"

for instance in $@
do
  INSTANCE_ID=$(aws ec2 run-instances --image-id ami-09c813fb71547fc4f --instance-type t3.micro --security-group-ids sg-08465db66b958e1af --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$instance}]" --query 'Instances[0].PrivateIpAddress' --output text)

  #get private ip
  if [ $instance != "frontend" ]; then
  IP=$(aws ec2 run-instances --image-id ami-09c813fb71547fc4f --instance-type t3.micro --security-group-ids sg-08465db66b958e1af --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Test}]' --query 'Instances[0].PrivateIpAddress' --output text)
else 
IP=$(aws ec2 run-instances --image-id ami-09c813fb71547fc4f --instance-type t3.micro --security-group-ids sg-08465db66b958e1af --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Test}]' --query 'Instances[0].PrivateIpAddress' --output text)
fi
  
done