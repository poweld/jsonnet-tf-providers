{
  local block = self,
  new(application_id):: (
    {}
    + block.with_application_id(application_id)
  ),
  with_application_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_id" expected to be of type "string"';
    {
      application_id: converted,
    }
  ),
  with_bundle_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"bundle_id" expected to be of type "string"';
    {
      bundle_id: converted,
    }
  ),
  with_certificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate" expected to be of type "string"';
    {
      certificate: converted,
    }
  ),
  with_default_authentication_method(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_authentication_method" expected to be of type "string"';
    {
      default_authentication_method: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_private_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_key" expected to be of type "string"';
    {
      private_key: converted,
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
  with_team_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"team_id" expected to be of type "string"';
    {
      team_id: converted,
    }
  ),
  with_token_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"token_key" expected to be of type "string"';
    {
      token_key: converted,
    }
  ),
  with_token_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"token_key_id" expected to be of type "string"';
    {
      token_key_id: converted,
    }
  ),
}
