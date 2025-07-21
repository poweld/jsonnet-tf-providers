{
  local block = self,
  new():: (
    {}
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  source:: {
    local block = self,
    new(regions, source_name):: (
      {}
      + block.with_regions(regions)
      + block.with_source_name(source_name)
    ),
    with_accounts(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts" expected to be of type "set"';
      {
        accounts: converted,
      }
    ),
    with_accounts_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts" expected to be of type "set"';
      {
        accounts+: converted,
      }
    ),
    with_regions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
      {
        regions: converted,
      }
    ),
    with_regions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
      {
        regions+: converted,
      }
    ),
    with_source_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_name" expected to be of type "string"';
      {
        source_name: converted,
      }
    ),
    with_source_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_version" expected to be of type "string"';
      {
        source_version: converted,
      }
    ),
  },
  with_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source: value,
    }
  ),
  with_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source+: converted,
    }
  ),
}
