{
  local block = self,
  new():: (
    {}
  ),
  with_event_categories(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"event_categories" expected to be of type "list"';
    {
      event_categories: converted,
    }
  ),
  with_event_categories_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"event_categories" expected to be of type "list"';
    {
      event_categories+: converted,
    }
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
  with_source_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_type" expected to be of type "string"';
    {
      source_type: converted,
    }
  ),
}
