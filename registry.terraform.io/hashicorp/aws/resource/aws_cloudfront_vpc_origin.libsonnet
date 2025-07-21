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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  vpc_origin_endpoint_config:: {
    local block = self,
    new(arn, http_port, https_port, name, origin_protocol_policy):: (
      {}
      + block.with_arn(arn)
      + block.with_http_port(http_port)
      + block.with_https_port(https_port)
      + block.with_name(name)
      + block.with_origin_protocol_policy(origin_protocol_policy)
    ),
    with_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"arn" expected to be of type "string"';
      {
        arn: converted,
      }
    ),
    with_http_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"http_port" expected to be of type "number"';
      {
        http_port: converted,
      }
    ),
    with_https_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"https_port" expected to be of type "number"';
      {
        https_port: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_origin_protocol_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"origin_protocol_policy" expected to be of type "string"';
      {
        origin_protocol_policy: converted,
      }
    ),
    origin_ssl_protocols:: {
      local block = self,
      new(items, quantity):: (
        {}
        + block.with_items(items)
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
    with_origin_ssl_protocols(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        origin_ssl_protocols: value,
      }
    ),
    with_origin_ssl_protocols_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        origin_ssl_protocols+: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_vpc_origin_endpoint_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_origin_endpoint_config: value,
    }
  ),
  with_vpc_origin_endpoint_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_origin_endpoint_config+: converted,
    }
  ),
}
