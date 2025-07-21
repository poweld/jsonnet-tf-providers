{
  local block = self,
  new():: (
    {}
  ),
  with_all_availability_zones(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"all_availability_zones" expected to be of type "bool"';
    {
      all_availability_zones: converted,
    }
  ),
  with_group_long_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_long_name" expected to be of type "string"';
    {
      group_long_name: converted,
    }
  ),
  with_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_name" expected to be of type "string"';
    {
      group_name: converted,
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
  with_name_suffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_suffix" expected to be of type "string"';
    {
      name_suffix: converted,
    }
  ),
  with_network_border_group(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_border_group" expected to be of type "string"';
    {
      network_border_group: converted,
    }
  ),
  with_opt_in_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"opt_in_status" expected to be of type "string"';
    {
      opt_in_status: converted,
    }
  ),
  with_parent_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_zone_id" expected to be of type "string"';
    {
      parent_zone_id: converted,
    }
  ),
  with_parent_zone_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_zone_name" expected to be of type "string"';
    {
      parent_zone_name: converted,
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
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"zone_id" expected to be of type "string"';
    {
      zone_id: converted,
    }
  ),
  with_zone_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"zone_type" expected to be of type "string"';
    {
      zone_type: converted,
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
