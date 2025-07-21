{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_checksum(value):: (
    local converted = value;
    assert std.isString(converted) : '"checksum" expected to be of type "string"';
    {
      checksum: converted,
    }
  ),
  with_child_directed(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"child_directed" expected to be of type "bool"';
    {
      child_directed: converted,
    }
  ),
  with_created_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_date" expected to be of type "string"';
    {
      created_date: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_detect_sentiment(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"detect_sentiment" expected to be of type "bool"';
    {
      detect_sentiment: converted,
    }
  ),
  with_enable_model_improvements(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_model_improvements" expected to be of type "bool"';
    {
      enable_model_improvements: converted,
    }
  ),
  with_failure_reason(value):: (
    local converted = value;
    assert std.isString(converted) : '"failure_reason" expected to be of type "string"';
    {
      failure_reason: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_idle_session_ttl_in_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_session_ttl_in_seconds" expected to be of type "number"';
    {
      idle_session_ttl_in_seconds: converted,
    }
  ),
  with_last_updated_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_date" expected to be of type "string"';
    {
      last_updated_date: converted,
    }
  ),
  with_locale(value):: (
    local converted = value;
    assert std.isString(converted) : '"locale" expected to be of type "string"';
    {
      locale: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_nlu_intent_confidence_threshold(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"nlu_intent_confidence_threshold" expected to be of type "number"';
    {
      nlu_intent_confidence_threshold: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  with_voice_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"voice_id" expected to be of type "string"';
    {
      voice_id: converted,
    }
  ),
}
