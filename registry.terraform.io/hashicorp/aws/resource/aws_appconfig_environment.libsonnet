{
  local block = self,
  new(application_id, name):: (
    {}
    + block.with_application_id(application_id)
    + block.with_name(name)
  ),
  with_application_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_id" expected to be of type "string"';
    {
      application_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_environment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_id" expected to be of type "string"';
    {
      environment_id: converted,
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
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  monitor:: {
    local block = self,
    new(alarm_arn):: (
      {}
      + block.with_alarm_arn(alarm_arn)
    ),
    with_alarm_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"alarm_arn" expected to be of type "string"';
      {
        alarm_arn: converted,
      }
    ),
    with_alarm_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"alarm_role_arn" expected to be of type "string"';
      {
        alarm_role_arn: converted,
      }
    ),
  },
  with_monitor(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      monitor: value,
    }
  ),
  with_monitor_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      monitor+: converted,
    }
  ),
}
