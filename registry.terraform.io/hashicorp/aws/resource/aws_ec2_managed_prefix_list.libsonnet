{
  local block = self,
  new(address_family, max_entries, name):: (
    {}
    + block.with_address_family(address_family)
    + block.with_max_entries(max_entries)
    + block.with_name(name)
  ),
  with_address_family(value):: (
    local converted = value;
    assert std.isString(converted) : '"address_family" expected to be of type "string"';
    {
      address_family: converted,
    }
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
  with_max_entries(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_entries" expected to be of type "number"';
    {
      max_entries: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
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
  entry:: {
    local block = self,
    new(cidr):: (
      {}
      + block.with_cidr(cidr)
    ),
    with_cidr(value):: (
      local converted = value;
      assert std.isString(converted) : '"cidr" expected to be of type "string"';
      {
        cidr: converted,
      }
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
  },
  with_entry(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      entry: value,
    }
  ),
  with_entry_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      entry+: converted,
    }
  ),
}
