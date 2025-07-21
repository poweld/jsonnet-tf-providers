{
  local block = self,
  new(class_name, database_name, name, owner_name, owner_type):: (
    {}
    + block.with_class_name(class_name)
    + block.with_database_name(database_name)
    + block.with_name(name)
    + block.with_owner_name(owner_name)
    + block.with_owner_type(owner_type)
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
  with_class_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"class_name" expected to be of type "string"';
    {
      class_name: converted,
    }
  ),
  with_create_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"create_time" expected to be of type "string"';
    {
      create_time: converted,
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
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_owner_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_name" expected to be of type "string"';
    {
      owner_name: converted,
    }
  ),
  with_owner_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_type" expected to be of type "string"';
    {
      owner_type: converted,
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
  resource_uris:: {
    local block = self,
    new(resource_type, uri):: (
      {}
      + block.with_resource_type(resource_type)
      + block.with_uri(uri)
    ),
    with_resource_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_type" expected to be of type "string"';
      {
        resource_type: converted,
      }
    ),
    with_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"uri" expected to be of type "string"';
      {
        uri: converted,
      }
    ),
  },
  with_resource_uris(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_uris: value,
    }
  ),
  with_resource_uris_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_uris+: converted,
    }
  ),
}
