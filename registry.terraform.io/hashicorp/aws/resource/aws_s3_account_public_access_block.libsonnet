{
  local block = self,
  new():: (
    {}
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_block_public_acls(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"block_public_acls" expected to be of type "bool"';
    {
      block_public_acls: converted,
    }
  ),
  with_block_public_policy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"block_public_policy" expected to be of type "bool"';
    {
      block_public_policy: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ignore_public_acls(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ignore_public_acls" expected to be of type "bool"';
    {
      ignore_public_acls: converted,
    }
  ),
  with_restrict_public_buckets(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"restrict_public_buckets" expected to be of type "bool"';
    {
      restrict_public_buckets: converted,
    }
  ),
}
