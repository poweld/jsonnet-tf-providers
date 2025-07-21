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
  with_creation_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_time" expected to be of type "string"';
    {
      creation_time: converted,
    }
  ),
  with_database_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
    }
  ),
  with_last_updated_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_time" expected to be of type "string"';
    {
      last_updated_time: converted,
    }
  ),
  with_magnetic_store_write_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"magnetic_store_write_properties" expected to be of type "list"';
    {
      magnetic_store_write_properties: converted,
    }
  ),
  with_magnetic_store_write_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"magnetic_store_write_properties" expected to be of type "list"';
    {
      magnetic_store_write_properties+: converted,
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
  with_retention_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"retention_properties" expected to be of type "list"';
    {
      retention_properties: converted,
    }
  ),
  with_retention_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"retention_properties" expected to be of type "list"';
    {
      retention_properties+: converted,
    }
  ),
  with_schema(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"schema" expected to be of type "list"';
    {
      schema: converted,
    }
  ),
  with_schema_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"schema" expected to be of type "list"';
    {
      schema+: converted,
    }
  ),
  with_table_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_status" expected to be of type "string"';
    {
      table_status: converted,
    }
  ),
}
