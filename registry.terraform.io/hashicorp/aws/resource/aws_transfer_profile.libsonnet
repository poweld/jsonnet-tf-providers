{
  local block = self,
  new(as2_id, profile_type):: (
    {}
    + block.with_as2_id(as2_id)
    + block.with_profile_type(profile_type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_as2_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"as2_id" expected to be of type "string"';
    {
      as2_id: converted,
    }
  ),
  with_certificate_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_ids" expected to be of type "set"';
    {
      certificate_ids: converted,
    }
  ),
  with_certificate_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_ids" expected to be of type "set"';
    {
      certificate_ids+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_profile_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_id" expected to be of type "string"';
    {
      profile_id: converted,
    }
  ),
  with_profile_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_type" expected to be of type "string"';
    {
      profile_type: converted,
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
}
