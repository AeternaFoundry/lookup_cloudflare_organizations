variable "organizations_lookup" {
  description = <<EOT
Map of organizations_lookup, attributes below
Optional:
    - containing
    - max_items
    - name
    - page_size
    - page_token
    - parent
EOT

  type = map(object({
    containing = optional(object({
      account      = optional(string)
      organization = optional(string)
      user         = optional(string)
    }))
    max_items = optional(number)
    name = optional(object({
      contains    = optional(string)
      ends_with   = optional(string)
      starts_with = optional(string)
    }))
    page_size  = optional(number)
    page_token = optional(string)
    parent = optional(object({
    }))
  }))
}

