variable "feature_toggles" {
  description = "Configuration settings for the feature toggles."
  type        = map(string)
  default     = {

    "user_interface" = "true"
    "versioning"     = "false"
    "beta_access"    = "true"
  }
}

# Challenge 4

variable "server_config" {
  description = "Configuration settings for a server."
  type = object({
    hostname          = string
    ip_address        = string
    role              = string

  })
  default = {
    hostname          = "server01"
    ip_address        = "192.168.1.10"
    role              = "manager"
   } 
  }
