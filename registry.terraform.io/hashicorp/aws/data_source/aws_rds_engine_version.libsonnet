{
  local block = self,
  new(engine):: (
    {}
    + block.with_engine(engine)
  ),
  with_default_character_set(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_character_set" expected to be of type "string"';
    {
      default_character_set: converted,
    }
  ),
  with_default_only(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"default_only" expected to be of type "bool"';
    {
      default_only: converted,
    }
  ),
  with_engine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  with_engine_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_description" expected to be of type "string"';
    {
      engine_description: converted,
    }
  ),
  with_exportable_log_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exportable_log_types" expected to be of type "set"';
    {
      exportable_log_types: converted,
    }
  ),
  with_exportable_log_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exportable_log_types" expected to be of type "set"';
    {
      exportable_log_types+: converted,
    }
  ),
  with_has_major_target(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"has_major_target" expected to be of type "bool"';
    {
      has_major_target: converted,
    }
  ),
  with_has_minor_target(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"has_minor_target" expected to be of type "bool"';
    {
      has_minor_target: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_include_all(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_all" expected to be of type "bool"';
    {
      include_all: converted,
    }
  ),
  with_latest(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"latest" expected to be of type "bool"';
    {
      latest: converted,
    }
  ),
  with_parameter_group_family(value):: (
    local converted = value;
    assert std.isString(converted) : '"parameter_group_family" expected to be of type "string"';
    {
      parameter_group_family: converted,
    }
  ),
  with_preferred_major_targets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_major_targets" expected to be of type "list"';
    {
      preferred_major_targets: converted,
    }
  ),
  with_preferred_major_targets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_major_targets" expected to be of type "list"';
    {
      preferred_major_targets+: converted,
    }
  ),
  with_preferred_upgrade_targets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_upgrade_targets" expected to be of type "list"';
    {
      preferred_upgrade_targets: converted,
    }
  ),
  with_preferred_upgrade_targets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_upgrade_targets" expected to be of type "list"';
    {
      preferred_upgrade_targets+: converted,
    }
  ),
  with_preferred_versions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_versions" expected to be of type "list"';
    {
      preferred_versions: converted,
    }
  ),
  with_preferred_versions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_versions" expected to be of type "list"';
    {
      preferred_versions+: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_supported_character_sets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_character_sets" expected to be of type "set"';
    {
      supported_character_sets: converted,
    }
  ),
  with_supported_character_sets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_character_sets" expected to be of type "set"';
    {
      supported_character_sets+: converted,
    }
  ),
  with_supported_feature_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_feature_names" expected to be of type "set"';
    {
      supported_feature_names: converted,
    }
  ),
  with_supported_feature_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_feature_names" expected to be of type "set"';
    {
      supported_feature_names+: converted,
    }
  ),
  with_supported_modes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_modes" expected to be of type "set"';
    {
      supported_modes: converted,
    }
  ),
  with_supported_modes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_modes" expected to be of type "set"';
    {
      supported_modes+: converted,
    }
  ),
  with_supported_timezones(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_timezones" expected to be of type "set"';
    {
      supported_timezones: converted,
    }
  ),
  with_supported_timezones_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_timezones" expected to be of type "set"';
    {
      supported_timezones+: converted,
    }
  ),
  with_supports_certificate_rotation_without_restart(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_certificate_rotation_without_restart" expected to be of type "bool"';
    {
      supports_certificate_rotation_without_restart: converted,
    }
  ),
  with_supports_global_databases(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_global_databases" expected to be of type "bool"';
    {
      supports_global_databases: converted,
    }
  ),
  with_supports_integrations(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_integrations" expected to be of type "bool"';
    {
      supports_integrations: converted,
    }
  ),
  with_supports_limitless_database(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_limitless_database" expected to be of type "bool"';
    {
      supports_limitless_database: converted,
    }
  ),
  with_supports_local_write_forwarding(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_local_write_forwarding" expected to be of type "bool"';
    {
      supports_local_write_forwarding: converted,
    }
  ),
  with_supports_log_exports_to_cloudwatch(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_log_exports_to_cloudwatch" expected to be of type "bool"';
    {
      supports_log_exports_to_cloudwatch: converted,
    }
  ),
  with_supports_parallel_query(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_parallel_query" expected to be of type "bool"';
    {
      supports_parallel_query: converted,
    }
  ),
  with_supports_read_replica(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_read_replica" expected to be of type "bool"';
    {
      supports_read_replica: converted,
    }
  ),
  with_valid_major_targets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"valid_major_targets" expected to be of type "set"';
    {
      valid_major_targets: converted,
    }
  ),
  with_valid_major_targets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"valid_major_targets" expected to be of type "set"';
    {
      valid_major_targets+: converted,
    }
  ),
  with_valid_minor_targets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"valid_minor_targets" expected to be of type "set"';
    {
      valid_minor_targets: converted,
    }
  ),
  with_valid_minor_targets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"valid_minor_targets" expected to be of type "set"';
    {
      valid_minor_targets+: converted,
    }
  ),
  with_valid_upgrade_targets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"valid_upgrade_targets" expected to be of type "set"';
    {
      valid_upgrade_targets: converted,
    }
  ),
  with_valid_upgrade_targets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"valid_upgrade_targets" expected to be of type "set"';
    {
      valid_upgrade_targets+: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  with_version_actual(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_actual" expected to be of type "string"';
    {
      version_actual: converted,
    }
  ),
  with_version_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_description" expected to be of type "string"';
    {
      version_description: converted,
    }
  ),
  filter:: {
    local block = self,
    new(name, values):: (
      {}
      + block.with_name(name)
      + block.with_values(values)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values: converted,
      }
    ),
    with_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values+: converted,
      }
    ),
  },
  with_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  with_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
}
