{
  local block = self,
  new(enabled):: (
    {}
    + block.with_enabled(enabled)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_etag(value):: (
    local converted = value;
    assert std.isString(converted) : '"etag" expected to be of type "string"';
    {
      etag: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_modified_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_time" expected to be of type "string"';
    {
      last_modified_time: converted,
    }
  ),
  staging_distribution_dns_names:: {
    local block = self,
    new(quantity):: (
      {}
      + block.with_quantity(quantity)
    ),
    with_items(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
      {
        items: converted,
      }
    ),
    with_items_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
      {
        items+: converted,
      }
    ),
    with_quantity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"quantity" expected to be of type "number"';
      {
        quantity: converted,
      }
    ),
  },
  traffic_config:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    single_header_config:: {
      local block = self,
      new(header, value):: (
        {}
        + block.with_header(header)
        + block.with_value(value)
      ),
      with_header(value):: (
        local converted = value;
        assert std.isString(converted) : '"header" expected to be of type "string"';
        {
          header: converted,
        }
      ),
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    single_weight_config:: {
      local block = self,
      new(weight):: (
        {}
        + block.with_weight(weight)
      ),
      with_weight(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"weight" expected to be of type "number"';
        {
          weight: converted,
        }
      ),
      session_stickiness_config:: {
        local block = self,
        new(idle_ttl, maximum_ttl):: (
          {}
          + block.with_idle_ttl(idle_ttl)
          + block.with_maximum_ttl(maximum_ttl)
        ),
        with_idle_ttl(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"idle_ttl" expected to be of type "number"';
          {
            idle_ttl: converted,
          }
        ),
        with_maximum_ttl(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"maximum_ttl" expected to be of type "number"';
          {
            maximum_ttl: converted,
          }
        ),
      },
      with_session_stickiness_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          session_stickiness_config: value,
        }
      ),
      with_session_stickiness_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          session_stickiness_config+: converted,
        }
      ),
    },
    with_single_header_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        single_header_config: value,
      }
    ),
    with_single_weight_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        single_weight_config: value,
      }
    ),
    with_single_header_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        single_header_config+: converted,
      }
    ),
    with_single_weight_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        single_weight_config+: converted,
      }
    ),
  },
  with_staging_distribution_dns_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      staging_distribution_dns_names: value,
    }
  ),
  with_traffic_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      traffic_config: value,
    }
  ),
  with_staging_distribution_dns_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      staging_distribution_dns_names+: converted,
    }
  ),
  with_traffic_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      traffic_config+: converted,
    }
  ),
}
