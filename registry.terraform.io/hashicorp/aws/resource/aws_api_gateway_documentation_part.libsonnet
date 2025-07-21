{
  local block = self,
  new(properties, rest_api_id):: (
    {}
    + block.with_properties(properties)
    + block.with_rest_api_id(rest_api_id)
  ),
  with_documentation_part_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"documentation_part_id" expected to be of type "string"';
    {
      documentation_part_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_properties(value):: (
    local converted = value;
    assert std.isString(converted) : '"properties" expected to be of type "string"';
    {
      properties: converted,
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
  with_rest_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"rest_api_id" expected to be of type "string"';
    {
      rest_api_id: converted,
    }
  ),
  location:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_method(value):: (
      local converted = value;
      assert std.isString(converted) : '"method" expected to be of type "string"';
      {
        method: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    with_status_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"status_code" expected to be of type "string"';
      {
        status_code: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  with_location(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      location: value,
    }
  ),
  with_location_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      location+: converted,
    }
  ),
}
