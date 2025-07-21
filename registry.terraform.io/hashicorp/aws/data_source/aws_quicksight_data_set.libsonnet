{
  local block = self,
  new(data_set_id):: (
    {}
    + block.with_data_set_id(data_set_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_aws_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  with_column_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"column_groups" expected to be of type "list"';
    {
      column_groups: converted,
    }
  ),
  with_column_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"column_groups" expected to be of type "list"';
    {
      column_groups+: converted,
    }
  ),
  with_column_level_permission_rules(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"column_level_permission_rules" expected to be of type "list"';
    {
      column_level_permission_rules: converted,
    }
  ),
  with_column_level_permission_rules_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"column_level_permission_rules" expected to be of type "list"';
    {
      column_level_permission_rules+: converted,
    }
  ),
  with_data_set_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_set_id" expected to be of type "string"';
    {
      data_set_id: converted,
    }
  ),
  with_data_set_usage_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"data_set_usage_configuration" expected to be of type "list"';
    {
      data_set_usage_configuration: converted,
    }
  ),
  with_data_set_usage_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"data_set_usage_configuration" expected to be of type "list"';
    {
      data_set_usage_configuration+: converted,
    }
  ),
  with_field_folders(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"field_folders" expected to be of type "set"';
    {
      field_folders: converted,
    }
  ),
  with_field_folders_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"field_folders" expected to be of type "set"';
    {
      field_folders+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_import_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"import_mode" expected to be of type "string"';
    {
      import_mode: converted,
    }
  ),
  with_logical_table_map(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"logical_table_map" expected to be of type "set"';
    {
      logical_table_map: converted,
    }
  ),
  with_logical_table_map_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"logical_table_map" expected to be of type "set"';
    {
      logical_table_map+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_permissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"permissions" expected to be of type "list"';
    {
      permissions: converted,
    }
  ),
  with_permissions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"permissions" expected to be of type "list"';
    {
      permissions+: converted,
    }
  ),
  with_physical_table_map(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"physical_table_map" expected to be of type "set"';
    {
      physical_table_map: converted,
    }
  ),
  with_physical_table_map_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"physical_table_map" expected to be of type "set"';
    {
      physical_table_map+: converted,
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
  with_row_level_permission_data_set(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"row_level_permission_data_set" expected to be of type "list"';
    {
      row_level_permission_data_set: converted,
    }
  ),
  with_row_level_permission_data_set_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"row_level_permission_data_set" expected to be of type "list"';
    {
      row_level_permission_data_set+: converted,
    }
  ),
  with_row_level_permission_tag_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"row_level_permission_tag_configuration" expected to be of type "list"';
    {
      row_level_permission_tag_configuration: converted,
    }
  ),
  with_row_level_permission_tag_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"row_level_permission_tag_configuration" expected to be of type "list"';
    {
      row_level_permission_tag_configuration+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
}
