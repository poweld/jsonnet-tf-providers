{
  local block = self,
  new(owners):: (
    {}
    + block.with_owners(owners)
  ),
  with_executable_users(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"executable_users" expected to be of type "list"';
    {
      executable_users: converted,
    }
  ),
  with_executable_users_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"executable_users" expected to be of type "list"';
    {
      executable_users+: converted,
    }
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
  with_include_deprecated(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_deprecated" expected to be of type "bool"';
    {
      include_deprecated: converted,
    }
  ),
  with_name_regex(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_regex" expected to be of type "string"';
    {
      name_regex: converted,
    }
  ),
  with_owners(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"owners" expected to be of type "list"';
    {
      owners: converted,
    }
  ),
  with_owners_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"owners" expected to be of type "list"';
    {
      owners+: converted,
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
  with_sort_ascending(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"sort_ascending" expected to be of type "bool"';
    {
      sort_ascending: converted,
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
