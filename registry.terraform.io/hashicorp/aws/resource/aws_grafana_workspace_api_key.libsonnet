{
  local block = self,
  new(key_name, key_role, seconds_to_live, workspace_id):: (
    {}
    + block.with_key_name(key_name)
    + block.with_key_role(key_role)
    + block.with_seconds_to_live(seconds_to_live)
    + block.with_workspace_id(workspace_id)
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
  with_key_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_name" expected to be of type "string"';
    {
      key_name: converted,
    }
  ),
  with_key_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_role" expected to be of type "string"';
    {
      key_role: converted,
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
  with_workspace_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_id" expected to be of type "string"';
    {
      workspace_id: converted,
    }
  ),
}
