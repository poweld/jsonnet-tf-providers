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
  account_aggregation_source:: {
    local block = self,
    new(account_ids):: (
      {}
      + block.with_account_ids(account_ids)
    ),
    with_account_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"account_ids" expected to be of type "list"';
      {
        account_ids: converted,
      }
    ),
    with_account_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"account_ids" expected to be of type "list"';
      {
        account_ids+: converted,
      }
    ),
    with_all_regions(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"all_regions" expected to be of type "bool"';
      {
        all_regions: converted,
      }
    ),
    with_regions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"regions" expected to be of type "list"';
      {
        regions: converted,
      }
    ),
    with_regions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"regions" expected to be of type "list"';
      {
        regions+: converted,
      }
    ),
  },
  organization_aggregation_source:: {
    local block = self,
    new(role_arn):: (
      {}
      + block.with_role_arn(role_arn)
    ),
    with_all_regions(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"all_regions" expected to be of type "bool"';
      {
        all_regions: converted,
      }
    ),
    with_regions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"regions" expected to be of type "list"';
      {
        regions: converted,
      }
    ),
    with_regions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"regions" expected to be of type "list"';
      {
        regions+: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
  },
  with_account_aggregation_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      account_aggregation_source: value,
    }
  ),
  with_organization_aggregation_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      organization_aggregation_source: value,
    }
  ),
  with_account_aggregation_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      account_aggregation_source+: converted,
    }
  ),
  with_organization_aggregation_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      organization_aggregation_source+: converted,
    }
  ),
}
