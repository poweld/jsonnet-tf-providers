{
  local block = self,
  new(shared_directory_id):: (
    {}
    + block.with_shared_directory_id(shared_directory_id)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_method(value):: (
    local converted = value;
    assert std.isString(converted) : '"method" expected to be of type "string"';
    {
      method: converted,
    }
  ),
  with_notes(value):: (
    local converted = value;
    assert std.isString(converted) : '"notes" expected to be of type "string"';
    {
      notes: converted,
    }
  ),
  with_owner_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_account_id" expected to be of type "string"';
    {
      owner_account_id: converted,
    }
  ),
  with_owner_directory_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_directory_id" expected to be of type "string"';
    {
      owner_directory_id: converted,
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
  with_shared_directory_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"shared_directory_id" expected to be of type "string"';
    {
      shared_directory_id: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
