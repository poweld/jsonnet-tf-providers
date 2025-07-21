{
  local block = self,
  new(association_status, security_control_id, standards_arn):: (
    {}
    + block.with_association_status(association_status)
    + block.with_security_control_id(security_control_id)
    + block.with_standards_arn(standards_arn)
  ),
  with_association_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"association_status" expected to be of type "string"';
    {
      association_status: converted,
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
  with_security_control_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_control_id" expected to be of type "string"';
    {
      security_control_id: converted,
    }
  ),
  with_standards_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"standards_arn" expected to be of type "string"';
    {
      standards_arn: converted,
    }
  ),
  with_updated_reason(value):: (
    local converted = value;
    assert std.isString(converted) : '"updated_reason" expected to be of type "string"';
    {
      updated_reason: converted,
    }
  ),
}
