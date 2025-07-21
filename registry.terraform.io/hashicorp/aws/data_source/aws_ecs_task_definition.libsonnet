{
  local block = self,
  new(task_definition):: (
    {}
    + block.with_task_definition(task_definition)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_arn_without_revision(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn_without_revision" expected to be of type "string"';
    {
      arn_without_revision: converted,
    }
  ),
  with_container_definitions(value):: (
    local converted = value;
    assert std.isString(converted) : '"container_definitions" expected to be of type "string"';
    {
      container_definitions: converted,
    }
  ),
  with_cpu(value):: (
    local converted = value;
    assert std.isString(converted) : '"cpu" expected to be of type "string"';
    {
      cpu: converted,
    }
  ),
  with_enable_fault_injection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_fault_injection" expected to be of type "bool"';
    {
      enable_fault_injection: converted,
    }
  ),
  with_ephemeral_storage(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ephemeral_storage" expected to be of type "list"';
    {
      ephemeral_storage: converted,
    }
  ),
  with_ephemeral_storage_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ephemeral_storage" expected to be of type "list"';
    {
      ephemeral_storage+: converted,
    }
  ),
  with_execution_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
    {
      execution_role_arn: converted,
    }
  ),
  with_family(value):: (
    local converted = value;
    assert std.isString(converted) : '"family" expected to be of type "string"';
    {
      family: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ipc_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipc_mode" expected to be of type "string"';
    {
      ipc_mode: converted,
    }
  ),
  with_memory(value):: (
    local converted = value;
    assert std.isString(converted) : '"memory" expected to be of type "string"';
    {
      memory: converted,
    }
  ),
  with_network_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_mode" expected to be of type "string"';
    {
      network_mode: converted,
    }
  ),
  with_pid_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"pid_mode" expected to be of type "string"';
    {
      pid_mode: converted,
    }
  ),
  with_placement_constraints(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"placement_constraints" expected to be of type "set"';
    {
      placement_constraints: converted,
    }
  ),
  with_placement_constraints_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"placement_constraints" expected to be of type "set"';
    {
      placement_constraints+: converted,
    }
  ),
  with_proxy_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"proxy_configuration" expected to be of type "list"';
    {
      proxy_configuration: converted,
    }
  ),
  with_proxy_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"proxy_configuration" expected to be of type "list"';
    {
      proxy_configuration+: converted,
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
  with_requires_compatibilities(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"requires_compatibilities" expected to be of type "set"';
    {
      requires_compatibilities: converted,
    }
  ),
  with_requires_compatibilities_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"requires_compatibilities" expected to be of type "set"';
    {
      requires_compatibilities+: converted,
    }
  ),
  with_revision(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"revision" expected to be of type "number"';
    {
      revision: converted,
    }
  ),
  with_runtime_platform(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"runtime_platform" expected to be of type "list"';
    {
      runtime_platform: converted,
    }
  ),
  with_runtime_platform_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"runtime_platform" expected to be of type "list"';
    {
      runtime_platform+: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_task_definition(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_definition" expected to be of type "string"';
    {
      task_definition: converted,
    }
  ),
  with_task_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_role_arn" expected to be of type "string"';
    {
      task_role_arn: converted,
    }
  ),
  with_volume(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"volume" expected to be of type "set"';
    {
      volume: converted,
    }
  ),
  with_volume_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"volume" expected to be of type "set"';
    {
      volume+: converted,
    }
  ),
}
