#dev module env
module "dev_cluster" {
    source       = "./main"
    env_name     = "dev"
    cluster_name = "cluster"
    nodes        = "${var.nodes}"
}
#prod module env
module "prod_cluster" {
    source       = "./main"
    env_name     = "prod"
    cluster_name = "cluster"
    nodes         = "${var.nodes}"
}
