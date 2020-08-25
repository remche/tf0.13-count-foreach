module "one" {
  source      = "./modules/one"
  nodes_count = var.nodes
}

module "two" {
  source = "./modules/two"
  nodes   = module.one.nodes
}

variable "nodes" {
  type = number
}
