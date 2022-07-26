provider "aws" {
    region = "us-east-1"
}

resource "aws_iam_user" "my_user" {
    name = "TJ"
}

resource "aws_iam_policy" "custom_policy" {
    name = "GlacierEFSEC2"

    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "ec2:DeleteManagedPrefixList",
                "ec2:AuthorizeSecurityGroupIngress",
                "ec2:ReplaceRouteTableAssociation",
                "ec2:ModifyManagedPrefixList",
                "ec2:DeleteVpcEndpoints",
                "ec2:ResetInstanceAttribute",
                "ec2:CreateIpamPool",
                "ec2:RejectTransitGatewayMulticastDomainAssociations",
                "ec2:ResetEbsDefaultKmsKeyId",
                "ec2:AttachInternetGateway",
                "ec2:ReportInstanceStatus",
                "ec2:ModifyVpnConnectionOptions",
                "ec2:ReleaseIpamPoolAllocation",
                "ec2:DeleteVpnGateway",
                "ec2:CreateRoute",
                "elasticfilesystem:ClientMount",
                "ec2:CreateCoipPoolPermission",
                "ec2:DeleteNetworkInsightsAnalysis",
                "glacier:PurchaseProvisionedCapacity",
                "ec2:UnassignPrivateIpAddresses",
                "ec2:DisableImageDeprecation",
                "ec2:CancelExportTask",
                "ec2:DeleteTransitGatewayPeeringAttachment",
                "ec2:ImportKeyPair",
                "ec2:CancelCapacityReservationFleets",
                "ec2:AssociateClientVpnTargetNetwork",
                "ec2:StopInstances",
                "ec2:CreateVolume",
                "ec2:ReplaceNetworkAclAssociation",
                "ec2:CreateNetworkInsightsAccessScope",
                "ec2:CreateVpcEndpointServiceConfiguration",
                "ec2:CreateNetworkInterface",
                "ec2:CancelSpotInstanceRequests",
                "ec2:CreateTransitGatewayRoute",
                "ec2:CreateIpamScope",
                "ec2:CreateTransitGatewayVpcAttachment",
                "ec2:EnableImageDeprecation",
                "glacier:SetVaultNotifications",
                "ec2:EnableIpamOrganizationAdminAccount",
                "glacier:CompleteMultipartUpload",
                "ec2:ModifyInstanceMaintenanceOptions",
                "ec2:DeleteDhcpOptions",
                "ec2:DeleteNatGateway",
                "ec2:CancelCapacityReservation",
                "ec2:EnableTransitGatewayRouteTablePropagation",
                "glacier:ListVaults",
                "ec2:ModifyVpcEndpoint",
                "ec2:DeleteQueuedReservedInstances",
                "ec2:ModifyInstanceCapacityReservationAttributes",
                "ec2:CreatePublicIpv4Pool",
                "ec2:CreateVpnConnection",
                "ec2:DeleteSpotDatafeedSubscription",
                "ec2:ImportVolume",
                "ec2:DeleteTransitGatewayPrefixListReference",
                "ec2:MoveAddressToVpc",
                "ec2:ModifyFleet",
                "ec2:RunScheduledInstances",
                "ec2:ModifyIdentityIdFormat",
                "ec2:CreateVpc",
                "ec2:RequestSpotFleet",
                "ec2:WithdrawByoipCidr",
                "ec2:CreateSubnetCidrReservation",
                "ec2:DeleteIpam",
                "ec2:ReleaseHosts",
                "ec2:DeleteTransitGatewayMulticastDomain",
                "ec2:ModifyIpamPool",
                "ec2:ModifySubnetAttribute",
                "ec2:DeleteNetworkInsightsPath",
                "ec2:CreateSnapshot",
                "ec2:DeleteLaunchTemplateVersions",
                "ec2:DeleteNetworkAcl",
                "ec2:ModifyReservedInstances",
                "ec2:ReleaseAddress",
                "ec2:ModifyInstanceMetadataOptions",
                "ec2:AssociateDhcpOptions",
                "ec2:ModifyInstancePlacement",
                "ec2:CreateTrafficMirrorTarget",
                "ec2:ModifyTrafficMirrorFilterRule",
                "ec2:CreateClientVpnRoute",
                "ec2:AttachVpnGateway",
                "ec2:CreateLocalGatewayRoute",
                "ec2:SendSpotInstanceInterruptions",
                "ec2:ProvisionPublicIpv4PoolCidr",
                "ec2:ProvisionByoipCidr",
                "ec2:AssociateTransitGatewayMulticastDomain",
                "ec2:CreateVpnConnectionRoute",
                "ec2:DisableSerialConsoleAccess",
                "ec2:DeprovisionIpamPoolCidr",
                "ec2:DeleteIpamScope",
                "ec2:ModifyVpnTunnelOptions",
                "ec2:DeleteVpcEndpointConnectionNotifications",
                "ec2:RestoreAddressToClassic",
                "ec2:DeleteCustomerGateway",
                "ec2:DeleteClientVpnRoute",
                "ec2:EnableVgwRoutePropagation",
                "ec2:ModifyVpcTenancy",
                "ec2:ApplySecurityGroupsToClientVpnTargetNetwork",
                "ec2:ConfirmProductInstance",
                "elasticfilesystem:DescribeMountTargetSecurityGroups",
                "elasticfilesystem:DescribeBackupPolicy",
                "ec2:DeleteSubnet",
                "ec2:EnableEbsEncryptionByDefault",
                "ec2:CreateImage",
                "ec2:PurchaseHostReservation",
                "elasticfilesystem:DescribeAccountPreferences",
                "ec2:CopyImage",
                "ec2:AssociateVpcCidrBlock",
                "ec2:ReplaceIamInstanceProfileAssociation",
                "ec2:DisassociateEnclaveCertificateIamRole",
                "ec2:DisassociateVpcCidrBlock",
                "ec2:CreateTransitGatewayPrefixListReference",
                "ec2:ModifyTrafficMirrorSession",
                "ec2:DisableFastLaunch",
                "ec2:CreateCarrierGateway",
                "ec2:CreateTransitGatewayPeeringAttachment",
                "ec2:CreatePlacementGroup",
                "ec2:DeleteTransitGatewayVpcAttachment",
                "ec2:AssociateTrunkInterface",
                "ec2:ReplaceNetworkAclEntry",
                "ec2:ModifyVpcPeeringConnectionOptions",
                "ec2:CreateTransitGatewayMulticastDomain",
                "ec2:AssociateTransitGatewayRouteTable",
                "ec2:CreateTrafficMirrorFilterRule",
                "ec2:DeleteTrafficMirrorFilterRule",
                "ec2:ImportImage",
                "ec2:DeleteVpnConnection",
                "ec2:RejectVpcEndpointConnections",
                "ec2:ModifyEbsDefaultKmsKeyId",
                "ec2:ResetImageAttribute",
                "glacier:InitiateJob",
                "ec2:UpdateSecurityGroupRuleDescriptionsEgress",
                "ec2:SendDiagnosticInterrupt",
                "ec2:DisableTransitGatewayRouteTablePropagation",
                "ec2:CreateVpcEndpointConnectionNotification",
                "glacier:ListTagsForVault",
                "ec2:DeleteNetworkInterface",
                "ec2:DeletePublicIpv4Pool",
                "ec2:CreateFleet",
                "ec2:CreateCustomerGateway",
                "ec2:ModifyHosts",
                "ec2:CreateIpam",
                "ec2:DeleteTransitGatewayRouteTable",
                "ec2:DeleteTransitGatewayRoute",
                "ec2:ProvisionIpamPoolCidr",
                "ec2:DeleteLocalGatewayRoute",
                "ec2:DeleteVpc"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_policy_attachment" "policy_bind" {
    name = "attachment"
    users = [aws_iam_user.my_user.name]
    policy_arn = aws_iam_policy.custom_policy.arn
}
