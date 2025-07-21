{
  local block = self,
  new(name, type):: (
    {}
    + block.with_name(name)
    + block.with_type(type)
  ),
  '#with_asns':: 'List of asns included. Format of each array value: a string representation of an ASN numeric value. Use with type `DYNAMIC` or `DYNAMIC_V2`',
  with_asns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"asns" expected to be of type "set"';
    {
      asns: converted,
    }
  ),
  '#with_asns_mixin':: 'List of asns included. Format of each array value: a string representation of an ASN numeric value. Use with type `DYNAMIC` or `DYNAMIC_V2`',
  with_asns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"asns" expected to be of type "set"';
    {
      asns+: converted,
    }
  ),
  '#with_dynamic_locations':: 'Array of locations ISO-3166-1(2) included. Format code: countryCode OR countryCode-regionCode. Use with type `DYNAMIC` or `DYNAMIC_V2`',
  with_dynamic_locations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dynamic_locations" expected to be of type "set"';
    {
      dynamic_locations: converted,
    }
  ),
  '#with_dynamic_locations_mixin':: 'Array of locations ISO-3166-1(2) included. Format code: countryCode OR countryCode-regionCode. Use with type `DYNAMIC` or `DYNAMIC_V2`',
  with_dynamic_locations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dynamic_locations" expected to be of type "set"';
    {
      dynamic_locations+: converted,
    }
  ),
  '#with_dynamic_locations_exclude':: 'Array of locations ISO-3166-1(2) excluded. Format code: countryCode OR countryCode-regionCode. Use with type `DYNAMIC_V2`',
  with_dynamic_locations_exclude(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dynamic_locations_exclude" expected to be of type "set"';
    {
      dynamic_locations_exclude: converted,
    }
  ),
  '#with_dynamic_locations_exclude_mixin':: 'Array of locations ISO-3166-1(2) excluded. Format code: countryCode OR countryCode-regionCode. Use with type `DYNAMIC_V2`',
  with_dynamic_locations_exclude_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dynamic_locations_exclude" expected to be of type "set"';
    {
      dynamic_locations_exclude+: converted,
    }
  ),
  '#with_dynamic_proxy_type':: 'Type of proxy being controlled by this dynamic network zone - can be one of `Any`, `TorAnonymizer` or `NotTorAnonymizer`. Use with type `DYNAMIC`',
  with_dynamic_proxy_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"dynamic_proxy_type" expected to be of type "string"';
    {
      dynamic_proxy_type: converted,
    }
  ),
  '#with_gateways':: "Array of values in CIDR/range form depending on the way it's been declared (i.e. CIDR will contain /suffix). Please check API docs for examples. Use with type `IP`",
  with_gateways(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"gateways" expected to be of type "set"';
    {
      gateways: converted,
    }
  ),
  '#with_gateways_mixin':: "Array of values in CIDR/range form depending on the way it's been declared (i.e. CIDR will contain /suffix). Please check API docs for examples. Use with type `IP`",
  with_gateways_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"gateways" expected to be of type "set"';
    {
      gateways+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_ip_service_categories_exclude':: 'List of ip service excluded. Use with type `DYNAMIC_V2`',
  with_ip_service_categories_exclude(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ip_service_categories_exclude" expected to be of type "set"';
    {
      ip_service_categories_exclude: converted,
    }
  ),
  '#with_ip_service_categories_exclude_mixin':: 'List of ip service excluded. Use with type `DYNAMIC_V2`',
  with_ip_service_categories_exclude_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ip_service_categories_exclude" expected to be of type "set"';
    {
      ip_service_categories_exclude+: converted,
    }
  ),
  '#with_ip_service_categories_include':: 'List of ip service included. Use with type `DYNAMIC_V2`',
  with_ip_service_categories_include(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ip_service_categories_include" expected to be of type "set"';
    {
      ip_service_categories_include: converted,
    }
  ),
  '#with_ip_service_categories_include_mixin':: 'List of ip service included. Use with type `DYNAMIC_V2`',
  with_ip_service_categories_include_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ip_service_categories_include" expected to be of type "set"';
    {
      ip_service_categories_include+: converted,
    }
  ),
  '#with_name':: 'Name of the Network Zone Resource',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_proxies':: "Array of values in CIDR/range form depending on the way it's been declared (i.e. CIDR will contain /suffix). Please check API docs for examples. Can not be set if `usage` is set to `BLOCKLIST`. Use with type `IP`",
  with_proxies(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"proxies" expected to be of type "set"';
    {
      proxies: converted,
    }
  ),
  '#with_proxies_mixin':: "Array of values in CIDR/range form depending on the way it's been declared (i.e. CIDR will contain /suffix). Please check API docs for examples. Can not be set if `usage` is set to `BLOCKLIST`. Use with type `IP`",
  with_proxies_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"proxies" expected to be of type "set"';
    {
      proxies+: converted,
    }
  ),
  '#with_status':: 'Network Status - can either be `ACTIVE` or `INACTIVE` only',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_type':: 'Type of the Network Zone - can be `IP`, `DYNAMIC` or `DYNAMIC_V2` only',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  '#with_usage':: 'Usage of the Network Zone - can be either `POLICY` or `BLOCKLIST`. By default, it is `POLICY`',
  with_usage(value):: (
    local converted = value;
    assert std.isString(converted) : '"usage" expected to be of type "string"';
    {
      usage: converted,
    }
  ),
}
