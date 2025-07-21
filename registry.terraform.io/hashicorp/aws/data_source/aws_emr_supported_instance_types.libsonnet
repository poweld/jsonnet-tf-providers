{
  local block = self,
  new(release_label):: (
    {}
    + block.with_release_label(release_label)
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
  with_release_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"release_label" expected to be of type "string"';
    {
      release_label: converted,
    }
  ),
  with_supported_instance_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"supported_instance_types" expected to be of type "list"';
    {
      supported_instance_types: converted,
    }
  ),
  with_supported_instance_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"supported_instance_types" expected to be of type "list"';
    {
      supported_instance_types+: converted,
    }
  ),
}
