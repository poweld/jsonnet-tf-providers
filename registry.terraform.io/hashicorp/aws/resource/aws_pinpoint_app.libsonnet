{
  local block = self,
  new():: (
    {}
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
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
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
  campaign_hook:: {
    local block = self,
    new():: (
      {}
    ),
    with_lambda_function_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"lambda_function_name" expected to be of type "string"';
      {
        lambda_function_name: converted,
      }
    ),
    with_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
    with_web_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"web_url" expected to be of type "string"';
      {
        web_url: converted,
      }
    ),
  },
  limits:: {
    local block = self,
    new():: (
      {}
    ),
    with_daily(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"daily" expected to be of type "number"';
      {
        daily: converted,
      }
    ),
    with_maximum_duration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_duration" expected to be of type "number"';
      {
        maximum_duration: converted,
      }
    ),
    with_messages_per_second(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"messages_per_second" expected to be of type "number"';
      {
        messages_per_second: converted,
      }
    ),
    with_total(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"total" expected to be of type "number"';
      {
        total: converted,
      }
    ),
  },
  quiet_time:: {
    local block = self,
    new():: (
      {}
    ),
    with_end(value):: (
      local converted = value;
      assert std.isString(converted) : '"end" expected to be of type "string"';
      {
        end: converted,
      }
    ),
    with_start(value):: (
      local converted = value;
      assert std.isString(converted) : '"start" expected to be of type "string"';
      {
        start: converted,
      }
    ),
  },
  with_campaign_hook(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      campaign_hook: value,
    }
  ),
  with_limits(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      limits: value,
    }
  ),
  with_quiet_time(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      quiet_time: value,
    }
  ),
  with_campaign_hook_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      campaign_hook+: converted,
    }
  ),
  with_limits_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      limits+: converted,
    }
  ),
  with_quiet_time_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      quiet_time+: converted,
    }
  ),
}
