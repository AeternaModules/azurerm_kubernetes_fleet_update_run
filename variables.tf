variable "kubernetes_fleet_update_runs" {
  description = <<EOT
Map of kubernetes_fleet_update_runs, attributes below
Required:
    - kubernetes_fleet_manager_id
    - name
    - managed_cluster_update (block):
        - node_image_selection (optional, block):
            - type (required)
        - upgrade (required, block):
            - kubernetes_version (optional)
            - type (required)
Optional:
    - fleet_update_strategy_id
    - stage (block):
        - after_stage_wait_in_seconds (optional)
        - group (required, block):
            - name (required)
        - name (required)
EOT

  type = map(object({
    kubernetes_fleet_manager_id = string
    name                        = string
    fleet_update_strategy_id    = optional(string)
    managed_cluster_update = object({
      node_image_selection = optional(object({
        type = string
      }))
      upgrade = object({
        kubernetes_version = optional(string)
        type               = string
      })
    })
    stage = optional(object({
      after_stage_wait_in_seconds = optional(number)
      group = object({
        name = string
      })
      name = string
    }))
  }))
}

