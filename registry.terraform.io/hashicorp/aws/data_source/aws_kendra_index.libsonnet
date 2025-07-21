{
  local block = self,
  new(id):: (
    {}
    + block.with_id(id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_capacity_units(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"capacity_units" expected to be of type "list"';
    {
      capacity_units: converted,
    }
  ),
  with_capacity_units_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"capacity_units" expected to be of type "list"';
    {
      capacity_units+: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_document_metadata_configuration_updates(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"document_metadata_configuration_updates" expected to be of type "set"';
    {
      document_metadata_configuration_updates: converted,
    }
  ),
  with_document_metadata_configuration_updates_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"document_metadata_configuration_updates" expected to be of type "set"';
    {
      document_metadata_configuration_updates+: converted,
    }
  ),
  with_edition(value):: (
    local converted = value;
    assert std.isString(converted) : '"edition" expected to be of type "string"';
    {
      edition: converted,
    }
  ),
  with_error_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"error_message" expected to be of type "string"';
    {
      error_message: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_index_statistics(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"index_statistics" expected to be of type "list"';
    {
      index_statistics: converted,
    }
  ),
  with_index_statistics_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"index_statistics" expected to be of type "list"';
    {
      index_statistics+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  with_server_side_encryption_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"server_side_encryption_configuration" expected to be of type "list"';
    {
      server_side_encryption_configuration: converted,
    }
  ),
  with_server_side_encryption_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"server_side_encryption_configuration" expected to be of type "list"';
    {
      server_side_encryption_configuration+: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_updated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"updated_at" expected to be of type "string"';
    {
      updated_at: converted,
    }
  ),
  with_user_context_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_context_policy" expected to be of type "string"';
    {
      user_context_policy: converted,
    }
  ),
  with_user_group_resolution_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"user_group_resolution_configuration" expected to be of type "list"';
    {
      user_group_resolution_configuration: converted,
    }
  ),
  with_user_group_resolution_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"user_group_resolution_configuration" expected to be of type "list"';
    {
      user_group_resolution_configuration+: converted,
    }
  ),
  with_user_token_configurations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"user_token_configurations" expected to be of type "list"';
    {
      user_token_configurations: converted,
    }
  ),
  with_user_token_configurations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"user_token_configurations" expected to be of type "list"';
    {
      user_token_configurations+: converted,
    }
  ),
}
