{
  local block = self,
  new(description, name):: (
    {}
    + block.withDescription(description)
    + block.withName(name)
  ),
  "#withCatchAll":: "If false, the default rule of the policy is set access to `DENY`. Otherwise default behavior of the default rule is to leave access at `ALLOW`.  **WARNING** setting this attribute to false changes policy rule's default behavior. Use at your own risk. This is only applied during creation and does not affect import or update.",
  withCatchAll(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"catch_all" expected to be of type "bool"';
    {
      catch_all: converted,
    }
  ),
  "#withDefaultRuleId":: "Default rule (system=true) id of the policy",
  withDefaultRuleId(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_rule_id" expected to be of type "string"';
    {
      default_rule_id: converted,
    }
  ),
  "#withDescription":: "Description of the policy.",
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  "#withId":: "Policy id",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Name of the policy.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withPriority":: "Priority of the policy",
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
}
