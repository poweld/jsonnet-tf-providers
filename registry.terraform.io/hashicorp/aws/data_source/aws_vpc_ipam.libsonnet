{
  local block = self,
  new(id):: (
    {}
    + block.with_id(id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_ipam_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipam_region" expected to be of type "string"';
    {
      ipam_region: converted,
    }
  ),
  with_operating_regions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"operating_regions" expected to be of type "list"';
    {
      operating_regions: converted,
    }
  ),
  with_operating_regions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"operating_regions" expected to be of type "list"';
    {
      operating_regions+: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
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
  with_resource_discovery_association_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"resource_discovery_association_count" expected to be of type "number"';
    {
      resource_discovery_association_count: converted,
    }
  ),
  with_scope_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"scope_count" expected to be of type "number"';
    {
      scope_count: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_state_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"state_message" expected to be of type "string"';
    {
      state_message: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tier(value):: (
    local converted = value;
    assert std.isString(converted) : '"tier" expected to be of type "string"';
    {
      tier: converted,
    }
  ),
}
