{
  local block = self,
  new(vpc_endpoint_id, vpc_endpoint_service_id):: (
    {}
    + block.with_vpc_endpoint_id(vpc_endpoint_id)
    + block.with_vpc_endpoint_service_id(vpc_endpoint_service_id)
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
  with_vpc_endpoint_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_endpoint_id" expected to be of type "string"';
    {
      vpc_endpoint_id: converted,
    }
  ),
  with_vpc_endpoint_service_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_endpoint_service_id" expected to be of type "string"';
    {
      vpc_endpoint_service_id: converted,
    }
  ),
  with_vpc_endpoint_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_endpoint_state" expected to be of type "string"';
    {
      vpc_endpoint_state: converted,
    }
  ),
}
