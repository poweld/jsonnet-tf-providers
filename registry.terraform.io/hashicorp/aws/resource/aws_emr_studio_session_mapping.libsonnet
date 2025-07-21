{
  local block = self,
  new(identity_type, session_policy_arn, studio_id):: (
    {}
    + block.with_identity_type(identity_type)
    + block.with_session_policy_arn(session_policy_arn)
    + block.with_studio_id(studio_id)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_id" expected to be of type "string"';
    {
      identity_id: converted,
    }
  ),
  with_identity_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_name" expected to be of type "string"';
    {
      identity_name: converted,
    }
  ),
  with_identity_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_type" expected to be of type "string"';
    {
      identity_type: converted,
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
  with_session_policy_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"session_policy_arn" expected to be of type "string"';
    {
      session_policy_arn: converted,
    }
  ),
  with_studio_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"studio_id" expected to be of type "string"';
    {
      studio_id: converted,
    }
  ),
}
