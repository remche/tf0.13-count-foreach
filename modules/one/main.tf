resource "null_resource" "wait_for_master_ssh" {
  count = var.nodes_count
}

variable "nodes_count" {
  type = number
}

data "null_data_source" "nodes" {
  count = var.nodes_count
  inputs = {
    id = null_resource.wait_for_master_ssh[count.index].id
  }
}

output "nodes" {
  value = data.null_data_source.nodes[*].outputs
}
