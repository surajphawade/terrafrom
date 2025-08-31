#chmod +x create_tf_structure.sh
#./create_tf_structure.sh

#!/bin/bash

# Base directory
BASE_DIR="terraform"

# Parent environments
PARENT_ENVS=("dev" "preprod" "prod")

# Common Azure resources as child modules
CHILD_MODULES=(
  "resource_group"
  "virtual_network"
  "subnet"
  "network_security_group"
  "public_ip"
  "network_interface"
  "load_balancer"
  "application_gateway"
  "storage_account"
  "storage_container"
  "key_vault"
  "key_vault_secret"
  "app_service_plan"
  "app_service"
  "function_app"
  "sql_server"
  "sql_database"
  "cosmosdb_account"
  "cosmosdb_sql_database"
  "redis_cache"
  "aks_cluster"
  "aks_node_pool"
  "container_registry"
  "log_analytics_workspace"
  "monitor_action_group"
  "virtual_machine"
  "virtual_machine_scale_set"
  "managed_disk"
  "role_assignment"
  "user_assigned_identity"
  "policy_definition"
  "policy_assignment"
)

# Create base directory
mkdir -p $BASE_DIR

# Create Parent environments with files
for ENV in "${PARENT_ENVS[@]}"; do
  ENV_DIR="$BASE_DIR/Parent/$ENV"
  mkdir -p "$ENV_DIR"

  # Create blank files in each parent env folder
  touch "$ENV_DIR/main.tf" "$ENV_DIR/provider.tf" "$ENV_DIR/variables.tf" "$ENV_DIR/terraform.tfvars"
done

# Create Child modules with files
for MODULE in "${CHILD_MODULES[@]}"; do
  MODULE_DIR="$BASE_DIR/child/$MODULE"
  mkdir -p "$MODULE_DIR"

  # Create blank files in each child module
  touch "$MODULE_DIR/main.tf" "$MODULE_DIR/variables.tf"
done

echo "✅ Terraform Azure project structure created successfully under '$BASE_DIR'!"
