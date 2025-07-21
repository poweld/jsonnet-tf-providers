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
  with_release_labels(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"release_labels" expected to be of type "list"';
    {
      release_labels: converted,
    }
  ),
  with_release_labels_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"release_labels" expected to be of type "list"';
    {
      release_labels+: converted,
    }
  ),
  filters:: {
    local block = self,
    new():: (
      {}
    ),
    with_application(value):: (
      local converted = value;
      assert std.isString(converted) : '"application" expected to be of type "string"';
      {
        application: converted,
      }
    ),
    with_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
  },
  with_filters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters: value,
    }
  ),
  with_filters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters+: converted,
    }
  ),
}
