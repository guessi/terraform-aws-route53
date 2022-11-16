# Terraform AWS Route53 Records

Extendable Terraform module that helps you manage Hosted Zones and Records easily.

Create Managed Zone, A/AAAA/CNAME/SOA/TXT/NS/MX records on AWS Route53.

## Prerequisites

* Terraform ~>1.2
* Terraform AWS Provider ~>4.39
* AWS IAM User/Role with `AmazonRoute53FullAccess` permission

## What kind of record types that currently supported?

- A/AAAA/CNAME Simple Records
- A/AAAA/CNAME Simple Records with Weight
- A/AAAA/CNAME Records with Alias and Weight
- A/AAAA/CNAME Records with Alias and Weight and Health Check
- A/AAAA/CNAME Records with Geolocation
- TXT/MX/NS/SOA Records

## Usage

```hcl
//
// define A records with module
//

module "A" {
  source                    = "guessi/route53/aws"
  type                      = "A"
  zone_id                   = aws_route53_zone.default.zone_id
  records                   = var.a_records
  records_with_weight       = var.a_records_with_weight
  records_with_alias        = var.a_records_with_alias
  records_with_alias_weight = var.a_records_with_alias_weight
  records_with_geolocation  = var.a_records_with_geolocation
}

```

## Examples

* [Module Usage Guide](https://registry.terraform.io/modules/guessi/route53/aws)
* [Complete Examples](https://github.com/guessi/terraform-aws-route53/tree/master/examples)

## Inputs

| Name                            | Description                         | Type         | Default   |
| ------------------------------- | ----------------------------------- | :----------: | :-------: |
| zone_id                         | Hosted Zone ID                      | string       | `""`      |
| ns_records                      | NS Records for Zone                 | list(object) | `[]`      |
| ns_records_subdomain            | NS Records for Zone for Sub-domains | list(object) | `[]`      |
| ns_nameservers                  | Name Server of NS Records           | list(string) | `[]`      |
| ns0                             | 1st Name Server of NS Records       | string       | `""`      |
| soa_records                     | SOA Records for Zone                | list(object) | `[]`      |
| type                            | Record Type                         | string       | `""`      |
| records                         | Records                             | list(object) | `[]`      |
| records_with_weight             | Records with Weight                 | list(object) | `[]`      |
| records_with_alias              | Records with Alias                  | list(object) | `[]`      |
| records_with_alias_weight       | Records with Alias and Weight       | list(object) | `[]`      |
| records_with_geolocation        | Records with Geolocation            | list(object) | `[]`      |

## FAQ / HowTo

### How to manage an existed hosted-zone?

    $ terraform init                           # initialize terraform modules
    $ vim records.tfvars                       # add some records definition
    $ terraform plan -var-file records.tfvars  # review changes before apply
    $ terraform apply -var-file records.tfvars # apply changes

## Authors

- [guessi](https://github.com/guessi)

## License

[Apache License 2.0](https://github.com/guessi/terraform-aws-route53/blob/master/LICENSE)
