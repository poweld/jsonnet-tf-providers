{
  local block = self,
  new(mesh_name, name):: (
    {}
    + block.with_mesh_name(mesh_name)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_created_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_date" expected to be of type "string"';
    {
      created_date: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_updated_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_date" expected to be of type "string"';
    {
      last_updated_date: converted,
    }
  ),
  with_mesh_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"mesh_name" expected to be of type "string"';
    {
      mesh_name: converted,
    }
  ),
  with_mesh_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"mesh_owner" expected to be of type "string"';
    {
      mesh_owner: converted,
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
  with_resource_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_owner" expected to be of type "string"';
    {
      resource_owner: converted,
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
  spec:: {
    local block = self,
    new():: (
      {}
    ),
    listener:: {
      local block = self,
      new():: (
        {}
      ),
      port_mapping:: {
        local block = self,
        new(port, protocol):: (
          {}
          + block.with_port(port)
          + block.with_protocol(protocol)
        ),
        with_port(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"port" expected to be of type "number"';
          {
            port: converted,
          }
        ),
        with_protocol(value):: (
          local converted = value;
          assert std.isString(converted) : '"protocol" expected to be of type "string"';
          {
            protocol: converted,
          }
        ),
      },
      with_port_mapping(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          port_mapping: value,
        }
      ),
      with_port_mapping_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          port_mapping+: converted,
        }
      ),
    },
    with_listener(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        listener: value,
      }
    ),
    with_listener_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        listener+: converted,
      }
    ),
  },
  with_spec(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spec: value,
    }
  ),
  with_spec_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spec+: converted,
    }
  ),
}
