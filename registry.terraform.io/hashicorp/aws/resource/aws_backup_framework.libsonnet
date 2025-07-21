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
  with_creation_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_time" expected to be of type "string"';
    {
      creation_time: converted,
    }
  ),
  with_deployment_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_status" expected to be of type "string"';
    {
      deployment_status: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  control:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    input_parameter:: {
      local block = self,
      new():: (
        {}
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
    scope:: {
      local block = self,
      new():: (
        {}
      ),
      with_compliance_resource_ids(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"compliance_resource_ids" expected to be of type "set"';
        {
          compliance_resource_ids: converted,
        }
      ),
      with_compliance_resource_ids_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"compliance_resource_ids" expected to be of type "set"';
        {
          compliance_resource_ids+: converted,
        }
      ),
      with_compliance_resource_types(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"compliance_resource_types" expected to be of type "set"';
        {
          compliance_resource_types: converted,
        }
      ),
      with_compliance_resource_types_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"compliance_resource_types" expected to be of type "set"';
        {
          compliance_resource_types+: converted,
        }
      ),
      with_tags(value):: (
        local converted = value;
        assert std.isObject(converted) : '"tags" expected to be of type "map"';
        {
          tags: converted,
        }
      ),
    },
    with_input_parameter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        input_parameter: value,
      }
    ),
    with_scope(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        scope: value,
      }
    ),
    with_input_parameter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        input_parameter+: converted,
      }
    ),
    with_scope_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        scope+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_control(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      control: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_control_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      control+: converted,
    }
  ),
}
