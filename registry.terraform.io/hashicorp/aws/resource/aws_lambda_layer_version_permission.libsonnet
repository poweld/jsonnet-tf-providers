{
  local block = self,
  new(action, layer_name, principal, statement_id, version_number):: (
    {}
    + block.with_action(action)
    + block.with_layer_name(layer_name)
    + block.with_principal(principal)
    + block.with_statement_id(statement_id)
    + block.with_version_number(version_number)
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
  with_layer_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"layer_name" expected to be of type "string"';
    {
      layer_name: converted,
    }
  ),
  with_organization_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"organization_id" expected to be of type "string"';
    {
      organization_id: converted,
    }
  ),
  with_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
    }
  ),
  with_principal(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal" expected to be of type "string"';
    {
      principal: converted,
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
  with_revision_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"revision_id" expected to be of type "string"';
    {
      revision_id: converted,
    }
  ),
  with_skip_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
    }
  ),
  with_statement_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"statement_id" expected to be of type "string"';
    {
      statement_id: converted,
    }
  ),
  with_version_number(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"version_number" expected to be of type "number"';
    {
      version_number: converted,
    }
  ),
}
