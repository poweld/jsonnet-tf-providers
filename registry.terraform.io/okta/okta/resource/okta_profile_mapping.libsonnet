{
  local block = self,
  new(source_id, target_id):: (
    {}
    + block.with_source_id(source_id)
    + block.with_target_id(target_id)
  ),
  '#with_always_apply':: "Whether apply the changes to all users with this profile after updating or creating the these mappings.  \t~> **WARNING:**: 'always_apply' is incompatible with OAuth 2.0 authentication and will be ignored when using that type of authentication. \t~> **WARNING:** 'always_apply' makes use of an internal/private Okta API endpoint that could change without notice rendering this resource inoperable.",
  with_always_apply(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"always_apply" expected to be of type "bool"';
    {
      always_apply: converted,
    }
  ),
  '#with_delete_when_absent':: 'When turned on this flag will trigger the provider to delete mapping properties that are not defined in config. By default, we do not delete missing properties.',
  with_delete_when_absent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"delete_when_absent" expected to be of type "bool"';
    {
      delete_when_absent: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_source_id':: 'The source id of the mapping to manage.',
  with_source_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_id" expected to be of type "string"';
    {
      source_id: converted,
    }
  ),
  '#with_source_name':: 'Name of the mapping source.',
  with_source_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_name" expected to be of type "string"';
    {
      source_name: converted,
    }
  ),
  '#with_source_type':: 'ID of the mapping source.',
  with_source_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_type" expected to be of type "string"';
    {
      source_type: converted,
    }
  ),
  '#with_target_id':: 'The target id of the mapping to manage.',
  with_target_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_id" expected to be of type "string"';
    {
      target_id: converted,
    }
  ),
  '#with_target_name':: 'Name of the mapping target.',
  with_target_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_name" expected to be of type "string"';
    {
      target_name: converted,
    }
  ),
  '#with_target_type':: 'ID of the mapping target.',
  with_target_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_type" expected to be of type "string"';
    {
      target_type: converted,
    }
  ),
  mappings:: {
    local block = self,
    new(expression, id):: (
      {}
      + block.with_expression(expression)
      + block.with_id(id)
    ),
    with_expression(value):: (
      local converted = value;
      assert std.isString(converted) : '"expression" expected to be of type "string"';
      {
        expression: converted,
      }
    ),
    '#with_id':: 'The mapping property key.',
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_push_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"push_status" expected to be of type "string"';
      {
        push_status: converted,
      }
    ),
  },
  with_mappings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mappings: value,
    }
  ),
  with_mappings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mappings+: converted,
    }
  ),
}
