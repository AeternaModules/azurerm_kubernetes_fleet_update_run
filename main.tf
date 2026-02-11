resource "azurerm_kubernetes_fleet_update_run" "kubernetes_fleet_update_runs" {
  for_each = var.kubernetes_fleet_update_runs

  kubernetes_fleet_manager_id = each.value.kubernetes_fleet_manager_id
  name                        = each.value.name
  fleet_update_strategy_id    = each.value.fleet_update_strategy_id

  managed_cluster_update {
    dynamic "node_image_selection" {
      for_each = each.value.managed_cluster_update.node_image_selection != null ? [each.value.managed_cluster_update.node_image_selection] : []
      content {
        type = node_image_selection.value.type
      }
    }
    upgrade {
      kubernetes_version = each.value.managed_cluster_update.upgrade.kubernetes_version
      type               = each.value.managed_cluster_update.upgrade.type
    }
  }

  dynamic "stage" {
    for_each = each.value.stage != null ? [each.value.stage] : []
    content {
      after_stage_wait_in_seconds = stage.value.after_stage_wait_in_seconds
      dynamic "group" {
        for_each = stage.value.group
        content {
          name = group.value.name
        }
      }
      name = stage.value.name
    }
  }
}

