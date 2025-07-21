{
  local block = self,
  new():: (
    {}
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
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_parameter_group_family(value):: (
    local converted = value;
    assert std.isString(converted) : '"parameter_group_family" expected to be of type "string"';
    {
      parameter_group_family: converted,
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
  with_supports_log_exports_to_cloudwatch(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_log_exports_to_cloudwatch" expected to be of type "bool"';
    {
      supports_log_exports_to_cloudwatch: converted,
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
  with_version_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_description" expected to be of type "string"';
    {
      version_description: converted,
    }
  ),
}
