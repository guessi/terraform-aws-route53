variable "zone_id" {
  type        = "string"
  description = "Hosted Zone ID"
  default     = ""
}

variable "type" {
  type        = "string"
  description = "Record Type"
  default     = ""
}

variable "ns_records" {
  type        = "list"
  description = "NS Records for Zone"
  default     = []
}

variable "ns_nameservers" {
  type        = "list"
  description = "Name Servers of NS Records"
  default     = []
}

variable "ns_records_subdomain" {
  type        = "list"
  description = "NS Records for Zone for Sub-domains"
  default     = []
}

variable "soa_records" {
  type        = "list"
  description = "SOA Records"
  default     = []
}

variable "ns0" {
  type        = "string"
  description = "Name Server"
  default     = ""
}

variable "records" {
  type        = "list"
  description = "Records"
  default     = []
}

variable "records_with_weight" {
  type        = "list"
  description = "Records with Weight"
  default     = []
}

variable "records_with_alias" {
  type        = "list"
  description = "Records with Alias"
  default     = []
}

variable "records_with_alias_weight" {
  type        = "list"
  description = "Records with Alias and Weight"
  default     = []
}

variable "records_with_geolocation" {
  type        = "list"
  description = "Records with Geolocation"
  default     = []
}
