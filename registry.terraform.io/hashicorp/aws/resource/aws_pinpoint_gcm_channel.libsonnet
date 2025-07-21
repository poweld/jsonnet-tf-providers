{
  local block = self,
  new(application_id):: (
    {}
    + block.with_application_id(application_id)
  ),
  with_api_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_key" expected to be of type "string"';
    {
      api_key: converted,
    }
  ),
  with_application_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_id" expected to be of type "string"';
    {
      application_id: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_service_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_json" expected to be of type "string"';
    {
      service_json: converted,
    }
  ),
}
