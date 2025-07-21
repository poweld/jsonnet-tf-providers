{
  local block = self,
  new(db_proxy_name):: (
    {}
    + block.with_db_proxy_name(db_proxy_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_db_proxy_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_proxy_name" expected to be of type "string"';
    {
      db_proxy_name: converted,
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
  connection_pool_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_connection_borrow_timeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"connection_borrow_timeout" expected to be of type "number"';
      {
        connection_borrow_timeout: converted,
      }
    ),
    with_init_query(value):: (
      local converted = value;
      assert std.isString(converted) : '"init_query" expected to be of type "string"';
      {
        init_query: converted,
      }
    ),
    with_max_connections_percent(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_connections_percent" expected to be of type "number"';
      {
        max_connections_percent: converted,
      }
    ),
    with_max_idle_connections_percent(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_idle_connections_percent" expected to be of type "number"';
      {
        max_idle_connections_percent: converted,
      }
    ),
    with_session_pinning_filters(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"session_pinning_filters" expected to be of type "set"';
      {
        session_pinning_filters: converted,
      }
    ),
    with_session_pinning_filters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"session_pinning_filters" expected to be of type "set"';
      {
        session_pinning_filters+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_connection_pool_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connection_pool_config: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_connection_pool_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connection_pool_config+: converted,
    }
  ),
}
