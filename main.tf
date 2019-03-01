//
// Skeleton for NS Resources
//

resource "aws_route53_record" "NS" {
  count = "${length(var.ns_records)}"

  zone_id = "${var.zone_id}"

  type = "NS"
  name = "${lookup(var.ns_records[count.index], "NAME")}"
  ttl  = "${lookup(var.ns_records[count.index], "TTL")}"

  records = [
    "${var.ns_nameservers}",
  ]
}

//
// Skeleton for NS Resources (Subdomain)
//

resource "aws_route53_record" "NS-SUBDOMAIN" {
  count = "${length(var.ns_records_subdomain)}"

  zone_id = "${var.zone_id}"

  type = "NS"
  name = "${lookup(var.ns_records_subdomain[count.index], "NAME")}"
  ttl  = "${lookup(var.ns_records_subdomain[count.index], "TTL")}"

  records = [
    "${compact(split(",", lookup(var.ns_records_subdomain[count.index], "RECORD")))}",
  ]
}

//
// Skeleton for SOA Resources
//

resource "aws_route53_record" "SOA" {
  count = "${length(var.soa_records)}"

  zone_id = "${var.zone_id}"

  type = "SOA"
  name = "${lookup(var.soa_records[count.index], "NAME")}"
  ttl  = "${lookup(var.soa_records[count.index], "TTL")}"

  records = [
    "${var.ns0}. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400",
  ]
}

//
// Skeleton for Simple Resources
//

resource "aws_route53_record" "SIMPLE" {
  count = "${length(var.records)}"

  zone_id = "${var.zone_id}"

  type = "${var.type}"
  name = "${lookup(var.records[count.index], "NAME")}"
  ttl  = "${lookup(var.records[count.index], "TTL")}"

  records = [
    "${compact(split(",", lookup(var.records[count.index], "RECORD")))}",
  ]
}

//
// Skeleton for Weighted Resources
//

resource "aws_route53_record" "Weighted" {
  count = "${length(var.records_with_weight)}"

  zone_id = "${var.zone_id}"

  type = "${var.type}"
  name = "${lookup(var.records_with_weight[count.index], "NAME")}"
  ttl  = "${lookup(var.records_with_weight[count.index], "TTL")}"

  weighted_routing_policy {
    weight = "${lookup(var.records_with_weight[count.index], "WEIGHT")}"
  }

  set_identifier = "${lookup(var.records_with_weight[count.index], "SID")}"

  health_check_id = "${lookup(var.records_with_weight[count.index], "HEALTH_CHECK_ID", "")}"

  records = [
    "${compact(split(",", lookup(var.records_with_weight[count.index], "RECORD")))}",
  ]
}

//
// Skeleton for Simple Resources with Alias
//

resource "aws_route53_record" "Alias" {
  count = "${length(var.records_with_alias)}"

  zone_id = "${var.zone_id}"

  type = "${var.type}"
  name = "${lookup(var.records_with_alias[count.index], "NAME")}"

  alias {
    name                   = "${lookup(var.records_with_alias[count.index], "RECORD")}"
    zone_id                = "${lookup(var.records_with_alias[count.index], "ZONE_ID")}"
    evaluate_target_health = "${lookup(var.records_with_alias[count.index], "EVALUATE_TARGET_HEALTH")}"
  }
}

//
// Skeleton for Weighted Resources with Aliases
//

resource "aws_route53_record" "Alias-Weighted" {
  count = "${length(var.records_with_alias_weight)}"

  zone_id = "${var.zone_id}"

  type = "${var.type}"
  name = "${lookup(var.records_with_alias_weight[count.index], "NAME")}"

  weighted_routing_policy {
    weight = "${lookup(var.records_with_alias_weight[count.index], "WEIGHT")}"
  }

  set_identifier = "${lookup(var.records_with_alias_weight[count.index], "SID")}"

  alias {
    name                   = "${lookup(var.records_with_alias_weight[count.index], "RECORD")}"
    zone_id                = "${lookup(var.records_with_alias_weight[count.index], "ZONE_ID")}"
    evaluate_target_health = "${lookup(var.records_with_alias_weight[count.index], "EVALUATE_TARGET_HEALTH")}"
  }
}

//
// Skeleton for Resources with Geolocation Setup
//

resource "aws_route53_record" "Geolocation" {
  count = "${length(var.records_with_geolocation)}"

  zone_id = "${var.zone_id}"

  type = "${var.type}"
  name = "${lookup(var.records_with_geolocation[count.index], "NAME")}"
  ttl  = "${lookup(var.records_with_geolocation[count.index], "TTL")}"

  set_identifier = "${lookup(var.records_with_geolocation[count.index], "SID")}"

  geolocation_routing_policy {
    country = "${lookup(var.records_with_geolocation[count.index], "COUNTRY")}"
  }

  records = [
    "${compact(split(",", lookup(var.records_with_geolocation[count.index], "RECORD")))}",
  ]
}
