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
  with_encryption_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"encryption_type" expected to be of type "string"';
    {
      encryption_type: converted,
    }
  ),
  with_enforce_consumer_deletion(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enforce_consumer_deletion" expected to be of type "bool"';
    {
      enforce_consumer_deletion: converted,
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
  with_shard_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"shard_count" expected to be of type "number"';
    {
      shard_count: converted,
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
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  stream_mode_details:: {
    local block = self,
    new(stream_mode):: (
      {}
      + block.with_stream_mode(stream_mode)
    ),
    with_stream_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"stream_mode" expected to be of type "string"';
      {
        stream_mode: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_stream_mode_details(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stream_mode_details: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_stream_mode_details_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stream_mode_details+: converted,
    }
  ),
}
