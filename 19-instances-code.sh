#!/bin/bash
#we dont get public ip immediately so wait for sometime or query seperately to get pub.ip
aws ec2 run-instances --image-id ami-09c813fb71547fc4f --instance-type t3.micro --security-group-ids sg-08465db66b958e1af --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=test}]'
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-09c813fb71547fc4f",
            "InstanceId": "i-0cf7311b1735299dc",
            "InstanceType": "t3.micro",
            "LaunchTime": "2025-11-28T10:05:15+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-1f",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-78-140.ec2.internal",
            "PrivateIpAddress": "172.31.78.140",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-0a23af5b3aaa7e489",
            "VpcId": "vpc-036a0501e5bd2b1bf",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "33b38cee-1786-4b9b-b34a-a81a1154753c",
            "EbsOptimized": false,
            "EnaSupport": true,
            "Hypervisor": "xen",
            "NetworkInterfaces": [
                {
                    "Attachment": {
                        "AttachTime": "2025-11-28T10:05:15+00:00",
                        "AttachmentId": "eni-attach-0b6e44d9098ee762c",
                        "DeleteOnTermination": true,
                        "DeviceIndex": 0,
                        "Status": "attaching",
                        "NetworkCardIndex": 0
                    },
                    "Description": "",
                    "Groups": [
                        {
                            "GroupName": "allow-all",
                            "GroupId": "sg-08465db66b958e1af"
                        }
                    ],
                    "Ipv6Addresses": [],
                    "MacAddress": "16:ff:fd:ec:7b:7f",
                    "NetworkInterfaceId": "eni-088fe13e0263d700f",
                    "OwnerId": "466531995545",
                    "PrivateDnsName": "ip-172-31-78-140.ec2.internal",
                    "PrivateIpAddress": "172.31.78.140",
                    "PrivateIpAddresses": [
                        {
                            "Primary": true,
                            "PrivateDnsName": "ip-172-31-78-140.ec2.internal",
                            "PrivateIpAddress": "172.31.78.140"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Status": "in-use",
                    "SubnetId": "subnet-0a23af5b3aaa7e489",
                    "VpcId": "vpc-036a0501e5bd2b1bf",
                    "InterfaceType": "interface"
                }
            ],
            "RootDeviceName": "/dev/sda1",
            "RootDeviceType": "ebs",
            "SecurityGroups": [
                {
                    "GroupName": "allow-all",
                    "GroupId": "sg-08465db66b958e1af"
                }
            ],
            "SourceDestCheck": true,
            "StateReason": {
                "Code": "pending",
                "Message": "pending"
            },
            "Tags": [
                {
                    "Key": "Name",
                    "Value": "test"
                }
            ],
            "VirtualizationType": "hvm",
            "CpuOptions": {
                "CoreCount": 1,
                "ThreadsPerCore": 2
            },
            "CapacityReservationSpecification": {
                "CapacityReservationPreference": "open"
            },
            "MetadataOptions": {
                "State": "pending",
                "HttpTokens": "optional",
                "HttpPutResponseHopLimit": 1,
                "HttpEndpoint": "enabled",
                "HttpProtocolIpv6": "disabled",
                "InstanceMetadataTags": "disabled"
            },
            "EnclaveOptions": {
                "Enabled": false
            },
            "BootMode": "uefi-preferred",
            "PrivateDnsNameOptions": {
                "HostnameType": "ip-name",
                "EnableResourceNameDnsARecord": false,
                "EnableResourceNameDnsAAAARecord": false
            },
            "MaintenanceOptions": {
                "AutoRecovery": "default"
            },
            "CurrentInstanceBootMode": "uefi"
        }
    ],
    "OwnerId": "466531995545",
    "ReservationId": "r-0b6874509a9a080fd"
}
