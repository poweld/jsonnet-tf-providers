{
  local block = self,
  new(name, rest_api_id):: (
    {}
    + block.with_name(name)
    + block.with_rest_api_id(rest_api_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_authorizer_credentials(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_credentials" expected to be of type "string"';
    {
      authorizer_credentials: converted,
    }
  ),
  with_authorizer_result_ttl_in_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"authorizer_result_ttl_in_seconds" expected to be of type "number"';
    {
      authorizer_result_ttl_in_seconds: converted,
    }
  ),
  with_authorizer_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_uri" expected to be of type "string"';
    {
      authorizer_uri: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity_source(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_source" expected to be of type "string"';
    {
      identity_source: converted,
    }
  ),
  with_identity_validation_expression(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_validation_expression" expected to be of type "string"';
    {
      identity_validation_expression: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_provider_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"provider_arns" expected to be of type "set"';
    {
      provider_arns: converted,
    }
  ),
  with_provider_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"provider_arns" expected to be of type "set"';
    {
      provider_arns+: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
