{
  local block = self,
  new(app_id, policy_id):: (
    {
      terraformObject:: "okta_app_access_policy_assignment",
    }
    + block.withAppId(app_id)
    + block.withPolicyId(policy_id)
  ),
  "#withAppId":: "The application ID; this value is immutable and can not be updated.",
  withAppId(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  "#withId":: "The ID of the resource. This ID is simply the application ID.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withPolicyId":: "The access policy ID.",
  withPolicyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_id" expected to be of type "string"';
    {
      policy_id: converted,
    }
  ),
}
