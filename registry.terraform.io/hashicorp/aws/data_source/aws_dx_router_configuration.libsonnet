{
  local block = self,
  new(router_type_identifier, virtual_interface_id):: (
    {}
    + block.with_router_type_identifier(router_type_identifier)
    + block.with_virtual_interface_id(virtual_interface_id)
  ),
  with_customer_router_config(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_router_config" expected to be of type "string"';
    {
      customer_router_config: converted,
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
  with_router(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"router" expected to be of type "list"';
    {
      router: converted,
    }
  ),
  with_router_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"router" expected to be of type "list"';
    {
      router+: converted,
    }
  ),
  with_router_type_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"router_type_identifier" expected to be of type "string"';
    {
      router_type_identifier: converted,
    }
  ),
  with_virtual_interface_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"virtual_interface_id" expected to be of type "string"';
    {
      virtual_interface_id: converted,
    }
  ),
  with_virtual_interface_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"virtual_interface_name" expected to be of type "string"';
    {
      virtual_interface_name: converted,
    }
  ),
}
