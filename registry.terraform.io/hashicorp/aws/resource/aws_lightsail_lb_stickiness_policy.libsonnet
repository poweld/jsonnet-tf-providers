{
  local block = self,
  new(cookie_duration, enabled, lb_name):: (
    {}
    + block.with_cookie_duration(cookie_duration)
    + block.with_enabled(enabled)
    + block.with_lb_name(lb_name)
  ),
  with_cookie_duration(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"cookie_duration" expected to be of type "number"';
    {
      cookie_duration: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_lb_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"lb_name" expected to be of type "string"';
    {
      lb_name: converted,
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
