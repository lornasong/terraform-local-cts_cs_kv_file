
variable "services" {
  description = "Consul services monitored by Consul Terraform Sync"
  type = map(
    object({
      id        = string
      name      = string
      address   = string
      port      = number
      meta      = map(string)
      tags      = list(string)
      namespace = string
      status    = string

      node                  = string
      node_id               = string
      node_address          = string
      node_datacenter       = string
      node_tagged_addresses = map(string)
      node_meta             = map(string)
    })
  )
}

variable "catalog_services" {
  description = "Consul catalog service names and list of all known tags for a given service"
  type = map(list(string))
}

variable "consul_kv" {
  description = "Consul KV pair"
  type        = map(string)
}
