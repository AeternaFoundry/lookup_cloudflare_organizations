data "cloudflare_organizations" "organizations_lookup" {
  for_each = var.organizations_lookup

  containing = each.value.containing
  max_items  = each.value.max_items
  name       = each.value.name
  page_size  = each.value.page_size
  page_token = each.value.page_token
  parent     = each.value.parent
}

