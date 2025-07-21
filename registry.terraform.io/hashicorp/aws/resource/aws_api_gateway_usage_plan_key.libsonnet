{
  local block = self,
  new(key_id, key_type, usage_plan_id):: (
    {}
    + block.with_key_id(key_id)
    + block.with_key_type(key_type)
    + block.with_usage_plan_id(usage_plan_id)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_id" expected to be of type "string"';
    {
      key_id: converted,
    }
  ),
  with_key_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_type" expected to be of type "string"';
    {
      key_type: converted,
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
  with_usage_plan_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"usage_plan_id" expected to be of type "string"';
    {
      usage_plan_id: converted,
    }
  ),
  with_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"value" expected to be of type "string"';
    {
      value: converted,
    }
  ),
}
