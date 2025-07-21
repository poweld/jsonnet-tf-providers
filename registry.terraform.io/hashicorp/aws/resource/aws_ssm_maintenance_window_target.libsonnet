{
  local block = self,
  new(resource_type, window_id):: (
    {}
    + block.with_resource_type(resource_type)
    + block.with_window_id(window_id)
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  with_owner_information(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_information" expected to be of type "string"';
    {
      owner_information: converted,
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
  with_resource_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
    }
  ),
  with_window_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"window_id" expected to be of type "string"';
    {
      window_id: converted,
    }
  ),
  targets:: {
    local block = self,
    new(key, values):: (
      {}
      + block.with_key(key)
      + block.with_values(values)
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    with_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values: converted,
      }
    ),
    with_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values+: converted,
      }
    ),
  },
  with_targets(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      targets: value,
    }
  ),
  with_targets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      targets+: converted,
    }
  ),
}
