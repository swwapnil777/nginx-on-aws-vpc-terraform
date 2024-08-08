![diagram-export-8-8-2024-9_35_35-AM](https://github.com/user-attachments/assets/85ff5f51-1b32-4412-b16f-5d09e875be21)
Sure, here's the updated README file without the example `main.tf` section:

```markdown
# AWS VPC Setup with Terraform and NGINX Server

This repository contains Terraform configurations to set up an AWS VPC with public and private subnets. An NGINX server is hosted in the public subnet.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS account with appropriate permissions to create VPCs, subnets, gateways, route tables, security groups, and EC2 instances
- AWS CLI configured with your credentials

## Resources Created

- VPC with CIDR block `10.0.0.0/16`
- Public subnet with CIDR block `10.0.2.0/24`
- Private subnet with CIDR block `10.0.1.0/24`
- Internet Gateway
- Route tables for public and private subnets
- Route table associations
- Security group allowing HTTP and SSH access
- EC2 instance running NGINX in the public subnet

## Usage

1. Clone the repository:

   ```sh
   git clone https://github.com/YOUR_GITHUB_USERNAME/aws-vpc-terraform-nginx.git
   cd aws-vpc-terraform-nginx
   ```

2. Initialize Terraform:

   ```sh
   terraform init
   ```

3. Review the execution plan:

   ```sh
   terraform plan
   ```

4. Apply the configuration:

   ```sh
   terraform apply
   ```

   Type `yes` when prompted to confirm the operation.

5. Access the NGINX server:

   After the apply command completes, note the public IP address of the EC2 instance from the output. Open a web browser and navigate to this IP address to see the NGINX welcome page.

6. Destroy the infrastructure when no longer needed:

   ```sh
   terraform destroy
   ```

   Type `yes` when prompted to confirm the operation.

## Configuration Details

- **VPC:** A virtual private cloud with a CIDR block of `10.0.0.0/16`.
- **Public Subnet:** A subnet with a CIDR block of `10.0.2.0/24` that routes traffic to the Internet Gateway.
- **Private Subnet:** A subnet with a CIDR block of `10.0.1.0/24`.
- **Internet Gateway:** Allows instances in the public subnet to access the internet.
- **Route Tables:** Separate route tables for public and private subnets with appropriate routes configured.
- **Route Table Associations:** Associates the public subnet with the public route table and the private subnet with the private route table.
- **Security Group:** Allows HTTP (port 80) and SSH (port 22) access.
- **EC2 Instance:** An Amazon Linux 2 EC2 instance running NGINX in the public subnet.

## Terraform Configuration Files

- **main.tf:** Contains the primary configuration for the VPC, subnets, internet gateway, route tables, and EC2 instance.
- **ec2.tf:** Configuration for the EC2 instance, including user data to install and start NGINX.
- **vpc.tf:** Configuration for the VPC, public and private subnets, and internet gateway.
- **security_groups.tf:** Configuration for the security group that allows HTTP and SSH access.
- **providers.tf:** Specifies the provider (AWS) and the region.
- **output.tf:** Defines the output values of the configuration, such as the public IP address of the EC2 instance.
```

This README provides a comprehensive overview of the project, instructions for setting up the infrastructure, accessing the NGINX server, and details about the specific Terraform files in your repository.
