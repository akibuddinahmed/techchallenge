# This project is about automating Virtual machine deployment in Azure, followed by an application deployment. 

# Prerequisites

Follow this MS article to set ansible Azure module in your VM- https://docs.microsoft.com/en-us/azure/developer/ansible/install-on-linux-vm?tabs=azure-cli#file-credentials 

- To setup Azure Service Principle using Azure CLI use the below commands- 
  `az ad sp create-for-rbac --name <ServicePrincipalName>`
  These details are required to define the Ansible environment variables.

- Setup the Service Princle to have Owner Permission in the Azure Subscription. 


## Run the Ansible script 
- Fill in the var.yaml script with the details of the VM to be deployed. 
- Deploy.sh script contains the Database details which requires to be filled. 
- Run the main.yaml file 

### Key Criteria

