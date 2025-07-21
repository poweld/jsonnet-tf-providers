{
  local block = self,
  new(description, name):: (
    {}
    + block.with_description(description)
    + block.with_name(name)
  ),
  '#with_catch_all':: "If false, the default rule of the policy is set access to `DENY`. Otherwise default behavior of the default rule is to leave access at `ALLOW`.  **WARNING** setting this attribute to false changes policy rule's default behavior. Use at your own risk. This is only applied during creation and does not affect import or update.",
  with_catch_all(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"catch_all" expected to be of type "bool"';
    {
      catch_all: converted,
    }
  ),
  '#with_default_rule_id':: 'Default rule (system=true) id of the policy',
  with_default_rule_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_rule_id" expected to be of type "string"';
    {
      default_rule_id: converted,
    }
  ),
  '#with_description':: 'Description of the policy.',
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  '#with_id':: 'Policy id',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_name':: 'Name of the policy.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_priority':: 'Priority of the policy',
  with_priority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
}
