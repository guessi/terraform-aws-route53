//
// Create Managed Zone by Terraform Built-in Resources
//

resource "aws_route53_zone" "default" {
  name    = format("%s%s", var.zone_name, ".")
  comment = "Managed by Terraform"
}

//
// define NS records with module
//

module "NS" {
  source     = "../"
  zone_id    = aws_route53_zone.default.zone_id
  ns_records = var.ns_records

  ns_nameservers = [
    format("%s%s", aws_route53_zone.default.name_servers[0], "."),
    format("%s%s", aws_route53_zone.default.name_servers[1], "."),
    format("%s%s", aws_route53_zone.default.name_servers[2], "."),
    format("%s%s", aws_route53_zone.default.name_servers[3], "."),
  ]

  depends_on = [
    aws_route53_zone.default,
  ]
}

//
// define NS-SUBDOMAIN records with module
//

module "NS-SUBDOMAIN" {
  source               = "../"
  zone_id              = aws_route53_zone.default.zone_id
  ns_records_subdomain = var.ns_records_subdomain

  depends_on = [
    aws_route53_zone.default,
  ]
}

//
// define SOA records with module
//

module "SOA" {
  source      = "../"
  zone_id     = aws_route53_zone.default.zone_id
  soa_records = var.soa_records
  ns0         = aws_route53_zone.default.name_servers[0]

  depends_on = [
    aws_route53_zone.default,
  ]
}

//
// define MX records with module
//

module "MX" {
  source  = "../"
  type    = "MX"
  zone_id = aws_route53_zone.default.zone_id
  records = var.mx_records
  // MX records should contain "SIMPLE record" only

  depends_on = [
    aws_route53_zone.default,
  ]
}

//
// define TXT records with module
//

module "TXT" {
  source  = "../"
  type    = "TXT"
  zone_id = aws_route53_zone.default.zone_id
  records = var.txt_records
  // TXT records should contain "SIMPLE record" only

  depends_on = [
    aws_route53_zone.default,
  ]
}

//
// define A records with module
//

module "A" {
  source                    = "../"
  type                      = "A"
  zone_id                   = aws_route53_zone.default.zone_id
  records                   = var.a_records
  records_with_weight       = var.a_records_with_weight
  records_with_alias        = var.a_records_with_alias
  records_with_alias_weight = var.a_records_with_alias_weight
  records_with_geolocation  = var.a_records_with_geolocation

  depends_on = [
    aws_route53_zone.default,
  ]
}

//
// define AAAA records with module
//

module "AAAA" {
  source                    = "../"
  type                      = "AAAA"
  zone_id                   = aws_route53_zone.default.zone_id
  records                   = var.aaaa_records
  records_with_weight       = var.aaaa_records_with_weight
  records_with_alias        = var.aaaa_records_with_alias
  records_with_alias_weight = var.aaaa_records_with_alias_weight
  records_with_geolocation  = var.aaaa_records_with_geolocation

  depends_on = [
    aws_route53_zone.default,
  ]
}

//
// define CNAME records with module
//

module "CNAME" {
  source                    = "../"
  type                      = "CNAME"
  zone_id                   = aws_route53_zone.default.zone_id
  records                   = var.cname_records
  records_with_weight       = var.cname_records_with_weight
  records_with_alias        = var.cname_records_with_alias
  records_with_alias_weight = var.cname_records_with_alias_weight
  records_with_geolocation  = var.cname_records_with_geolocation

  depends_on = [
    aws_route53_zone.default,
  ]
}
