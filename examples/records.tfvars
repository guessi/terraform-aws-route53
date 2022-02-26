zone_name = "example123.com"

# ns_records = [
#   {
#     "NAME" = "example123.com"
#     "TTL"  = "172800"
#   },
# ]

# ns_records_subdomain = [
#   {
#     "NAME"   = "xyz.example123.com"
#     "RECORD" = "ns1.example123.com"
#     "TTL"    = "300"
#   },
# ]

# ns0 = "ns1.example123.com"

# soa_records = [
#   {
#     "NAME" = "example123.com"
#     "TTL"  = "900"
#   },
# ]

# txt_records = [
#   {
#     "NAME"   = "example123.com"
#     "RECORD" = "v=spf1 include:mailgun.org ~all"
#     "TTL"    = "300"
#   },
# ]

# mx_records = [
#   {
#     "NAME"   = "example123.com"
#     "RECORD" = "10 mxb.mailgun.org,10 mxa.mailgun.org"
#     "TTL"    = "300"
#   },
# ]

# cname_records = [
#   {
#     "NAME"   = "cname1.example123.com"
#     "RECORD" = "example123.com"
#     "TTL"    = "60"
#   },
#   {
#     "NAME"   = "cname2.example123.com"
#     "RECORD" = "example123.com"
#     "TTL"    = "60"
#   },
# ]

# cname_records_with_weight = [
#   {
#     "NAME"   = "weighted-cname.example123.com"
#     "RECORD" = "10.0.0.10"
#     "TTL"    = "60"
#     "WEIGHT" = "100"
#     "SID"    = "cname-with-weight-100"
#   },
#   {
#     "NAME"   = "weighted-cname.example123.com"
#     "RECORD" = "10.0.0.20"
#     "TTL"    = "60"
#     "WEIGHT" = "200"
#     "SID"    = "cname-with-weight-200"
#   },
# ]

# cname_records_with_alias = [
#   {
#     "NAME"                   = "cname-alias-1.example123.com"
#     "RECORD"                 = "xxxxxx-xxxxxxxx.us-west-1.elb.amazonaws.com"
#     "ZONE_ID"                = "Z34H1M7Y48GDYF"
#     "EVALUATE_TARGET_HEALTH" = true
#   },
#   {
#     "NAME"                   = "cname-alias-2.example123.com"
#     "RECORD"                 = "yyyyyy-yyyyyyyy.us-east-1.elb.amazonaws.com"
#     "ZONE_ID"                = "Z34H1M7Y48GDYF"
#     "EVALUATE_TARGET_HEALTH" = true
#   },
# ]

# cname_records_with_geolocation = [
#   {
#     "NAME"    = "cdn.example123.com"
#     "RECORD"  = "cdn.example123.com.akamaized.net"
#     "TTL"     = 60
#     "SID"     = "Global"
#     "COUNTRY" = "*"
#   },
#   {
#     "NAME"    = "cdn.example123.com"
#     "RECORD"  = "cdn.example123.com.akamaized.net"
#     "TTL"     = 60
#     "SID"     = "China"
#     "COUNTRY" = "CN"
#   },
# ]

# a_records = [
#   {
#     "NAME"   = "simple-a-record-1.example123.com"
#     "RECORD" = "10.0.0.10"
#     "TTL"    = "60"
#   },
#   {
#     "NAME"   = "simple-a-record-2.example123.com"
#     "RECORD" = "10.0.0.20"
#     "TTL"    = "60"
#   },
# ]

# a_records_with_weight = [
#   {
#     "NAME"   = "a-reocrd-with-weight.example123.com"
#     "RECORD" = "10.0.0.10"
#     "TTL"    = "60"
#     "WEIGHT" = "100"
#     "SID"    = "SID-10"
#   },
#   {
#     "NAME"   = "a-reocrd-with-weight.example123.com"
#     "RECORD" = "10.0.0.20"
#     "TTL"    = "60"
#     "WEIGHT" = "200"
#     "SID"    = "SID-20"
#   },
# ]

# a_records_with_alias = [
#   {
#     "NAME"                   = "a-record-with-alias-1.example123.com"
#     "RECORD"                 = "xxxxxx-xxxxxxxx.us-west-1.elb.amazonaws.com"
#     "ZONE_ID"                = "Z34H1M7Y48GDYF"
#     "EVALUATE_TARGET_HEALTH" = true
#   },
#   {
#     "NAME"                   = "a-record-with-alias-2.example123.com"
#     "RECORD"                 = "xxxxxx-xxxxxxxx.us-east-1.elb.amazonaws.com"
#     "ZONE_ID"                = "Z34H1M7Y48GDYF"
#     "EVALUATE_TARGET_HEALTH" = true
#   },
# ]

# a_records_with_geolocation = [
#   {
#     "NAME"    = "a-geo.example123.com"
#     "RECORD"  = "10.0.0.10"
#     "TTL"     = 60
#     "SID"     = "Global"
#     "COUNTRY" = "*"
#   },
#   {
#     "NAME"    = "a-geo.example123.com"
#     "RECORD"  = "10.0.0.20"
#     "TTL"     = 60
#     "SID"     = "China"
#     "COUNTRY" = "CN"
#   },
# ]
