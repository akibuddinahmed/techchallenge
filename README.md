# Prerequisites 

Follow this MS article to set ansible Azure module in your VM- https://docs.microsoft.com/en-us/azure/developer/ansible/install-on-linux-vm?tabs=azure-cli#file-credentials 

- To setup Azure Service Principle using Azure CLI use the below commands- 
  `az ad sp create-for-rbac --name <ServicePrincipalName>`
  These details are required to define the Ansible environment variables.

- Setup the Service Princle to have Owner Permission in the Azure Subscription. 


## Run the Ansible script 

### Key Criteria

