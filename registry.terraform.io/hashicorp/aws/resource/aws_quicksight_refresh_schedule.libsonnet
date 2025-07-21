{
  local block = self,
  new(data_set_id, schedule_id):: (
    {}
    + block.with_data_set_id(data_set_id)
    + block.with_schedule_id(schedule_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_aws_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  with_data_set_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_set_id" expected to be of type "string"';
    {
      data_set_id: converted,
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
  with_schedule_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule_id" expected to be of type "string"';
    {
      schedule_id: converted,
    }
  ),
  schedule:: {
    local block = self,
    new(refresh_type):: (
      {}
      + block.with_refresh_type(refresh_type)
    ),
    with_refresh_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"refresh_type" expected to be of type "string"';
      {
        refresh_type: converted,
      }
    ),
    with_start_after_date_time(value):: (
      local converted = value;
      assert std.isString(converted) : '"start_after_date_time" expected to be of type "string"';
      {
        start_after_date_time: converted,
      }
    ),
    schedule_frequency:: {
      local block = self,
      new(interval):: (
        {}
        + block.with_interval(interval)
      ),
      with_interval(value):: (
        local converted = value;
        assert std.isString(converted) : '"interval" expected to be of type "string"';
        {
          interval: converted,
        }
      ),
      with_time_of_the_day(value):: (
        local converted = value;
        assert std.isString(converted) : '"time_of_the_day" expected to be of type "string"';
        {
          time_of_the_day: converted,
        }
      ),
      with_timezone(value):: (
        local converted = value;
        assert std.isString(converted) : '"timezone" expected to be of type "string"';
        {
          timezone: converted,
        }
      ),
      refresh_on_day:: {
        local block = self,
        new():: (
          {}
        ),
        with_day_of_month(value):: (
          local converted = value;
          assert std.isString(converted) : '"day_of_month" expected to be of type "string"';
          {
            day_of_month: converted,
          }
        ),
        with_day_of_week(value):: (
          local converted = value;
          assert std.isString(converted) : '"day_of_week" expected to be of type "string"';
          {
            day_of_week: converted,
          }
        ),
      },
      with_refresh_on_day(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          refresh_on_day: value,
        }
      ),
      with_refresh_on_day_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          refresh_on_day+: converted,
        }
      ),
    },
    with_schedule_frequency(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schedule_frequency: value,
      }
    ),
    with_schedule_frequency_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schedule_frequency+: converted,
      }
    ),
  },
  with_schedule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule: value,
    }
  ),
  with_schedule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule+: converted,
    }
  ),
}
