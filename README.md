# Terraform Modules for Git Workflow.


Goals
1. Seperate state for all feature branches (dev) and master (prod) - allows multipile feauture builds (in parallel) and a seperate production build. 
1. No workspaces, no grunt, no shared state between dev/prod - allows seperate accounts.
1. Re-use modules and resources DRY



[Forked from here](https://learn.hashicorp.com/tutorials/terraform/module-create?in=terraform/modules), loosely based on [this](https://learn.hashicorp.com/tutorials/terraform/organize-configuration) 
