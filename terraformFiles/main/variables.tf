variable "cluster_name" {
  default     = "cluster"
}
variable "env_name" {
  description = "enviroment"
  default     = "dev"
}
variable "nodes" {
  description= "number of nodes for dev and prod env"
  type = number

}