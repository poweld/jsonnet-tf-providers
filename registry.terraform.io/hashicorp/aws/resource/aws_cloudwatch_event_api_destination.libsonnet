{
  local block = self,
  new(connection_arn, http_method, invocation_endpoint, name):: (
    {}
    + block.with_connection_arn(connection_arn)
    + block.with_http_method(http_method)
    + block.with_invocation_endpoint(invocation_endpoint)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_connection_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_arn" expected to be of type "string"';
    {
      connection_arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_http_method(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_method" expected to be of type "string"';
    {
      http_method: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_invocation_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"invocation_endpoint" expected to be of type "string"';
    {
      invocation_endpoint: converted,
    }
  ),
  with_invocation_rate_limit_per_second(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"invocation_rate_limit_per_second" expected to be of type "number"';
    {
      invocation_rate_limit_per_second: converted,
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
}
