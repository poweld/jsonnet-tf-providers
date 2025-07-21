{
  local block = self,
  new(cidr_blocks, cidr_collection_id, name):: (
    {}
    + block.with_cidr_blocks(cidr_blocks)
    + block.with_cidr_collection_id(cidr_collection_id)
    + block.with_name(name)
  ),
  with_cidr_blocks(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidr_blocks" expected to be of type "set"';
    {
      cidr_blocks: converted,
    }
  ),
  with_cidr_blocks_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidr_blocks" expected to be of type "set"';
    {
      cidr_blocks+: converted,
    }
  ),
  with_cidr_collection_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"cidr_collection_id" expected to be of type "string"';
    {
      cidr_collection_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
}
