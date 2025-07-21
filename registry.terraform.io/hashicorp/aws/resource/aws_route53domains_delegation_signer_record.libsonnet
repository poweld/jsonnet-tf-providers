{
  local block = self,
  new(domain_name):: (
    {}
    + block.with_domain_name(domain_name)
  ),
  with_dnssec_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"dnssec_key_id" expected to be of type "string"';
    {
      dnssec_key_id: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  signing_attributes:: {
    local block = self,
    new(algorithm, flags, public_key):: (
      {}
      + block.with_algorithm(algorithm)
      + block.with_flags(flags)
      + block.with_public_key(public_key)
    ),
    with_algorithm(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"algorithm" expected to be of type "number"';
      {
        algorithm: converted,
      }
    ),
    with_flags(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"flags" expected to be of type "number"';
      {
        flags: converted,
      }
    ),
    with_public_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"public_key" expected to be of type "string"';
      {
        public_key: converted,
      }
    ),
  },
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
  },
  with_signing_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      signing_attributes: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_signing_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      signing_attributes+: converted,
    }
  ),
}
