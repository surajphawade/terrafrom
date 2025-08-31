module "resource_group" {
  source   = "../../child/resource_group"
  for_each = var.resource-group

  name     = each.key
  location = each.value

}