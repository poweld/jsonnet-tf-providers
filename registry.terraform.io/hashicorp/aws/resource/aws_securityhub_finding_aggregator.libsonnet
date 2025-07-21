{
  local block = self,
  new(linking_mode):: (
    {}
    + block.with_linking_mode(linking_mode)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_linking_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"linking_mode" expected to be of type "string"';
    {
      linking_mode: converted,
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
  with_specified_regions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"specified_regions" expected to be of type "set"';
    {
      specified_regions: converted,
    }
  ),
  with_specified_regions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"specified_regions" expected to be of type "set"';
    {
      specified_regions+: converted,
    }
  ),
}
