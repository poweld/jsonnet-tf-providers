{
  local block = self,
  new(pipeline_id):: (
    {}
    + block.with_pipeline_id(pipeline_id)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_parameter_object(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"parameter_object" expected to be of type "set"';
    {
      parameter_object: converted,
    }
  ),
  with_parameter_object_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"parameter_object" expected to be of type "set"';
    {
      parameter_object+: converted,
    }
  ),
  with_pipeline_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_id" expected to be of type "string"';
    {
      pipeline_id: converted,
    }
  ),
  with_pipeline_object(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"pipeline_object" expected to be of type "set"';
    {
      pipeline_object: converted,
    }
  ),
  with_pipeline_object_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"pipeline_object" expected to be of type "set"';
    {
      pipeline_object+: converted,
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
  parameter_value:: {
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
    with_string_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"string_value" expected to be of type "string"';
      {
        string_value: converted,
      }
    ),
  },
  with_parameter_value(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter_value: value,
    }
  ),
  with_parameter_value_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter_value+: converted,
    }
  ),
}
