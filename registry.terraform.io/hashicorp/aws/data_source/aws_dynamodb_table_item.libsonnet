{
  local block = self,
  new(key, table_name):: (
    {}
    + block.with_key(key)
    + block.with_table_name(table_name)
  ),
  with_expression_attribute_names(value):: (
    local converted = value;
    assert std.isObject(converted) : '"expression_attribute_names" expected to be of type "map"';
    {
      expression_attribute_names: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_item(value):: (
    local converted = value;
    assert std.isString(converted) : '"item" expected to be of type "string"';
    {
      item: converted,
    }
  ),
  with_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  with_projection_expression(value):: (
    local converted = value;
    assert std.isString(converted) : '"projection_expression" expected to be of type "string"';
    {
      projection_expression: converted,
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
}
