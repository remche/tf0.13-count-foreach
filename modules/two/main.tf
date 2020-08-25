resource "null_resource" "wait_for_master_ssh" {
  count = length(var.nodes)
}

variable "nodes" {
  type = list
}

