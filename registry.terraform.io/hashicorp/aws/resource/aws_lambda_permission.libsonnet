{
  local block = self,
  new(action, function_name, principal):: (
    {}
    + block.with_action(action)
    + block.with_function_name(function_name)
    + block.with_principal(principal)
  ),
  with_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"action" expected to be of type "string"';
    {
      action: converted,
    }
  ),
  with_event_source_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_source_token" expected to be of type "string"';
    {
      event_source_token: converted,
    }
  ),
  with_function_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  with_function_url_auth_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_url_auth_type" expected to be of type "string"';
    {
      function_url_auth_type: converted,
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
  with_principal_org_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_org_id" expected to be of type "string"';
    {
      principal_org_id: converted,
    }
  ),
  with_qualifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"qualifier" expected to be of type "string"';
    {
      qualifier: converted,
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
  with_source_account(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_account" expected to be of type "string"';
    {
      source_account: converted,
    }
  ),
  with_source_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_arn" expected to be of type "string"';
    {
      source_arn: converted,
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
