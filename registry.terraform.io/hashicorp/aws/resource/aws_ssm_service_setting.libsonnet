{
  local block = self,
  new(setting_id, setting_value):: (
    {}
    + block.with_setting_id(setting_id)
    + block.with_setting_value(setting_value)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_setting_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"setting_id" expected to be of type "string"';
    {
      setting_id: converted,
    }
  ),
  with_setting_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"setting_value" expected to be of type "string"';
    {
      setting_value: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
