# This project is about automating Virtual machine deployment in Azure, followed by an application deployment. 

# Prerequisites

Follow this MS article to set ansible Azure module in your VM- https://docs.microsoft.com/en-us/azure/developer/ansible/install-on-linux-vm?tabs=azure-cli#file-credentials 

- To setup Azure Service Principle using Azure CLI use the below commands- 
  `az ad sp create-for-rbac --name <ServicePrincipalName>`
  These details are required to define the Ansible environment variables.

- Setup the Service Princple to have Owner Permission in the Azure Subscription. 


## Run the Ansible script 
- Fill in the var.yaml script with the details of the VM to be deployed. 
- Deploy.sh script contains the Database details which requires to be filled. 
- Run the main.yaml file `ansible-playbook main.yaml` to deploy the Azure VM. 
- Update the public IP of the deployed VM in /etc/ansible/hosts file here- [remoteVM]
- Run the Application deployment yaml `ansible-playbook deploy_app.yaml`

### Key Criteria
- This ansible codes is tested against ansible docker container.
- If you are setting up ansible in your VM for the first time, install the following modules-
`   apt-get update -y; \
    apt-get install -y sshpass vim git gcc libffi-dev python3.9 python3.9-distutils libkrb5-dev; \
    apt-get install -y python3-pip; \
    apt-get install -y wget; \
    apt-get install -y curl unzip jq nano; \
    pip3 install --upgrade pip; \
    pip3 install --upgrade virtualenv; \
    pip3 install setuptools; \
    pip3 install pywinrm[kerberos]; \
    pip3 install pywinrm; \
    pip3 install jmspath; \
    pip3 install requests; \
    pip3 install ansible; \ `
- 

