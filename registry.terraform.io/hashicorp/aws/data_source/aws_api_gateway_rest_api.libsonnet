{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_api_key_source(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_key_source" expected to be of type "string"';
    {
      api_key_source: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_binary_media_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"binary_media_types" expected to be of type "list"';
    {
      binary_media_types: converted,
    }
  ),
  with_binary_media_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"binary_media_types" expected to be of type "list"';
    {
      binary_media_types+: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_endpoint_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"endpoint_configuration" expected to be of type "list"';
    {
      endpoint_configuration: converted,
    }
  ),
  with_endpoint_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"endpoint_configuration" expected to be of type "list"';
    {
      endpoint_configuration+: converted,
    }
  ),
  with_execution_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_arn" expected to be of type "string"';
    {
      execution_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_minimum_compression_size(value):: (
    local converted = value;
    assert std.isString(converted) : '"minimum_compression_size" expected to be of type "string"';
    {
      minimum_compression_size: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
  with_root_resource_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"root_resource_id" expected to be of type "string"';
    {
      root_resource_id: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
}
