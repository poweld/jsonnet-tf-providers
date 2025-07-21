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
  with_promotional_messages_per_second(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"promotional_messages_per_second" expected to be of type "number"';
    {
      promotional_messages_per_second: converted,
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
  with_sender_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"sender_id" expected to be of type "string"';
    {
      sender_id: converted,
    }
  ),
  with_short_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"short_code" expected to be of type "string"';
    {
      short_code: converted,
    }
  ),
  with_transactional_messages_per_second(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"transactional_messages_per_second" expected to be of type "number"';
    {
      transactional_messages_per_second: converted,
    }
  ),
}
