{
  local block = self,
  new(action, principal, profile_name):: (
    {}
    + block.with_action(action)
    + block.with_principal(principal)
    + block.with_profile_name(profile_name)
  ),
  with_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"action" expected to be of type "string"';
    {
      action: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_principal(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal" expected to be of type "string"';
    {
      principal: converted,
    }
  ),
  with_profile_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_name" expected to be of type "string"';
    {
      profile_name: converted,
    }
  ),
  with_profile_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_version" expected to be of type "string"';
    {
      profile_version: converted,
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
  with_statement_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"statement_id" expected to be of type "string"';
    {
      statement_id: converted,
    }
  ),
  with_statement_id_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"statement_id_prefix" expected to be of type "string"';
    {
      statement_id_prefix: converted,
    }
  ),
}
