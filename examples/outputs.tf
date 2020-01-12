output "zone_id" {
  value = aws_route53_zone.default.id
}

output "nameservers" {
  value = aws_route53_zone.default.*.name_servers
}
