Deploy Moodle Application using Terraform and Ansible

Problem statement :
Install Terraform in a VM 
Configure an highly available infrastructure in AWS. Create VPC with 2 public and 2 private subnets. 
Configure all the necessary components  required for the VPC using terraform . 
Create Ec2 instance using terraform in public subnet and setup moodle application using ansible. 
The Playbook execution has to be triggered by terraform

Required Terraform files:

key.tf -> This file contains the name of key

secgrp.tf -> This file configures security group for instance

vars.tf -> This file contains varibles for public key and AMI ids

vpc.tf -> This file is used to create vpc, subnet, internet gateway, route table

provider.tf -> This file contains the aws region variable

instance.tf -> This file will create one instance in public subnet and one instance in private subnet

nat.tf -> This file will configure NAT gateway

moodle.conf -> This file contains configuration of moodle application

moodle.sh -> This file contains shell script to assign permissions and run playbook

ansible.sh -> This file is used to install apache2 and ansible

moodle.tf -> This file will execute moodle.sh, moodle.conf, moodle.yaml in our remote machine

moodle.yaml -> This file ia the ansible playbook to deploy moodle application.


