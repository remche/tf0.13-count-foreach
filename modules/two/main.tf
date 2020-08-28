resource "null_resource" "wait_for_master_ssh" {
  for_each = {
    for node in var.nodes: node.id => node
  }

}

variable "nodes" {
  type = list
}

