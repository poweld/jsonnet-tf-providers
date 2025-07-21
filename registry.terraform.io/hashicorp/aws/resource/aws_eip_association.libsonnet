{
  local block = self,
  new():: (
    {}
  ),
  with_allocation_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"allocation_id" expected to be of type "string"';
    {
      allocation_id: converted,
    }
  ),
  with_allow_reassociation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_reassociation" expected to be of type "bool"';
    {
      allow_reassociation: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
    }
  ),
  with_network_interface_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
    {
      network_interface_id: converted,
    }
  ),
  with_private_ip_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_ip_address" expected to be of type "string"';
    {
      private_ip_address: converted,
    }
  ),
  with_public_ip(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_ip" expected to be of type "string"';
    {
      public_ip: converted,
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
}
