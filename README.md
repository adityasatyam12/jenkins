
🧪 Lab: Fundamentals of Terraform with Jenkins – Terraform CI/CD and Remote Backend (Azure)
🎯 Objective
By completing this lab, learners will:

Understand how Terraform integrates with Jenkins for automated infrastructure deployment.
Learn how to configure Terraform remote backend using Azure Storage.
Create a Jenkins pipeline that executes terraform init, plan, and apply.
Explore how to handle credentials, environment variables, and approvals in CI/CD workflows.
Understand how CI/CD + IaC improves reliability, scalability, and governance.
🧭 Scenario
You are a DevOps Engineer in a cloud team managing Azure infrastructure using Terraform.

Your company wants to automate Terraform deployments through Jenkins, ensuring:

All changes go through version control (Git).
Jenkins pipelines handle provisioning automatically.
Terraform state is stored in Azure remote backend for team collaboration.
You will build a CI/CD pipeline in Jenkins that provisions a Resource Group and Virtual Network on Azure via Terraform.



🧰 Tools and Services Used
Terraform – Infrastructure as Code tool.
Azure CLI & Service Principal – For authentication.
Azure Storage Account – For Terraform remote state backend.
Jenkins – CI/CD automation platform.
Git – Version control for Terraform code.
⚙️ Pre-Lab Setup
Step 1: Install Required Tools
Ensure the following are installed:

Terraform
Jenkins (latest LTS)
Azure CLI
Git
