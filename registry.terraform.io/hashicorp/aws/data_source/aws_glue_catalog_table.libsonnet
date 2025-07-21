{
  local block = self,
  new(database_name, name):: (
    {}
    + block.with_database_name(database_name)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_catalog_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
    }
  ),
  with_database_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner" expected to be of type "string"';
    {
      owner: converted,
    }
  ),
  with_parameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
    }
  ),
  with_partition_index(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"partition_index" expected to be of type "list"';
    {
      partition_index: converted,
    }
  ),
  with_partition_index_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"partition_index" expected to be of type "list"';
    {
      partition_index+: converted,
    }
  ),
  with_partition_keys(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"partition_keys" expected to be of type "list"';
    {
      partition_keys: converted,
    }
  ),
  with_partition_keys_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"partition_keys" expected to be of type "list"';
    {
      partition_keys+: converted,
    }
  ),
  with_query_as_of_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"query_as_of_time" expected to be of type "string"';
    {
      query_as_of_time: converted,
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
  with_retention(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retention" expected to be of type "number"';
    {
      retention: converted,
    }
  ),
  with_storage_descriptor(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"storage_descriptor" expected to be of type "list"';
    {
      storage_descriptor: converted,
    }
  ),
  with_storage_descriptor_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"storage_descriptor" expected to be of type "list"';
    {
      storage_descriptor+: converted,
    }
  ),
  with_table_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_type" expected to be of type "string"';
    {
      table_type: converted,
    }
  ),
  with_target_table(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"target_table" expected to be of type "list"';
    {
      target_table: converted,
    }
  ),
  with_target_table_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"target_table" expected to be of type "list"';
    {
      target_table+: converted,
    }
  ),
  with_transaction_id(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"transaction_id" expected to be of type "number"';
    {
      transaction_id: converted,
    }
  ),
  with_view_expanded_text(value):: (
    local converted = value;
    assert std.isString(converted) : '"view_expanded_text" expected to be of type "string"';
    {
      view_expanded_text: converted,
    }
  ),
  with_view_original_text(value):: (
    local converted = value;
    assert std.isString(converted) : '"view_original_text" expected to be of type "string"';
    {
      view_original_text: converted,
    }
  ),
}
