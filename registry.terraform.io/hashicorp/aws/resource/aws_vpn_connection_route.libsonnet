{
  local block = self,
  new(destination_cidr_block, vpn_connection_id):: (
    {}
    + block.with_destination_cidr_block(destination_cidr_block)
    + block.with_vpn_connection_id(vpn_connection_id)
  ),
  with_destination_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_cidr_block" expected to be of type "string"';
    {
      destination_cidr_block: converted,
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
  with_vpn_connection_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpn_connection_id" expected to be of type "string"';
    {
      vpn_connection_id: converted,
    }
  ),
}
