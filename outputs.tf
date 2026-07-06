output "kubernetes_fleet_update_runs" {
  description = "All kubernetes_fleet_update_run resources"
  value       = azurerm_kubernetes_fleet_update_run.kubernetes_fleet_update_runs
}
output "kubernetes_fleet_update_runs_fleet_update_strategy_id" {
  description = "List of fleet_update_strategy_id values across all kubernetes_fleet_update_runs"
  value       = [for k, v in azurerm_kubernetes_fleet_update_run.kubernetes_fleet_update_runs : v.fleet_update_strategy_id]
}
output "kubernetes_fleet_update_runs_kubernetes_fleet_manager_id" {
  description = "List of kubernetes_fleet_manager_id values across all kubernetes_fleet_update_runs"
  value       = [for k, v in azurerm_kubernetes_fleet_update_run.kubernetes_fleet_update_runs : v.kubernetes_fleet_manager_id]
}
output "kubernetes_fleet_update_runs_managed_cluster_update" {
  description = "List of managed_cluster_update values across all kubernetes_fleet_update_runs"
  value       = [for k, v in azurerm_kubernetes_fleet_update_run.kubernetes_fleet_update_runs : v.managed_cluster_update]
}
output "kubernetes_fleet_update_runs_name" {
  description = "List of name values across all kubernetes_fleet_update_runs"
  value       = [for k, v in azurerm_kubernetes_fleet_update_run.kubernetes_fleet_update_runs : v.name]
}
output "kubernetes_fleet_update_runs_stage" {
  description = "List of stage values across all kubernetes_fleet_update_runs"
  value       = [for k, v in azurerm_kubernetes_fleet_update_run.kubernetes_fleet_update_runs : v.stage]
}

