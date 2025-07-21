{
  local block = self,
  new():: (
    {}
  ),
  with_dns_suffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_suffix" expected to be of type "string"';
    {
      dns_suffix: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_partition(value):: (
    local converted = value;
    assert std.isString(converted) : '"partition" expected to be of type "string"';
    {
      partition: converted,
    }
  ),
  with_reverse_dns_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"reverse_dns_prefix" expected to be of type "string"';
    {
      reverse_dns_prefix: converted,
    }
  ),
}
