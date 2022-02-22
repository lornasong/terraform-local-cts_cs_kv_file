resource "local_file" "address" {
    for_each = var.services
    content = each.value.address
    filename = "resources/services_${each.value.id}.txt"
}

resource "local_file" "tags" {
    for_each = var.catalog_services
    content = join(", ", each.value)
    filename = "resources/tags_${each.key}.txt"
}

resource "local_file" "key-value-pairs" {
  for_each = var.consul_kv
  content  = each.value
  filename = "resources/${each.key}.txt"
}
