{
  local block = self,
  new(services):: (
    {}
    + block.with_services(services)
  ),
  with_cidr_blocks(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cidr_blocks" expected to be of type "list"';
    {
      cidr_blocks: converted,
    }
  ),
  with_cidr_blocks_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cidr_blocks" expected to be of type "list"';
    {
      cidr_blocks+: converted,
    }
  ),
  with_create_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"create_date" expected to be of type "string"';
    {
      create_date: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ipv6_cidr_blocks(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_cidr_blocks" expected to be of type "list"';
    {
      ipv6_cidr_blocks: converted,
    }
  ),
  with_ipv6_cidr_blocks_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_cidr_blocks" expected to be of type "list"';
    {
      ipv6_cidr_blocks+: converted,
    }
  ),
  with_regions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
    {
      regions: converted,
    }
  ),
  with_regions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
    {
      regions+: converted,
    }
  ),
  with_services(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"services" expected to be of type "set"';
    {
      services: converted,
    }
  ),
  with_services_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"services" expected to be of type "set"';
    {
      services+: converted,
    }
  ),
  with_sync_token(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"sync_token" expected to be of type "number"';
    {
      sync_token: converted,
    }
  ),
  with_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
    }
  ),
}
