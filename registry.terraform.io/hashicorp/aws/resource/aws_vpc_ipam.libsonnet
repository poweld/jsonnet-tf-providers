{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_cascade(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cascade" expected to be of type "bool"';
    {
      cascade: converted,
    }
  ),
  with_default_resource_discovery_association_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_resource_discovery_association_id" expected to be of type "string"';
    {
      default_resource_discovery_association_id: converted,
    }
  ),
  with_default_resource_discovery_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_resource_discovery_id" expected to be of type "string"';
    {
      default_resource_discovery_id: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_enable_private_gua(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_private_gua" expected to be of type "bool"';
    {
      enable_private_gua: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_private_default_scope_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_default_scope_id" expected to be of type "string"';
    {
      private_default_scope_id: converted,
    }
  ),
  with_public_default_scope_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_default_scope_id" expected to be of type "string"';
    {
      public_default_scope_id: converted,
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
  with_scope_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"scope_count" expected to be of type "number"';
    {
      scope_count: converted,
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
  with_tier(value):: (
    local converted = value;
    assert std.isString(converted) : '"tier" expected to be of type "string"';
    {
      tier: converted,
    }
  ),
  operating_regions:: {
    local block = self,
    new(region_name):: (
      {}
      + block.with_region_name(region_name)
    ),
    with_region_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"region_name" expected to be of type "string"';
      {
        region_name: converted,
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
  with_operating_regions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      operating_regions: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_operating_regions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      operating_regions+: converted,
    }
  ),
}
