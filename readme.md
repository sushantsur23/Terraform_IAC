# Repository for terraform basic
```
https://www.terraform.io/downloads
Download the tool from the above link and install the .exe file
Another way is to install it with chocolatey.

Open powershell in admin mode and tyope the belpow command 

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install terraform

```

### Terraform commands

Try to remove the sample file and apply the commands to check how they work out.

##### Main commands:
```
  init          Prepare your working directory for other commands
  validate      Check whether the configuration is valid
  plan          Show changes required by the current configuration
  apply         Create or update infrastructure
  destroy       Destroy previously-created infrastructure
```

##### All other commands:
```
  console       Try Terraform expressions at an interactive command prompt
  fmt           Reformat your configuration in the standard style
  force-unlock  Release a stuck lock on the current workspace
  get           Install or upgrade remote Terraform modules
  graph         Generate a Graphviz graph of the steps in an operation
  import        Associate existing infrastructure with a Terraform resource
  login         Obtain and save credentials for a remote host
  logout        Remove locally-stored credentials for a remote host
  output        Show output values from your root module
  providers     Show the providers required for this configuration
  refresh       Update the state to match remote systems
  show          Show the current state or a saved plan
  state         Advanced state management
  taint         Mark a resource instance as not fully functional
  untaint       Remove the 'tainted' state from a resource instance
  version       Show the current Terraform version
  workspace     Workspace management
```

```
terraform init
terraform plan
terraform apply
terraform destroy
terraform show > sushant.json


Once destroy command is given the terraform.tfstate is created
terraform.tfstate.backup is always holding the older credentials
```

### Creating tf.vars files 

Terraform.tfvars are is used to set the actual values to the variables template. Here we can pass the value of a variable.

create a terraform.tfvars file or use terraform.auto.tfvars autoomatically.


### Terraform state file

Terraform state file is used to track the changes to the state.

```
Commands t be used here are listed below :-
terraform state list 
terraform state list resource_reference
terraform state mv
terraform state rm
terraform state pull
terraform state push
``` 
Terraform relies on plugins called 'providers' to interact with cloud providers. Saas providers and other APIs. It has more than 100+ providers. All configuration files are written in Hashi corp configuration language.

### Launch EC2 instance with Terraform

Refer the below link as reference for more information
```
https://registry.terraform.io/providers/hashicorp/aws/latest/docs
```

Different kind of examples temp[lates are added to thhis repo for reference, hope this helps others.


