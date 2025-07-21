{
  local block = self,
  new(name, trigger_type, trigger_value):: (
    {}
    + block.with_name(name)
    + block.with_trigger_type(trigger_type)
    + block.with_trigger_value(trigger_value)
  ),
  with_disabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disabled" expected to be of type "bool"';
    {
      disabled: converted,
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
  with_trigger_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"trigger_type" expected to be of type "string"';
    {
      trigger_type: converted,
    }
  ),
  with_trigger_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"trigger_value" expected to be of type "string"';
    {
      trigger_value: converted,
    }
  ),
  target_applications:: {
    local block = self,
    new(aws_region, priority, sip_media_application_id):: (
      {}
      + block.with_aws_region(aws_region)
      + block.with_priority(priority)
      + block.with_sip_media_application_id(sip_media_application_id)
    ),
    with_aws_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"aws_region" expected to be of type "string"';
      {
        aws_region: converted,
      }
    ),
    with_priority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    with_sip_media_application_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"sip_media_application_id" expected to be of type "string"';
      {
        sip_media_application_id: converted,
      }
    ),
  },
  with_target_applications(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_applications: value,
    }
  ),
  with_target_applications_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_applications+: converted,
    }
  ),
}
