{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
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
  with_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"version" expected to be of type "number"';
    {
      version: converted,
    }
  ),
  action_point:: {
    local block = self,
    new(point):: (
      {}
      + block.with_point(point)
    ),
    with_point(value):: (
      local converted = value;
      assert std.isString(converted) : '"point" expected to be of type "string"';
      {
        point: converted,
      }
    ),
    action:: {
      local block = self,
      new(name, uri):: (
        {}
        + block.with_name(name)
        + block.with_uri(uri)
      ),
      with_description(value):: (
        local converted = value;
        assert std.isString(converted) : '"description" expected to be of type "string"';
        {
          description: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"uri" expected to be of type "string"';
        {
          uri: converted,
        }
      ),
    },
    with_action(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action: value,
      }
    ),
    with_action_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action+: converted,
      }
    ),
  },
  parameter:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_required(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
      {
        required: converted,
      }
    ),
  },
  with_action_point(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action_point: value,
    }
  ),
  with_parameter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter: value,
    }
  ),
  with_action_point_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action_point+: converted,
    }
  ),
  with_parameter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter+: converted,
    }
  ),
}
