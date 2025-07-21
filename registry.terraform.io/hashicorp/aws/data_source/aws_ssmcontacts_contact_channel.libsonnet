{
  local block = self,
  new(arn):: (
    {}
    + block.with_arn(arn)
  ),
  with_activation_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"activation_status" expected to be of type "string"';
    {
      activation_status: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_contact_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"contact_id" expected to be of type "string"';
    {
      contact_id: converted,
    }
  ),
  with_delivery_address(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"delivery_address" expected to be of type "list"';
    {
      delivery_address: converted,
    }
  ),
  with_delivery_address_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"delivery_address" expected to be of type "list"';
    {
      delivery_address+: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
