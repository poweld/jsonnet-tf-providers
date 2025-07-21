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
    provider:: {
      local block = self,
      new():: (
        {}
      ),
      virtual_node:: {
        local block = self,
        new(virtual_node_name):: (
          {}
          + block.with_virtual_node_name(virtual_node_name)
        ),
        with_virtual_node_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"virtual_node_name" expected to be of type "string"';
          {
            virtual_node_name: converted,
          }
        ),
      },
      virtual_router:: {
        local block = self,
        new(virtual_router_name):: (
          {}
          + block.with_virtual_router_name(virtual_router_name)
        ),
        with_virtual_router_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"virtual_router_name" expected to be of type "string"';
          {
            virtual_router_name: converted,
          }
        ),
      },
      with_virtual_node(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          virtual_node: value,
        }
      ),
      with_virtual_router(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          virtual_router: value,
        }
      ),
      with_virtual_node_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          virtual_node+: converted,
        }
      ),
      with_virtual_router_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          virtual_router+: converted,
        }
      ),
    },
    with_provider(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provider: value,
      }
    ),
    with_provider_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provider+: converted,
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
