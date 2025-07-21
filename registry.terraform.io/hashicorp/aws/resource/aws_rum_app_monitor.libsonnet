{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_app_monitor_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_monitor_id" expected to be of type "string"';
    {
      app_monitor_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_cw_log_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cw_log_enabled" expected to be of type "bool"';
    {
      cw_log_enabled: converted,
    }
  ),
  with_cw_log_group(value):: (
    local converted = value;
    assert std.isString(converted) : '"cw_log_group" expected to be of type "string"';
    {
      cw_log_group: converted,
    }
  ),
  with_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  with_domain_list(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"domain_list" expected to be of type "list"';
    {
      domain_list: converted,
    }
  ),
  with_domain_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"domain_list" expected to be of type "list"';
    {
      domain_list+: converted,
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
  app_monitor_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_allow_cookies(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_cookies" expected to be of type "bool"';
      {
        allow_cookies: converted,
      }
    ),
    with_enable_xray(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_xray" expected to be of type "bool"';
      {
        enable_xray: converted,
      }
    ),
    with_excluded_pages(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_pages" expected to be of type "set"';
      {
        excluded_pages: converted,
      }
    ),
    with_excluded_pages_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_pages" expected to be of type "set"';
      {
        excluded_pages+: converted,
      }
    ),
    with_favorite_pages(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"favorite_pages" expected to be of type "set"';
      {
        favorite_pages: converted,
      }
    ),
    with_favorite_pages_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"favorite_pages" expected to be of type "set"';
      {
        favorite_pages+: converted,
      }
    ),
    with_guest_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"guest_role_arn" expected to be of type "string"';
      {
        guest_role_arn: converted,
      }
    ),
    with_identity_pool_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"identity_pool_id" expected to be of type "string"';
      {
        identity_pool_id: converted,
      }
    ),
    with_included_pages(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"included_pages" expected to be of type "set"';
      {
        included_pages: converted,
      }
    ),
    with_included_pages_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"included_pages" expected to be of type "set"';
      {
        included_pages+: converted,
      }
    ),
    with_session_sample_rate(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"session_sample_rate" expected to be of type "number"';
      {
        session_sample_rate: converted,
      }
    ),
    with_telemetries(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"telemetries" expected to be of type "set"';
      {
        telemetries: converted,
      }
    ),
    with_telemetries_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"telemetries" expected to be of type "set"';
      {
        telemetries+: converted,
      }
    ),
  },
  custom_events:: {
    local block = self,
    new():: (
      {}
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
  },
  with_app_monitor_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_monitor_configuration: value,
    }
  ),
  with_custom_events(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_events: value,
    }
  ),
  with_app_monitor_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_monitor_configuration+: converted,
    }
  ),
  with_custom_events_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_events+: converted,
    }
  ),
}
