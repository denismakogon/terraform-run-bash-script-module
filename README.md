# A Terraform module for running bash scripts
Terraform module for running bash script with create and delete lifecycle stages.

## How to use it

```terraform
module "do_something" {
  source = "git@github.com:denismakogon/terraform-run-bash-script-module.git?ref=main"
  
  create_command = "echo 'creating something'"
  destroy_command = "echo 'destroying something'"
}
```
