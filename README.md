# Terraform {AWS}

> Hands-on With Terraform for managing AWS resources 


## About Terraform

- An immutable IAC.

### Configure AWS CLI 

`aws configure --profile archtaqi-1`

To verify;

`cat .aws/credentials`


### Terraform workspace

```
terraform init
# expect a warning, don't worry it's an idempotent operation
terraform workspace new dev 
terraform workspace select dev
terraform plan
```

Laravelapi.juandmegon.com