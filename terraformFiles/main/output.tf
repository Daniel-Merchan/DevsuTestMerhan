resource "local_file" "kubeconfig" {
  depends_on   = [azurerm_kubernetes_cluster.mycluster]
  filename     = "kubeconfig${var.env_name}"
  content      = azurerm_kubernetes_cluster.mycluster.kube_config_raw
}