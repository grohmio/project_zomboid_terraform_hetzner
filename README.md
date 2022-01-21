# project_zomboid_terraform_hetzner (work in progress)

## Setup
This steps are mandatory to create a gke cluster in a gcp project.

### Prerequisits
* terraform
* hetzner account
* hetzner api token

### Init
* config
```console
$ cp terraform.tfvars-sample terraform.tfvars
```
* replace `YOUR_HCLOUD_API_TOKEN` in `terraform.tfvars`

```console
$ terraform init --reconfigure
```

## Deploy

* validate
```console
$ terraform validate
```

* plan
```console
$ terraform plan -out "planfile"
```

* apply
```console
$ terraform apply "planfile"
```

* destroy
```console
$ terraform destroy
```