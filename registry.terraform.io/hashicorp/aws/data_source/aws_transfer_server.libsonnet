{
  local block = self,
  new(server_id):: (
    {}
    + block.with_server_id(server_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_certificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate" expected to be of type "string"';
    {
      certificate: converted,
    }
  ),
  with_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint" expected to be of type "string"';
    {
      endpoint: converted,
    }
  ),
  with_endpoint_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_type" expected to be of type "string"';
    {
      endpoint_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity_provider_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_provider_type" expected to be of type "string"';
    {
      identity_provider_type: converted,
    }
  ),
  with_invocation_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"invocation_role" expected to be of type "string"';
    {
      invocation_role: converted,
    }
  ),
  with_logging_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"logging_role" expected to be of type "string"';
    {
      logging_role: converted,
    }
  ),
  with_protocols(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"protocols" expected to be of type "list"';
    {
      protocols: converted,
    }
  ),
  with_protocols_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"protocols" expected to be of type "list"';
    {
      protocols+: converted,
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
  with_security_policy_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_policy_name" expected to be of type "string"';
    {
      security_policy_name: converted,
    }
  ),
  with_server_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_id" expected to be of type "string"';
    {
      server_id: converted,
    }
  ),
  with_structured_log_destinations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"structured_log_destinations" expected to be of type "list"';
    {
      structured_log_destinations: converted,
    }
  ),
  with_structured_log_destinations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"structured_log_destinations" expected to be of type "list"';
    {
      structured_log_destinations+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
    }
  ),
}
