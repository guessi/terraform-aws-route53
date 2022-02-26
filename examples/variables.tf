variable "zone_name" {
  type        = string
  description = "Hosted Zone Name"
  default     = ""
}

variable "ns_records" {
  type = list(object({
    NAME = string,
    TTL  = number,
  }))
  description = "NS Records for Zone"
  default     = []
}

variable "ns_nameservers" {
  type        = list(string)
  description = "Name Servers of NS Records"
  default     = []
}

variable "ns_records_subdomain" {
  type = list(object({
    NAME   = string,
    RECORD = string,
    TTL    = number,
  }))
  description = "NS Records for Zone for Sub-domains"
  default     = []
}

variable "ns0" {
  type        = string
  description = "Name Server"
  default     = ""
}

variable "txt_records" {
  type = list(object({
    NAME   = string,
    RECORD = string,
    TTL    = number,
  }))
  description = "TXT Records for Zone"
  default     = []
}

variable "mx_records" {
  type = list(object({
    NAME   = string,
    RECORD = string,
    TTL    = number,
  }))
  description = "MX Records for Zone"
  default     = []
}

variable "soa_records" {
  type = list(object({
    NAME = string,
    TTL  = number,
  }))
  description = "SOA Records for Zone"
  default     = []
}

variable "cname_records" {
  type = list(object({
    NAME   = string,
    RECORD = string,
    TTL    = number,
  }))
  description = "CNAME Records"
  default     = []
}

variable "cname_records_with_weight" {
  type = list(object({
    NAME   = string,
    RECORD = string,
    TTL    = number,
    WEIGHT = number,
    SID    = string,
  }))
  description = "CNAME Records with Weight"
  default     = []
}

variable "cname_records_with_alias" {
  type = list(object({
    NAME                   = string,
    RECORD                 = string,
    ZONE_ID                = string,
    EVALUATE_TARGET_HEALTH = bool,
  }))
  description = "CNAME Records with Alias"
  default     = []
}

variable "cname_records_with_alias_weight" {
  type = list(object({
    NAME    = string,
    RECORD  = string,
    ZONE_ID = string,
    TTL     = number,
    SID     = string,
    COUNTRY = string,
  }))
  description = "CNAME Records with Alias and Weight"
  default     = []
}

variable "cname_records_with_geolocation" {
  type = list(object({
    NAME    = string,
    RECORD  = string,
    TTL     = number,
    SID     = string,
    COUNTRY = string,
  }))
  description = "CNAME Records with Geolocation"
  default     = []
}

variable "a_records" {
  type = list(object({
    NAME   = string,
    RECORD = string,
    TTL    = number,
  }))
  description = "A Records"
  default     = []
}

variable "a_records_with_weight" {
  type = list(object({
    NAME   = string,
    RECORD = string,
    TTL    = number,
    WEIGHT = number,
    SID    = string,
  }))
  description = "A Records with Weight"
  default     = []
}

variable "a_records_with_alias" {
  type = list(object({
    NAME                   = string,
    RECORD                 = string,
    ZONE_ID                = string,
    EVALUATE_TARGET_HEALTH = bool,
  }))
  description = "A Records with Alias"
  default     = []
}

variable "a_records_with_alias_weight" {
  type = list(object({
    NAME    = string,
    RECORD  = string,
    ZONE_ID = string,
    TTL     = number,
    SID     = string,
    COUNTRY = string,
  }))
  description = "A Records with Alias and Weight"
  default     = []
}

variable "a_records_with_geolocation" {
  type = list(object({
    NAME    = string,
    RECORD  = string,
    TTL     = number,
    SID     = string,
    COUNTRY = string,
  }))
  description = "A Records with Geolocation"
  default     = []
}

variable "aaaa_records" {
  type = list(object({
    NAME   = string,
    RECORD = string,
    TTL    = number,
  }))
  description = "AAAA Records"
  default     = []
}

variable "aaaa_records_with_weight" {
  type = list(object({
    NAME   = string,
    RECORD = string,
    TTL    = number,
    WEIGHT = number,
    SID    = string,
  }))
  description = "AAAA Records with Weight"
  default     = []
}

variable "aaaa_records_with_alias" {
  type = list(object({
    NAME                   = string,
    RECORD                 = string,
    ZONE_ID                = string,
    EVALUATE_TARGET_HEALTH = bool,
  }))
  description = "AAAA Records with Alias"
  default     = []
}

variable "aaaa_records_with_alias_weight" {
  type = list(object({
    NAME    = string,
    RECORD  = string,
    ZONE_ID = string,
    TTL     = number,
    SID     = string,
    COUNTRY = string,
  }))
  description = "AAAA Records with Alias and Weight"
  default     = []
}

variable "aaaa_records_with_geolocation" {
  type = list(object({
    NAME    = string,
    RECORD  = string,
    TTL     = number,
    SID     = string,
    COUNTRY = string,
  }))
  description = "AAAA Records with Geolocation"
  default     = []
}
