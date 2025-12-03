# mclaren-infra

McLaren Terraform infrastructure for deploying EC2 instances using HCP Terraform.

## Overview

This repository contains Terraform configuration to deploy EC2 instances using the published EC2 module from the TuneIt organization on HCP Terraform.

## Module Source

```hcl
source  = "app.terraform.io/TuneIt/ec2-module/aws"
version = "1.0.0"
```

## Usage

### Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| instance_name | Name of the EC2 instance | string | n/a | yes |
| os_type | Operating system type for the EC2 instance | string | "amazon-linux" | no |
| instance_type | EC2 instance type | string | "t2.micro" | no |
| tags | Tags to apply to the EC2 instance | map(string) | {} | no |

### Example

Create a `terraform.tfvars` file with your values:

```hcl
instance_name = "my-instance"
os_type       = "amazon-linux"
instance_type = "t2.micro"

tags = {
  Environment = "development"
  Project     = "mclaren"
}
```

### Outputs

| Name | Description |
|------|-------------|
| instance_id | ID of the EC2 instance |
| instance_public_ip | Public IP address of the EC2 instance |
| instance_private_ip | Private IP address of the EC2 instance |

## HCP Terraform Integration

This repository is designed to be integrated with HCP Terraform. Configure your workspace to point to this repository and set the required variables through the HCP Terraform UI or via API.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0 |
| aws | >= 4.0 |
