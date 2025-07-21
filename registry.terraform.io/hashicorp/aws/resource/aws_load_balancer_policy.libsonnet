{
  local block = self,
  new(load_balancer_name, policy_name, policy_type_name):: (
    {}
    + block.with_load_balancer_name(load_balancer_name)
    + block.with_policy_name(policy_name)
    + block.with_policy_type_name(policy_type_name)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_load_balancer_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancer_name" expected to be of type "string"';
    {
      load_balancer_name: converted,
    }
  ),
  with_policy_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_name" expected to be of type "string"';
    {
      policy_name: converted,
    }
  ),
  with_policy_type_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_type_name" expected to be of type "string"';
    {
      policy_type_name: converted,
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
  policy_attribute:: {
    local block = self,
    new():: (
      {}
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  with_policy_attribute(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policy_attribute: value,
    }
  ),
  with_policy_attribute_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policy_attribute+: converted,
    }
  ),
}
