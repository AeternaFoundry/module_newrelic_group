variable "groups" {
  description = <<EOT
Map of groups, attributes below
Required:
    - authentication_domain_id
    - name
Optional:
    - user_ids
EOT

  type = map(object({
    authentication_domain_id = string
    name                     = string
    user_ids                 = optional(set(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.groups : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.groups : (
        length(v.authentication_domain_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
}

