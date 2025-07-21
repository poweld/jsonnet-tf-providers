{
  local block = self,
  new():: (
    {}
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_member_account_discount_visibility(value):: (
    local converted = value;
    assert std.isString(converted) : '"member_account_discount_visibility" expected to be of type "string"';
    {
      member_account_discount_visibility: converted,
    }
  ),
  with_savings_estimation_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"savings_estimation_mode" expected to be of type "string"';
    {
      savings_estimation_mode: converted,
    }
  ),
}
