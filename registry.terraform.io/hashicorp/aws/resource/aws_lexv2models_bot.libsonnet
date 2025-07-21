{
  local block = self,
  new(idle_session_ttl_in_seconds, name, role_arn):: (
    {}
    + block.with_idle_session_ttl_in_seconds(idle_session_ttl_in_seconds)
    + block.with_name(name)
    + block.with_role_arn(role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_idle_session_ttl_in_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_session_ttl_in_seconds" expected to be of type "number"';
    {
      idle_session_ttl_in_seconds: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  with_test_bot_alias_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"test_bot_alias_tags" expected to be of type "map"';
    {
      test_bot_alias_tags: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  data_privacy:: {
    local block = self,
    new(child_directed):: (
      {}
      + block.with_child_directed(child_directed)
    ),
    with_child_directed(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"child_directed" expected to be of type "bool"';
      {
        child_directed: converted,
      }
    ),
  },
  members:: {
    local block = self,
    new(alias_id, alias_name, id, name, version):: (
      {}
      + block.with_alias_id(alias_id)
      + block.with_alias_name(alias_name)
      + block.with_id(id)
      + block.with_name(name)
      + block.with_version(version)
    ),
    with_alias_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"alias_id" expected to be of type "string"';
      {
        alias_id: converted,
      }
    ),
    with_alias_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"alias_name" expected to be of type "string"';
      {
        alias_name: converted,
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
    with_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"version" expected to be of type "string"';
      {
        version: converted,
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
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_data_privacy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_privacy: value,
    }
  ),
  with_members(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      members: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_data_privacy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_privacy+: converted,
    }
  ),
  with_members_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      members+: converted,
    }
  ),
}
