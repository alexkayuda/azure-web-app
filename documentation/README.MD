# Steps Taken

## Azure CLI Installation and $PROFILE set-up for Windows

[Install Azure CLI on Windows](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli)

##

### Step 1: Create Service Principle and

```
az ad sp create-for-rbac --name AzureWebAppServicePrincipalName --role Contributor --scopes /subscriptions/<subscription-id>
```

### Step 2: Create RG, Storage Account, and Storage Account Container to store Terraform State

```
# Create Resource Group
az group create -n tfstates -l westus2

# Create Storage Account
az storage account create -n aktfstateaccount -g tfstates -l westus2 --sku Standard_LRS

# Create Storage Account Container
az storage container create -n tfstate --account-name aktfstateaccount
```

### Step 3: GitHub Actons

```
# Create GitHub Actions Workflows
# Checkout out .github/workflows for more details
```

### Step 4: Terraform Defnitions

```
# All Terraform files can be found here:
# terraform/development and terraform/modules
```

### Step 5: [TerraScan - Perfrorm static analysys](https://github.com/tenable/terrascan)

```
# Terrascan is a static code analyzer for Infrastructure as Code. Terrascan allows you to:
#   * Seamlessly scan infrastructure as code for misconfigurations.
#   * Monitor provisioned cloud infrastructure for configuration changes that introduce posture drift, and enables reverting to a secure posture.
#   * Detect security vulnerabilities and compliance violations.
#   * Mitigate risks before provisioning cloud native infrastructure.
#   * Offers flexibility to run locally or integrate with your CI\CD.
```

<br>

# Links

[GitHub Working with advanced formatting](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting)
