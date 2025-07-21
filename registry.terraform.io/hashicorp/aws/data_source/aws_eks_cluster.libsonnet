{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_access_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"access_config" expected to be of type "list"';
    {
      access_config: converted,
    }
  ),
  with_access_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"access_config" expected to be of type "list"';
    {
      access_config+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_certificate_authority(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"certificate_authority" expected to be of type "list"';
    {
      certificate_authority: converted,
    }
  ),
  with_certificate_authority_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"certificate_authority" expected to be of type "list"';
    {
      certificate_authority+: converted,
    }
  ),
  with_cluster_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_id" expected to be of type "string"';
    {
      cluster_id: converted,
    }
  ),
  with_compute_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"compute_config" expected to be of type "list"';
    {
      compute_config: converted,
    }
  ),
  with_compute_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"compute_config" expected to be of type "list"';
    {
      compute_config+: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_enabled_cluster_log_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_cluster_log_types" expected to be of type "set"';
    {
      enabled_cluster_log_types: converted,
    }
  ),
  with_enabled_cluster_log_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_cluster_log_types" expected to be of type "set"';
    {
      enabled_cluster_log_types+: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint" expected to be of type "string"';
    {
      endpoint: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"identity" expected to be of type "list"';
    {
      identity: converted,
    }
  ),
  with_identity_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"identity" expected to be of type "list"';
    {
      identity+: converted,
    }
  ),
  with_kubernetes_network_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"kubernetes_network_config" expected to be of type "list"';
    {
      kubernetes_network_config: converted,
    }
  ),
  with_kubernetes_network_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"kubernetes_network_config" expected to be of type "list"';
    {
      kubernetes_network_config+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_outpost_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"outpost_config" expected to be of type "list"';
    {
      outpost_config: converted,
    }
  ),
  with_outpost_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"outpost_config" expected to be of type "list"';
    {
      outpost_config+: converted,
    }
  ),
  with_platform_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_version" expected to be of type "string"';
    {
      platform_version: converted,
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
  with_remote_network_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"remote_network_config" expected to be of type "list"';
    {
      remote_network_config: converted,
    }
  ),
  with_remote_network_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"remote_network_config" expected to be of type "list"';
    {
      remote_network_config+: converted,
    }
  ),
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_storage_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"storage_config" expected to be of type "list"';
    {
      storage_config: converted,
    }
  ),
  with_storage_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"storage_config" expected to be of type "list"';
    {
      storage_config+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_upgrade_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"upgrade_policy" expected to be of type "list"';
    {
      upgrade_policy: converted,
    }
  ),
  with_upgrade_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"upgrade_policy" expected to be of type "list"';
    {
      upgrade_policy+: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  with_vpc_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vpc_config" expected to be of type "list"';
    {
      vpc_config: converted,
    }
  ),
  with_vpc_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vpc_config" expected to be of type "list"';
    {
      vpc_config+: converted,
    }
  ),
  with_zonal_shift_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"zonal_shift_config" expected to be of type "list"';
    {
      zonal_shift_config: converted,
    }
  ),
  with_zonal_shift_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"zonal_shift_config" expected to be of type "list"';
    {
      zonal_shift_config+: converted,
    }
  ),
}
