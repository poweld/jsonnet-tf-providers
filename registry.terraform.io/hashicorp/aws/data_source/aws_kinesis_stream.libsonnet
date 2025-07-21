{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_closed_shards(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"closed_shards" expected to be of type "set"';
    {
      closed_shards: converted,
    }
  ),
  with_closed_shards_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"closed_shards" expected to be of type "set"';
    {
      closed_shards+: converted,
    }
  ),
  with_creation_timestamp(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"creation_timestamp" expected to be of type "number"';
    {
      creation_timestamp: converted,
    }
  ),
  with_encryption_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"encryption_type" expected to be of type "string"';
    {
      encryption_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_open_shards(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"open_shards" expected to be of type "set"';
    {
      open_shards: converted,
    }
  ),
  with_open_shards_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"open_shards" expected to be of type "set"';
    {
      open_shards+: converted,
    }
  ),
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_retention_period(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retention_period" expected to be of type "number"';
    {
      retention_period: converted,
    }
  ),
  with_shard_level_metrics(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"shard_level_metrics" expected to be of type "set"';
    {
      shard_level_metrics: converted,
    }
  ),
  with_shard_level_metrics_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"shard_level_metrics" expected to be of type "set"';
    {
      shard_level_metrics+: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_stream_mode_details(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"stream_mode_details" expected to be of type "list"';
    {
      stream_mode_details: converted,
    }
  ),
  with_stream_mode_details_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"stream_mode_details" expected to be of type "list"';
    {
      stream_mode_details+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
}
