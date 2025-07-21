{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_availability_zones(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones: converted,
    }
  ),
  with_availability_zones_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones+: converted,
    }
  ),
  with_default_cooldown(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_cooldown" expected to be of type "number"';
    {
      default_cooldown: converted,
    }
  ),
  with_desired_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"desired_capacity" expected to be of type "number"';
    {
      desired_capacity: converted,
    }
  ),
  with_desired_capacity_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"desired_capacity_type" expected to be of type "string"';
    {
      desired_capacity_type: converted,
    }
  ),
  with_enabled_metrics(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_metrics" expected to be of type "set"';
    {
      enabled_metrics: converted,
    }
  ),
  with_enabled_metrics_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_metrics" expected to be of type "set"';
    {
      enabled_metrics+: converted,
    }
  ),
  with_health_check_grace_period(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"health_check_grace_period" expected to be of type "number"';
    {
      health_check_grace_period: converted,
    }
  ),
  with_health_check_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"health_check_type" expected to be of type "string"';
    {
      health_check_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_maintenance_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"instance_maintenance_policy" expected to be of type "list"';
    {
      instance_maintenance_policy: converted,
    }
  ),
  with_instance_maintenance_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"instance_maintenance_policy" expected to be of type "list"';
    {
      instance_maintenance_policy+: converted,
    }
  ),
  with_launch_configuration(value):: (
    local converted = value;
    assert std.isString(converted) : '"launch_configuration" expected to be of type "string"';
    {
      launch_configuration: converted,
    }
  ),
  with_launch_template(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"launch_template" expected to be of type "list"';
    {
      launch_template: converted,
    }
  ),
  with_launch_template_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"launch_template" expected to be of type "list"';
    {
      launch_template+: converted,
    }
  ),
  with_load_balancers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"load_balancers" expected to be of type "set"';
    {
      load_balancers: converted,
    }
  ),
  with_load_balancers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"load_balancers" expected to be of type "set"';
    {
      load_balancers+: converted,
    }
  ),
  with_max_instance_lifetime(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_instance_lifetime" expected to be of type "number"';
    {
      max_instance_lifetime: converted,
    }
  ),
  with_max_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_size" expected to be of type "number"';
    {
      max_size: converted,
    }
  ),
  with_min_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_size" expected to be of type "number"';
    {
      min_size: converted,
    }
  ),
  with_mixed_instances_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"mixed_instances_policy" expected to be of type "list"';
    {
      mixed_instances_policy: converted,
    }
  ),
  with_mixed_instances_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"mixed_instances_policy" expected to be of type "list"';
    {
      mixed_instances_policy+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_new_instances_protected_from_scale_in(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"new_instances_protected_from_scale_in" expected to be of type "bool"';
    {
      new_instances_protected_from_scale_in: converted,
    }
  ),
  with_placement_group(value):: (
    local converted = value;
    assert std.isString(converted) : '"placement_group" expected to be of type "string"';
    {
      placement_group: converted,
    }
  ),
  with_predicted_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"predicted_capacity" expected to be of type "number"';
    {
      predicted_capacity: converted,
    }
  ),
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_service_linked_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_linked_role_arn" expected to be of type "string"';
    {
      service_linked_role_arn: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_suspended_processes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"suspended_processes" expected to be of type "set"';
    {
      suspended_processes: converted,
    }
  ),
  with_suspended_processes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"suspended_processes" expected to be of type "set"';
    {
      suspended_processes+: converted,
    }
  ),
  with_tag(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tag" expected to be of type "set"';
    {
      tag: converted,
    }
  ),
  with_tag_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tag" expected to be of type "set"';
    {
      tag+: converted,
    }
  ),
  with_target_group_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_group_arns" expected to be of type "set"';
    {
      target_group_arns: converted,
    }
  ),
  with_target_group_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_group_arns" expected to be of type "set"';
    {
      target_group_arns+: converted,
    }
  ),
  with_termination_policies(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"termination_policies" expected to be of type "set"';
    {
      termination_policies: converted,
    }
  ),
  with_termination_policies_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"termination_policies" expected to be of type "set"';
    {
      termination_policies+: converted,
    }
  ),
  with_traffic_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"traffic_source" expected to be of type "set"';
    {
      traffic_source: converted,
    }
  ),
  with_traffic_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"traffic_source" expected to be of type "set"';
    {
      traffic_source+: converted,
    }
  ),
  with_vpc_zone_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_zone_identifier" expected to be of type "string"';
    {
      vpc_zone_identifier: converted,
    }
  ),
  with_warm_pool(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"warm_pool" expected to be of type "list"';
    {
      warm_pool: converted,
    }
  ),
  with_warm_pool_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"warm_pool" expected to be of type "list"';
    {
      warm_pool+: converted,
    }
  ),
  with_warm_pool_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"warm_pool_size" expected to be of type "number"';
    {
      warm_pool_size: converted,
    }
  ),
}
