# Infrastructure as Code

Project Infrastructure Growth Map using Terraform as deployment tool

## What is Infrastructure as Code?

Infrastructure as Code allows you to define the infrastructure and configuration
in a similar way to how software developers define their applications and make
of configuration files.

These configuration files are interpreted and transformed into infrastructure
in your public or hybrid cloud environment.

IaC allows you to maintain versioning of each change, like rollback to previous
versions, even create tests to understand what those changes represent before
applying them.

## Terraform

Terraform is an IaC tool make by Hashicorp that helps you define an entire
infrastructure in a way that you can version and reuse. It uses Hashicorp
Configuration Language (HCL) for structure.

All Terraform configuration files must be saved with the extension `.tf`

### Usage

```console
terraform —version
```

```console
terraform init
```

```console
terraform validate
```

```console
terraform plan
```

### Available infrastructure

* [x] **Dev** - Testing infrastructure
* [ ] **QA** - Quality Assurance infrastructure
* [ ] **Prod** - Production infrastructure

### Providers

The provider is Amazon Web Service

```tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}
```

### Resources

You can define resources as pieces of infrastructure such like:

- Buckets S3
- Cognito
- CloudFront
- EC2 instances
- EKS
- API Gateway
- Network
- RDS storage

please see [arquetipo.drawio](https://drive.google.com/file/d/1cDlofW2r9X09KxZUF-Sqspvb84WslKYV/view?usp=sharing)

A resource needs two declarative parameters:

- Type of resource
- Id of resource

### Variables

These are variables you use to request input from users or
runtime before applying any changes.

These type of variables are parameters that you must
enter in the [Terraform CLI](https://www.terraform.io/cli)

In this project the variables are located in
[Terraform/dev/variables.tf](Terraform/dev/variables.tf).

### Modules

We use modules to group different resources that are used in
architecture, that way instead of having a 30-page,
2-volume Terraform template, standardize scenarios like a
single object.

For example:

Amazon EKS Cluster needs a VPC with 2 subnets, a VPC
Link, etc.

Instead of creating all resources per cluster, create
a module and reuse it to simplify future creations.

## Contributors

Contributors can be found in the [AUTHORS](AUTHORS) file.
