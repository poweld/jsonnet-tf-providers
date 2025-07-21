{
  local block = self,
  new(local_gateway_route_table_id, vpc_id):: (
    {}
    + block.with_local_gateway_route_table_id(local_gateway_route_table_id)
    + block.with_vpc_id(vpc_id)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_local_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"local_gateway_id" expected to be of type "string"';
    {
      local_gateway_id: converted,
    }
  ),
  with_local_gateway_route_table_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"local_gateway_route_table_id" expected to be of type "string"';
    {
      local_gateway_route_table_id: converted,
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
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
}
