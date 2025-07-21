{
  local block = self,
  new(event_source_arn, name):: (
    {}
    + block.with_event_source_arn(event_source_arn)
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
  with_event_pattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_pattern" expected to be of type "string"';
    {
      event_pattern: converted,
    }
  ),
  with_event_source_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_source_arn" expected to be of type "string"';
    {
      event_source_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_identifier" expected to be of type "string"';
    {
      kms_key_identifier: converted,
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
  with_retention_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retention_days" expected to be of type "number"';
    {
      retention_days: converted,
    }
  ),
}
