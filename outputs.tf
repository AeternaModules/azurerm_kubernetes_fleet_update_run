output "kubernetes_fleet_update_runs_fleet_update_strategy_id" {
  description = "Map of fleet_update_strategy_id values across all kubernetes_fleet_update_runs, keyed the same as var.kubernetes_fleet_update_runs"
  value       = { for k, v in azurerm_kubernetes_fleet_update_run.kubernetes_fleet_update_runs : k => v.fleet_update_strategy_id }
}
output "kubernetes_fleet_update_runs_kubernetes_fleet_manager_id" {
  description = "Map of kubernetes_fleet_manager_id values across all kubernetes_fleet_update_runs, keyed the same as var.kubernetes_fleet_update_runs"
  value       = { for k, v in azurerm_kubernetes_fleet_update_run.kubernetes_fleet_update_runs : k => v.kubernetes_fleet_manager_id }
}
output "kubernetes_fleet_update_runs_managed_cluster_update" {
  description = "Map of managed_cluster_update values across all kubernetes_fleet_update_runs, keyed the same as var.kubernetes_fleet_update_runs"
  value       = { for k, v in azurerm_kubernetes_fleet_update_run.kubernetes_fleet_update_runs : k => v.managed_cluster_update }
}
output "kubernetes_fleet_update_runs_name" {
  description = "Map of name values across all kubernetes_fleet_update_runs, keyed the same as var.kubernetes_fleet_update_runs"
  value       = { for k, v in azurerm_kubernetes_fleet_update_run.kubernetes_fleet_update_runs : k => v.name }
}
output "kubernetes_fleet_update_runs_stage" {
  description = "Map of stage values across all kubernetes_fleet_update_runs, keyed the same as var.kubernetes_fleet_update_runs"
  value       = { for k, v in azurerm_kubernetes_fleet_update_run.kubernetes_fleet_update_runs : k => v.stage }
}

