{
  local block = self,
  new(application_arn, principal_id, principal_type):: (
    {}
    + block.with_application_arn(application_arn)
    + block.with_principal_id(principal_id)
    + block.with_principal_type(principal_type)
  ),
  with_application_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_arn" expected to be of type "string"';
    {
      application_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_principal_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_id" expected to be of type "string"';
    {
      principal_id: converted,
    }
  ),
  with_principal_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_type" expected to be of type "string"';
    {
      principal_type: converted,
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
}
