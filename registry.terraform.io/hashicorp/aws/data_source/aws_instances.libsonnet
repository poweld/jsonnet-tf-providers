{
  local block = self,
  new():: (
    {}
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ids" expected to be of type "list"';
    {
      ids: converted,
    }
  ),
  with_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ids" expected to be of type "list"';
    {
      ids+: converted,
    }
  ),
  with_instance_state_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_state_names" expected to be of type "set"';
    {
      instance_state_names: converted,
    }
  ),
  with_instance_state_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_state_names" expected to be of type "set"';
    {
      instance_state_names+: converted,
    }
  ),
  with_instance_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"instance_tags" expected to be of type "map"';
    {
      instance_tags: converted,
    }
  ),
  with_ipv6_addresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_addresses" expected to be of type "list"';
    {
      ipv6_addresses: converted,
    }
  ),
  with_ipv6_addresses_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_addresses" expected to be of type "list"';
    {
      ipv6_addresses+: converted,
    }
  ),
  with_private_ips(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"private_ips" expected to be of type "list"';
    {
      private_ips: converted,
    }
  ),
  with_private_ips_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"private_ips" expected to be of type "list"';
    {
      private_ips+: converted,
    }
  ),
  with_public_ips(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"public_ips" expected to be of type "list"';
    {
      public_ips: converted,
    }
  ),
  with_public_ips_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"public_ips" expected to be of type "list"';
    {
      public_ips+: converted,
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
  filter:: {
    local block = self,
    new(name, values):: (
      {}
      + block.with_name(name)
      + block.with_values(values)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values: converted,
      }
    ),
    with_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
  },
  with_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
}
