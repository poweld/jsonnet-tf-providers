{
  local block = self,
  new(amount, resource_arn, usage_type):: (
    {}
    + block.with_amount(amount)
    + block.with_resource_arn(resource_arn)
    + block.with_usage_type(usage_type)
  ),
  with_amount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"amount" expected to be of type "number"';
    {
      amount: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_breach_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"breach_action" expected to be of type "string"';
    {
      breach_action: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_period(value):: (
    local converted = value;
    assert std.isString(converted) : '"period" expected to be of type "string"';
    {
      period: converted,
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
  with_resource_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
    {
      resource_arn: converted,
    }
  ),
  with_usage_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"usage_type" expected to be of type "string"';
    {
      usage_type: converted,
    }
  ),
}
