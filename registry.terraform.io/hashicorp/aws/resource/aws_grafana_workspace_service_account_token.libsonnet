{
  local block = self,
  new(name, seconds_to_live, service_account_id, workspace_id):: (
    {}
    + block.with_name(name)
    + block.with_seconds_to_live(seconds_to_live)
    + block.with_service_account_id(service_account_id)
    + block.with_workspace_id(workspace_id)
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_expires_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"expires_at" expected to be of type "string"';
    {
      expires_at: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_seconds_to_live(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"seconds_to_live" expected to be of type "number"';
    {
      seconds_to_live: converted,
    }
  ),
  with_service_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_account_id" expected to be of type "string"';
    {
      service_account_id: converted,
    }
  ),
  with_service_account_token_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_account_token_id" expected to be of type "string"';
    {
      service_account_token_id: converted,
    }
  ),
  with_workspace_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_id" expected to be of type "string"';
    {
      workspace_id: converted,
    }
  ),
}
