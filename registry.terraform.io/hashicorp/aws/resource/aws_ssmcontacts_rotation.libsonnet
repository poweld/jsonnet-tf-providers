{
  local block = self,
  new(contact_ids, name, time_zone_id):: (
    {}
    + block.with_contact_ids(contact_ids)
    + block.with_name(name)
    + block.with_time_zone_id(time_zone_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_contact_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"contact_ids" expected to be of type "list"';
    {
      contact_ids: converted,
    }
  ),
  with_contact_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"contact_ids" expected to be of type "list"';
    {
      contact_ids+: converted,
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
  with_start_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_time" expected to be of type "string"';
    {
      start_time: converted,
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
  with_time_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"time_zone_id" expected to be of type "string"';
    {
      time_zone_id: converted,
    }
  ),
  recurrence:: {
    local block = self,
    new(number_of_on_calls, recurrence_multiplier):: (
      {}
      + block.with_number_of_on_calls(number_of_on_calls)
      + block.with_recurrence_multiplier(recurrence_multiplier)
    ),
    with_number_of_on_calls(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"number_of_on_calls" expected to be of type "number"';
      {
        number_of_on_calls: converted,
      }
    ),
    with_recurrence_multiplier(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"recurrence_multiplier" expected to be of type "number"';
      {
        recurrence_multiplier: converted,
      }
    ),
    daily_settings:: {
      local block = self,
      new(hour_of_day, minute_of_hour):: (
        {}
        + block.with_hour_of_day(hour_of_day)
        + block.with_minute_of_hour(minute_of_hour)
      ),
      with_hour_of_day(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"hour_of_day" expected to be of type "number"';
        {
          hour_of_day: converted,
        }
      ),
      with_minute_of_hour(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"minute_of_hour" expected to be of type "number"';
        {
          minute_of_hour: converted,
        }
      ),
    },
    monthly_settings:: {
      local block = self,
      new(day_of_month):: (
        {}
        + block.with_day_of_month(day_of_month)
      ),
      with_day_of_month(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"day_of_month" expected to be of type "number"';
        {
          day_of_month: converted,
        }
      ),
      hand_off_time:: {
        local block = self,
        new(hour_of_day, minute_of_hour):: (
          {}
          + block.with_hour_of_day(hour_of_day)
          + block.with_minute_of_hour(minute_of_hour)
        ),
        with_hour_of_day(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"hour_of_day" expected to be of type "number"';
          {
            hour_of_day: converted,
          }
        ),
        with_minute_of_hour(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"minute_of_hour" expected to be of type "number"';
          {
            minute_of_hour: converted,
          }
        ),
      },
      with_hand_off_time(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          hand_off_time: value,
        }
      ),
      with_hand_off_time_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          hand_off_time+: converted,
        }
      ),
    },
    shift_coverages:: {
      local block = self,
      new(map_block_key):: (
        {}
        + block.with_map_block_key(map_block_key)
      ),
      with_map_block_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
        {
          map_block_key: converted,
        }
      ),
      coverage_times:: {
        local block = self,
        new():: (
          {}
        ),
        end:: {
          local block = self,
          new(hour_of_day, minute_of_hour):: (
            {}
            + block.with_hour_of_day(hour_of_day)
            + block.with_minute_of_hour(minute_of_hour)
          ),
          with_hour_of_day(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"hour_of_day" expected to be of type "number"';
            {
              hour_of_day: converted,
            }
          ),
          with_minute_of_hour(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"minute_of_hour" expected to be of type "number"';
            {
              minute_of_hour: converted,
            }
          ),
        },
        start:: {
          local block = self,
          new(hour_of_day, minute_of_hour):: (
            {}
            + block.with_hour_of_day(hour_of_day)
            + block.with_minute_of_hour(minute_of_hour)
          ),
          with_hour_of_day(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"hour_of_day" expected to be of type "number"';
            {
              hour_of_day: converted,
            }
          ),
          with_minute_of_hour(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"minute_of_hour" expected to be of type "number"';
            {
              minute_of_hour: converted,
            }
          ),
        },
        with_end(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            end: value,
          }
        ),
        with_start(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            start: value,
          }
        ),
        with_end_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            end+: converted,
          }
        ),
        with_start_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            start+: converted,
          }
        ),
      },
      with_coverage_times(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          coverage_times: value,
        }
      ),
      with_coverage_times_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          coverage_times+: converted,
        }
      ),
    },
    weekly_settings:: {
      local block = self,
      new(day_of_week):: (
        {}
        + block.with_day_of_week(day_of_week)
      ),
      with_day_of_week(value):: (
        local converted = value;
        assert std.isString(converted) : '"day_of_week" expected to be of type "string"';
        {
          day_of_week: converted,
        }
      ),
      hand_off_time:: {
        local block = self,
        new(hour_of_day, minute_of_hour):: (
          {}
          + block.with_hour_of_day(hour_of_day)
          + block.with_minute_of_hour(minute_of_hour)
        ),
        with_hour_of_day(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"hour_of_day" expected to be of type "number"';
          {
            hour_of_day: converted,
          }
        ),
        with_minute_of_hour(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"minute_of_hour" expected to be of type "number"';
          {
            minute_of_hour: converted,
          }
        ),
      },
      with_hand_off_time(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          hand_off_time: value,
        }
      ),
      with_hand_off_time_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          hand_off_time+: converted,
        }
      ),
    },
    with_daily_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        daily_settings: value,
      }
    ),
    with_monthly_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        monthly_settings: value,
      }
    ),
    with_shift_coverages(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        shift_coverages: value,
      }
    ),
    with_weekly_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        weekly_settings: value,
      }
    ),
    with_daily_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        daily_settings+: converted,
      }
    ),
    with_monthly_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        monthly_settings+: converted,
      }
    ),
    with_shift_coverages_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        shift_coverages+: converted,
      }
    ),
    with_weekly_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        weekly_settings+: converted,
      }
    ),
  },
  with_recurrence(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recurrence: value,
    }
  ),
  with_recurrence_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recurrence+: converted,
    }
  ),
}
