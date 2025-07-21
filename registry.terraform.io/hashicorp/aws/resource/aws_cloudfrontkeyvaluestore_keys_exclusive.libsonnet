{
  local block = self,
  new(key_value_store_arn):: (
    {}
    + block.with_key_value_store_arn(key_value_store_arn)
  ),
  '#with_key_value_store_arn':: 'The Amazon Resource Name (ARN) of the Key Value Store.',
  with_key_value_store_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_value_store_arn" expected to be of type "string"';
    {
      key_value_store_arn: converted,
    }
  ),
  '#with_max_batch_size':: 'Maximum resource key values pairs that you wills update in a single API request. AWS has a default quota of 50 keys or a 3 MB payload, whichever is reached first',
  with_max_batch_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_batch_size" expected to be of type "number"';
    {
      max_batch_size: converted,
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
  resource_key_value_pair:: {
    local block = self,
    new(key, value):: (
      {}
      + block.with_key(key)
      + block.with_value(value)
    ),
    '#with_key':: 'The key to put.',
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
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
  },
  with_resource_key_value_pair(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_key_value_pair: value,
    }
  ),
  with_resource_key_value_pair_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_key_value_pair+: converted,
    }
  ),
}
