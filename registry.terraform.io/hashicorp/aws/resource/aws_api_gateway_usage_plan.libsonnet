{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
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
  with_product_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"product_code" expected to be of type "string"';
    {
      product_code: converted,
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
  api_stages:: {
    local block = self,
    new(api_id, stage):: (
      {}
      + block.with_api_id(api_id)
      + block.with_stage(stage)
    ),
    with_api_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"api_id" expected to be of type "string"';
      {
        api_id: converted,
      }
    ),
    with_stage(value):: (
      local converted = value;
      assert std.isString(converted) : '"stage" expected to be of type "string"';
      {
        stage: converted,
      }
    ),
    throttle:: {
      local block = self,
      new(path):: (
        {}
        + block.with_path(path)
      ),
      with_burst_limit(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"burst_limit" expected to be of type "number"';
        {
          burst_limit: converted,
        }
      ),
      with_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"path" expected to be of type "string"';
        {
          path: converted,
        }
      ),
      with_rate_limit(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"rate_limit" expected to be of type "number"';
        {
          rate_limit: converted,
        }
      ),
    },
    with_throttle(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        throttle: value,
      }
    ),
    with_throttle_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        throttle+: converted,
      }
    ),
  },
  quota_settings:: {
    local block = self,
    new(limit, period):: (
      {}
      + block.with_limit(limit)
      + block.with_period(period)
    ),
    with_limit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"limit" expected to be of type "number"';
      {
        limit: converted,
      }
    ),
    with_offset(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"offset" expected to be of type "number"';
      {
        offset: converted,
      }
    ),
    with_period(value):: (
      local converted = value;
      assert std.isString(converted) : '"period" expected to be of type "string"';
      {
        period: converted,
      }
    ),
  },
  throttle_settings:: {
    local block = self,
    new():: (
      {}
    ),
    with_burst_limit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"burst_limit" expected to be of type "number"';
      {
        burst_limit: converted,
      }
    ),
    with_rate_limit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"rate_limit" expected to be of type "number"';
      {
        rate_limit: converted,
      }
    ),
  },
  with_api_stages(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      api_stages: value,
    }
  ),
  with_quota_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      quota_settings: value,
    }
  ),
  with_throttle_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      throttle_settings: value,
    }
  ),
  with_api_stages_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      api_stages+: converted,
    }
  ),
  with_quota_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      quota_settings+: converted,
    }
  ),
  with_throttle_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      throttle_settings+: converted,
    }
  ),
}
