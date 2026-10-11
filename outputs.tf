output "organizations_lookup_id" {
  description = "Map of id values across all organizations_lookup, keyed the same as var.organizations_lookup except keys with no id are omitted"
  value       = { for k, v in data.cloudflare_organizations.organizations_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organizations_lookup_containing" {
  description = "Map of containing values across all organizations_lookup, keyed the same as var.organizations_lookup except keys with no containing are omitted"
  value       = { for k, v in data.cloudflare_organizations.organizations_lookup : k => v.containing if v.containing != null && length(v.containing) > 0 }
}
output "organizations_lookup_max_items" {
  description = "Map of max_items values across all organizations_lookup, keyed the same as var.organizations_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_organizations.organizations_lookup : k => v.max_items if v.max_items != null }
}
output "organizations_lookup_name" {
  description = "Map of name values across all organizations_lookup, keyed the same as var.organizations_lookup except keys with no name are omitted"
  value       = { for k, v in data.cloudflare_organizations.organizations_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "organizations_lookup_page_size" {
  description = "Map of page_size values across all organizations_lookup, keyed the same as var.organizations_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.cloudflare_organizations.organizations_lookup : k => v.page_size if v.page_size != null }
}
output "organizations_lookup_page_token" {
  description = "Map of page_token values across all organizations_lookup, keyed the same as var.organizations_lookup except keys with no page_token are omitted"
  value       = { for k, v in data.cloudflare_organizations.organizations_lookup : k => v.page_token if v.page_token != null && length(v.page_token) > 0 }
}
output "organizations_lookup_parent" {
  description = "Map of parent values across all organizations_lookup, keyed the same as var.organizations_lookup except keys with no parent are omitted"
  value       = { for k, v in data.cloudflare_organizations.organizations_lookup : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "organizations_lookup_result" {
  description = "Map of result values across all organizations_lookup, keyed the same as var.organizations_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_organizations.organizations_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}

