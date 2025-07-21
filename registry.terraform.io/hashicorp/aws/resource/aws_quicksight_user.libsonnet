{
  local block = self,
  new(email, identity_type, user_role):: (
    {}
    + block.with_email(email)
    + block.with_identity_type(identity_type)
    + block.with_user_role(user_role)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_aws_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  with_email(value):: (
    local converted = value;
    assert std.isString(converted) : '"email" expected to be of type "string"';
    {
      email: converted,
    }
  ),
  with_iam_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_arn" expected to be of type "string"';
    {
      iam_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_type" expected to be of type "string"';
    {
      identity_type: converted,
    }
  ),
  with_namespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace" expected to be of type "string"';
    {
      namespace: converted,
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
  with_session_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"session_name" expected to be of type "string"';
    {
      session_name: converted,
    }
  ),
  with_user_invitation_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_invitation_url" expected to be of type "string"';
    {
      user_invitation_url: converted,
    }
  ),
  with_user_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
  with_user_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_role" expected to be of type "string"';
    {
      user_role: converted,
    }
  ),
}
