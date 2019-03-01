variable "zone_name" {
  type        = "string"
  description = "Hosted Zone Name"
  default     = ""
}

variable "zone_id" {
  type        = "string"
  description = "Hosted Zone ID"
  default     = ""
}

variable "ns_records" {
  type        = "list"
  description = "NS Records for Zone"
  default     = []
}

variable "ns_records_subdomain" {
  type        = "list"
  description = "NS Records for Zone for Sub-domains"
  default     = []
}

variable "txt_records" {
  type        = "list"
  description = "TXT Records for Zone"
  default     = []
}

variable "mx_records" {
  type        = "list"
  description = "MX Records for Zone"
  default     = []
}

variable "soa_records" {
  type        = "list"
  description = "SOA Records for Zone"
  default     = []
}

variable "cname_records" {
  type        = "list"
  description = "CNAME Records"
  default     = []
}

variable "cname_records_with_weight" {
  type        = "list"
  description = "CNAME Records with Weight"
  default     = []
}

variable "cname_records_with_alias" {
  type        = "list"
  description = "CNAME Records with Alias"
  default     = []
}

variable "cname_records_with_alias_weight" {
  type        = "list"
  description = "CNAME Records with Alias and Weight"
  default     = []
}

variable "cname_records_with_geolocation" {
  type        = "list"
  description = "CNAME Records with Geolocation"
  default     = []
}

variable "a_records" {
  type        = "list"
  description = "A Records"
  default     = []
}

variable "a_records_with_weight" {
  type        = "list"
  description = "A Records with Weight"
  default     = []
}

variable "a_records_with_alias" {
  type        = "list"
  description = "A Records with Alias"
  default     = []
}

variable "a_records_with_alias_weight" {
  type        = "list"
  description = "A Records with Alias and Weight"
  default     = []
}

variable "a_records_with_geolocation" {
  type        = "list"
  description = "A Records with Geolocation"
  default     = []
}

variable "aaaa_records" {
  type        = "list"
  description = "AAAA Records"
  default     = []
}

variable "aaaa_records_with_weight" {
  type        = "list"
  description = "AAAA Records with Weight"
  default     = []
}

variable "aaaa_records_with_alias" {
  type        = "list"
  description = "AAAA Records with Alias"
  default     = []
}

variable "aaaa_records_with_alias_weight" {
  type        = "list"
  description = "AAAA Records with Alias and Weight"
  default     = []
}

variable "aaaa_records_with_geolocation" {
  type        = "list"
  description = "AAAA Records with Geolocation"
  default     = []
}
