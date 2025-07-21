{
  local block = self,
  new(function_name, function_version, name):: (
    {}
    + block.with_function_name(function_name)
    + block.with_function_version(function_version)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_function_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  with_function_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_version" expected to be of type "string"';
    {
      function_version: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_invoke_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"invoke_arn" expected to be of type "string"';
    {
      invoke_arn: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  routing_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_additional_version_weights(value):: (
      local converted = value;
      assert std.isObject(converted) : '"additional_version_weights" expected to be of type "map"';
      {
        additional_version_weights: converted,
      }
    ),
  },
  with_routing_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      routing_config: value,
    }
  ),
  with_routing_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      routing_config+: converted,
    }
  ),
}
