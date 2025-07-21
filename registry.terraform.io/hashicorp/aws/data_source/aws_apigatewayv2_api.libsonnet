{
  local block = self,
  new(api_id):: (
    {}
    + block.with_api_id(api_id)
  ),
  with_api_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_endpoint" expected to be of type "string"';
    {
      api_endpoint: converted,
    }
  ),
  with_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  with_api_key_selection_expression(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_key_selection_expression" expected to be of type "string"';
    {
      api_key_selection_expression: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_cors_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cors_configuration" expected to be of type "list"';
    {
      cors_configuration: converted,
    }
  ),
  with_cors_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cors_configuration" expected to be of type "list"';
    {
      cors_configuration+: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_disable_execute_api_endpoint(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_execute_api_endpoint" expected to be of type "bool"';
    {
      disable_execute_api_endpoint: converted,
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
  with_ip_address_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_protocol_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol_type" expected to be of type "string"';
    {
      protocol_type: converted,
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
  with_route_selection_expression(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_selection_expression" expected to be of type "string"';
    {
      route_selection_expression: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
}
