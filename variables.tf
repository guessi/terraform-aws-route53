variable "zone_id" {
  type        = string
  description = "Hosted Zone ID"
  default     = ""
}

variable "type" {
  type        = string
  description = "Record Type"
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

variable "soa_records" {
  type = list(object({
    NAME = string,
    TTL  = number,
  }))
  description = "SOA Records"
  default     = []
}

variable "ns0" {
  type        = string
  description = "Name Server"
  default     = ""
}

variable "records" {
  type = list(object({
    NAME   = string,
    RECORD = string,
    TTL    = number,
  }))
  description = "Records"
  default     = []
}

variable "records_with_weight" {
  type = list(object({
    NAME   = string,
    RECORD = string,
    TTL    = number,
    WEIGHT = number,
    SID    = string,
  }))
  description = "Records with Weight"
  default     = []
}

variable "records_with_alias" {
  type = list(object({
    NAME                   = string,
    RECORD                 = string,
    ZONE_ID                = string,
    EVALUATE_TARGET_HEALTH = bool,
  }))
  description = "Records with Alias"
  default     = []
}

variable "records_with_alias_weight" {
  type = list(object({
    NAME    = string,
    RECORD  = string,
    ZONE_ID = string,
    TTL     = number,
    SID     = string,
    COUNTRY = string,
  }))
  description = "Records with Alias and Weight"
  default     = []
}

variable "records_with_geolocation" {
  type = list(object({
    NAME    = string,
    RECORD  = string,
    TTL     = number,
    SID     = string,
    COUNTRY = string,
  }))
  description = "Records with Geolocation"
  default     = []
}
