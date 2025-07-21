{
  local block = self,
  new(assessment_id, control_set_id, role_arn, role_type):: (
    {}
    + block.with_assessment_id(assessment_id)
    + block.with_control_set_id(control_set_id)
    + block.with_role_arn(role_arn)
    + block.with_role_type(role_type)
  ),
  with_assessment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"assessment_id" expected to be of type "string"';
    {
      assessment_id: converted,
    }
  ),
  with_comment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  with_control_set_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"control_set_id" expected to be of type "string"';
    {
      control_set_id: converted,
    }
  ),
  with_delegation_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"delegation_id" expected to be of type "string"';
    {
      delegation_id: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  with_role_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_type" expected to be of type "string"';
    {
      role_type: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
