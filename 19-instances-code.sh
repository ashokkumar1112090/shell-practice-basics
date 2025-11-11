#!/bin/bash
#we dont get public ip immediately so wait for sometime or query seperately to get pub.ip
"Groups": [],   
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-09c813fb71547fc4f",
            "InstanceId": "i-0c3b7dd7a41d15281",
            "InstanceType": "t3.micro",
            "LaunchTime": "2025-11-11T11:09:51+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-1c",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-29-86.ec2.internal",
            "PrivateIpAddress": "172.31.29.86",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-04497a597c8ea65f1",
            "VpcId": "vpc-036a0501e5bd2b1bf",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "ffd1f507-66a6-4a97-a5c1-37333a63680c",
            "EbsOptimized": false,
            "EnaSupport": true,
            "Hypervisor": "xen",
            "NetworkInterfaces": [
                {
                    "Attachment": {
                        "AttachTime": "2025-11-11T11:09:51+00:00",
                        "AttachmentId": "eni-attach-0d6b0317bdcd522d3",
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
                    "MacAddress": "0a:ff:eb:e7:30:a9",
                    "NetworkInterfaceId": "eni-0cd517851a46d2824",
                    "OwnerId": "466531995545",
                    "PrivateDnsName": "ip-172-31-29-86.ec2.internal",
                    "PrivateIpAddress": "172.31.29.86",   
                    "PrivateIpAddresses": [
                        {
                            "Primary": true,
                            "PrivateDnsName": "ip-172-31-29-86.ec2.internal",
                            "PrivateIpAddress": "172.31.29.86"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Status": "in-use",
                    "SubnetId": "subnet-04497a597c8ea65f1",
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
    "ReservationId": "r-01316e7790011f0da"
}
