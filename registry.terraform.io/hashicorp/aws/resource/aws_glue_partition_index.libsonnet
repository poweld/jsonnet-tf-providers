{
  local block = self,
  new(database_name, table_name):: (
    {}
    + block.with_database_name(database_name)
    + block.with_table_name(table_name)
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
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_table_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_name" expected to be of type "string"';
    {
      table_name: converted,
    }
  ),
  partition_index:: {
    local block = self,
    new():: (
      {}
    ),
    with_index_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"index_name" expected to be of type "string"';
      {
        index_name: converted,
      }
    ),
    with_index_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"index_status" expected to be of type "string"';
      {
        index_status: converted,
      }
    ),
    with_keys(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"keys" expected to be of type "list"';
      {
        keys: converted,
      }
    ),
    with_keys_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"keys" expected to be of type "list"';
      {
        keys+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  with_partition_index(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      partition_index: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_partition_index_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      partition_index+: converted,
    }
  ),
}
