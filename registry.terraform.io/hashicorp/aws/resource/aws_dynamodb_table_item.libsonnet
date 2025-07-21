{
  local block = self,
  new(hash_key, item, table_name):: (
    {}
    + block.with_hash_key(hash_key)
    + block.with_item(item)
    + block.with_table_name(table_name)
  ),
  with_hash_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"hash_key" expected to be of type "string"';
    {
      hash_key: converted,
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
  with_range_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"range_key" expected to be of type "string"';
    {
      range_key: converted,
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
