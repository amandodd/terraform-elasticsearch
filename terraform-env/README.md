# Terraform  Environment
--------------

```
terraform-env/
├───dev/              
|   ├───main.tf
|   ├───vars.tf
|   ├───terraform.tfstate
└───README.md
```

--------------
## How To . .

### Deploy Infrastructure to AWS
```bash
$ terraform get
$ terraform plan
$ terraform apply
```

### Tear Down Infrastructure from AWS
```bash
$ terraform destroy
```

### Troubleshooting
* Ensure you are using Terraform v0.11.3 when deploying
* You may be given an initialization error before using 'terraform plan'; 'terraform init' will do the trick
