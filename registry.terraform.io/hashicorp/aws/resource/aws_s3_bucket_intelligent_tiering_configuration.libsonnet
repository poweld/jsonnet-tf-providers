{
  local block = self,
  new(bucket, name):: (
    {}
    + block.with_bucket(bucket)
    + block.with_name(name)
  ),
  with_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
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
  filter:: {
    local block = self,
    new():: (
      {}
    ),
    with_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
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
  tiering:: {
    local block = self,
    new(access_tier, days):: (
      {}
      + block.with_access_tier(access_tier)
      + block.with_days(days)
    ),
    with_access_tier(value):: (
      local converted = value;
      assert std.isString(converted) : '"access_tier" expected to be of type "string"';
      {
        access_tier: converted,
      }
    ),
    with_days(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"days" expected to be of type "number"';
      {
        days: converted,
      }
    ),
  },
  with_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  with_tiering(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tiering: value,
    }
  ),
  with_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
  with_tiering_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tiering+: converted,
    }
  ),
}
