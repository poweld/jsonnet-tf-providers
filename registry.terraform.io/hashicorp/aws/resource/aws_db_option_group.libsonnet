{
  local block = self,
  new(engine_name, major_engine_version):: (
    {}
    + block.with_engine_name(engine_name)
    + block.with_major_engine_version(major_engine_version)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_engine_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_name" expected to be of type "string"';
    {
      engine_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_major_engine_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"major_engine_version" expected to be of type "string"';
    {
      major_engine_version: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  with_option_group_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"option_group_description" expected to be of type "string"';
    {
      option_group_description: converted,
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
  with_skip_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
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
  option:: {
    local block = self,
    new(option_name):: (
      {}
      + block.with_option_name(option_name)
    ),
    with_db_security_group_memberships(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"db_security_group_memberships" expected to be of type "set"';
      {
        db_security_group_memberships: converted,
      }
    ),
    with_db_security_group_memberships_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"db_security_group_memberships" expected to be of type "set"';
      {
        db_security_group_memberships+: converted,
      }
    ),
    with_option_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"option_name" expected to be of type "string"';
      {
        option_name: converted,
      }
    ),
    with_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    with_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"version" expected to be of type "string"';
      {
        version: converted,
      }
    ),
    with_vpc_security_group_memberships(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_memberships" expected to be of type "set"';
      {
        vpc_security_group_memberships: converted,
      }
    ),
    with_vpc_security_group_memberships_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_memberships" expected to be of type "set"';
      {
        vpc_security_group_memberships+: converted,
      }
    ),
    option_settings:: {
      local block = self,
      new(name, value):: (
        {}
        + block.with_name(name)
        + block.with_value(value)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    with_option_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        option_settings: value,
      }
    ),
    with_option_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        option_settings+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  with_option(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      option: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_option_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      option+: converted,
    }
  ),
}
