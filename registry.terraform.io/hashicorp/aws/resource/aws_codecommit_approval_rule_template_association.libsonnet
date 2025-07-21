{
  local block = self,
  new(approval_rule_template_name, repository_name):: (
    {}
    + block.with_approval_rule_template_name(approval_rule_template_name)
    + block.with_repository_name(repository_name)
  ),
  with_approval_rule_template_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"approval_rule_template_name" expected to be of type "string"';
    {
      approval_rule_template_name: converted,
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
  with_repository_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository_name" expected to be of type "string"';
    {
      repository_name: converted,
    }
  ),
}
