{
  local block = self,
  new(directory_id):: (
    {}
    + block.with_directory_id(directory_id)
  ),
  with_directory_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
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
  target:: {
    local block = self,
    new(id):: (
      {}
      + block.with_id(id)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  with_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target+: converted,
    }
  ),
}
