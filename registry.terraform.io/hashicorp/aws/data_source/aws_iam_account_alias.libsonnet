{
  local block = self,
  new():: (
    {}
  ),
  with_account_alias(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_alias" expected to be of type "string"';
    {
      account_alias: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
}
