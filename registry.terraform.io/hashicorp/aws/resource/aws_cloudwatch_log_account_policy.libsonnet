{
  local block = self,
  new(policy_document, policy_name, policy_type):: (
    {}
    + block.with_policy_document(policy_document)
    + block.with_policy_name(policy_name)
    + block.with_policy_type(policy_type)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_policy_document(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_document" expected to be of type "string"';
    {
      policy_document: converted,
    }
  ),
  with_policy_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_name" expected to be of type "string"';
    {
      policy_name: converted,
    }
  ),
  with_policy_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_type" expected to be of type "string"';
    {
      policy_type: converted,
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
  with_scope(value):: (
    local converted = value;
    assert std.isString(converted) : '"scope" expected to be of type "string"';
    {
      scope: converted,
    }
  ),
  with_selection_criteria(value):: (
    local converted = value;
    assert std.isString(converted) : '"selection_criteria" expected to be of type "string"';
    {
      selection_criteria: converted,
    }
  ),
}
