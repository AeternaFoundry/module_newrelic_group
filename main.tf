resource "newrelic_group" "groups" {
  for_each = var.groups

  authentication_domain_id = each.value.authentication_domain_id
  name                     = each.value.name
  user_ids                 = each.value.user_ids
}

