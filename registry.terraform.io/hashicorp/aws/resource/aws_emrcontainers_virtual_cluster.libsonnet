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
  container_provider:: {
    local block = self,
    new(id, type):: (
      {}
      + block.with_id(id)
      + block.with_type(type)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    info:: {
      local block = self,
      new():: (
        {}
      ),
      eks_info:: {
        local block = self,
        new():: (
          {}
        ),
        with_namespace(value):: (
          local converted = value;
          assert std.isString(converted) : '"namespace" expected to be of type "string"';
          {
            namespace: converted,
          }
        ),
      },
      with_eks_info(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          eks_info: value,
        }
      ),
      with_eks_info_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          eks_info+: converted,
        }
      ),
    },
    with_info(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        info: value,
      }
    ),
    with_info_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        info+: converted,
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
  with_container_provider(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      container_provider: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_container_provider_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      container_provider+: converted,
    }
  ),
}
