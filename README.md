# Azure Infrastructure Operations Project: Deploying a scalable IaaS web server in Azure

### Introduction
For this project, you will write a Packer template and a Terraform template to deploy a customizable, scalable web server in Azure.

### Getting Started
1. Deploy a policy that ensures all indexed resources in your subscription have tags and deny deployment if they do not.

2. Create a reusable Linux image with the packer script included in the project

3. Create, update and destroy your infrastructure with the Terraform template provided 

### Dependencies
1. Create an [Azure Account](https://portal.azure.com) 
2. Install the [Azure command line interface](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
3. Install [Packer](https://www.packer.io/downloads)
4. Install [Terraform](https://www.terraform.io/downloads.html)

### Instructions
Before you run your packer script, make sure you:
1. Define your client_id, client_secret, and subscription id
2. In the builders section, make sure you specify Umbuntu 18.04-LTS SKU as your base image
3. Ensure the image you specify for Packer is the same specified in your Terraform template

Before you run your Terraform script, ensure the following steps have been done:
1. Create a resource group
2. Create a virtual network and a subnet of the virtual network
3. Create a Network security group. Ensure you allow access from vms on the same network and deny access from the internet
4. Create a Netwoork interface
5. Create a public IP
6. Create a Load Balancer. You will need to create a backend address pool and address pool association for the network interface and load balancer
7. Create a Virtual Machine availability set
8. Create virtual machines. make sure you use the images you deployed using packer
9. create mangaged disks for your virtual machine
10.Ensure number of virtual machines in the cluster can be configured in your variables file

### How to customize the var.tf file
make sure you allow the number of virtual machines to be configurable in var.tf file to simplify deployment
you can also define important variables in var.tf file like:
1. Resource group name
2. location
3. vm size and
4. vm count


### Output
At the end of this exercise, you should get result similar to the screen shot below
![output](https://github.com/davydace/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/Output.png?raw=true)
