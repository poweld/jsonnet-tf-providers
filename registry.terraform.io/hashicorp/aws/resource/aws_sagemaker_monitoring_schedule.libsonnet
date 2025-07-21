{
  local block = self,
  new():: (
    {}
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
  monitoring_schedule_config:: {
    local block = self,
    new(monitoring_job_definition_name, monitoring_type):: (
      {}
      + block.with_monitoring_job_definition_name(monitoring_job_definition_name)
      + block.with_monitoring_type(monitoring_type)
    ),
    with_monitoring_job_definition_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"monitoring_job_definition_name" expected to be of type "string"';
      {
        monitoring_job_definition_name: converted,
      }
    ),
    with_monitoring_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"monitoring_type" expected to be of type "string"';
      {
        monitoring_type: converted,
      }
    ),
    schedule_config:: {
      local block = self,
      new(schedule_expression):: (
        {}
        + block.with_schedule_expression(schedule_expression)
      ),
      with_schedule_expression(value):: (
        local converted = value;
        assert std.isString(converted) : '"schedule_expression" expected to be of type "string"';
        {
          schedule_expression: converted,
        }
      ),
    },
    with_schedule_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schedule_config: value,
      }
    ),
    with_schedule_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schedule_config+: converted,
      }
    ),
  },
  with_monitoring_schedule_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      monitoring_schedule_config: value,
    }
  ),
  with_monitoring_schedule_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      monitoring_schedule_config+: converted,
    }
  ),
}
