{
  local block = self,
  new(pool_id):: (
    {}
    + block.with_pool_id(pool_id)
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
  with_network_border_group(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_border_group" expected to be of type "string"';
    {
      network_border_group: converted,
    }
  ),
  with_pool_address_ranges(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"pool_address_ranges" expected to be of type "list"';
    {
      pool_address_ranges: converted,
    }
  ),
  with_pool_address_ranges_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"pool_address_ranges" expected to be of type "list"';
    {
      pool_address_ranges+: converted,
    }
  ),
  with_pool_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"pool_id" expected to be of type "string"';
    {
      pool_id: converted,
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
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_total_address_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"total_address_count" expected to be of type "number"';
    {
      total_address_count: converted,
    }
  ),
  with_total_available_address_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"total_available_address_count" expected to be of type "number"';
    {
      total_available_address_count: converted,
    }
  ),
}
