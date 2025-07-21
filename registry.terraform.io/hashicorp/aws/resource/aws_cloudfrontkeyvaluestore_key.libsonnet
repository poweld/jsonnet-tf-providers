{
  local block = self,
  new(key, key_value_store_arn, value):: (
    {}
    + block.with_key(key)
    + block.with_key_value_store_arn(key_value_store_arn)
    + block.with_value(value)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_key':: 'The key to put.',
  with_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  '#with_key_value_store_arn':: 'The Amazon Resource Name (ARN) of the Key Value Store.',
  with_key_value_store_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_value_store_arn" expected to be of type "string"';
    {
      key_value_store_arn: converted,
    }
  ),
  '#with_total_size_in_bytes':: 'Total size of the Key Value Store in bytes.',
  with_total_size_in_bytes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"total_size_in_bytes" expected to be of type "number"';
    {
      total_size_in_bytes: converted,
    }
  ),
  '#with_value':: 'The value to put.',
  with_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"value" expected to be of type "string"';
    {
      value: converted,
    }
  ),
}
