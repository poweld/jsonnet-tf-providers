{
  local block = self,
  new(application_id, from_address, identity):: (
    {}
    + block.with_application_id(application_id)
    + block.with_from_address(from_address)
    + block.with_identity(identity)
  ),
  with_application_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_id" expected to be of type "string"';
    {
      application_id: converted,
    }
  ),
  with_configuration_set(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_set" expected to be of type "string"';
    {
      configuration_set: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_from_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"from_address" expected to be of type "string"';
    {
      from_address: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity" expected to be of type "string"';
    {
      identity: converted,
    }
  ),
  with_messages_per_second(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"messages_per_second" expected to be of type "number"';
    {
      messages_per_second: converted,
    }
  ),
  with_orchestration_sending_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"orchestration_sending_role_arn" expected to be of type "string"';
    {
      orchestration_sending_role_arn: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
}
