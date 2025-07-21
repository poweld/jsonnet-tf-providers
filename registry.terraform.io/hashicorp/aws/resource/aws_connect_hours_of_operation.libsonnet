{
  local block = self,
  new(instance_id, name, time_zone):: (
    {}
    + block.with_instance_id(instance_id)
    + block.with_name(name)
    + block.with_time_zone(time_zone)
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
  with_hours_of_operation_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"hours_of_operation_id" expected to be of type "string"';
    {
      hours_of_operation_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
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
  with_time_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"time_zone" expected to be of type "string"';
    {
      time_zone: converted,
    }
  ),
  config:: {
    local block = self,
    new(day):: (
      {}
      + block.with_day(day)
    ),
    with_day(value):: (
      local converted = value;
      assert std.isString(converted) : '"day" expected to be of type "string"';
      {
        day: converted,
      }
    ),
    end_time:: {
      local block = self,
      new(hours, minutes):: (
        {}
        + block.with_hours(hours)
        + block.with_minutes(minutes)
      ),
      with_hours(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"hours" expected to be of type "number"';
        {
          hours: converted,
        }
      ),
      with_minutes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"minutes" expected to be of type "number"';
        {
          minutes: converted,
        }
      ),
    },
    start_time:: {
      local block = self,
      new(hours, minutes):: (
        {}
        + block.with_hours(hours)
        + block.with_minutes(minutes)
      ),
      with_hours(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"hours" expected to be of type "number"';
        {
          hours: converted,
        }
      ),
      with_minutes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"minutes" expected to be of type "number"';
        {
          minutes: converted,
        }
      ),
    },
    with_end_time(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        end_time: value,
      }
    ),
    with_start_time(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        start_time: value,
      }
    ),
    with_end_time_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        end_time+: converted,
      }
    ),
    with_start_time_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        start_time+: converted,
      }
    ),
  },
  with_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      config: value,
    }
  ),
  with_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      config+: converted,
    }
  ),
}
