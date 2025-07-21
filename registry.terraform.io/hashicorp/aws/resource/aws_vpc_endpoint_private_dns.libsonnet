{
  local block = self,
  new(private_dns_enabled, vpc_endpoint_id):: (
    {}
    + block.with_private_dns_enabled(private_dns_enabled)
    + block.with_vpc_endpoint_id(vpc_endpoint_id)
  ),
  with_private_dns_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"private_dns_enabled" expected to be of type "bool"';
    {
      private_dns_enabled: converted,
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
}
