{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_content_based_deduplication(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"content_based_deduplication" expected to be of type "bool"';
    {
      content_based_deduplication: converted,
    }
  ),
  with_deduplication_scope(value):: (
    local converted = value;
    assert std.isString(converted) : '"deduplication_scope" expected to be of type "string"';
    {
      deduplication_scope: converted,
    }
  ),
  with_delay_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"delay_seconds" expected to be of type "number"';
    {
      delay_seconds: converted,
    }
  ),
  with_fifo_queue(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"fifo_queue" expected to be of type "bool"';
    {
      fifo_queue: converted,
    }
  ),
  with_fifo_throughput_limit(value):: (
    local converted = value;
    assert std.isString(converted) : '"fifo_throughput_limit" expected to be of type "string"';
    {
      fifo_throughput_limit: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_data_key_reuse_period_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"kms_data_key_reuse_period_seconds" expected to be of type "number"';
    {
      kms_data_key_reuse_period_seconds: converted,
    }
  ),
  with_kms_master_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_master_key_id" expected to be of type "string"';
    {
      kms_master_key_id: converted,
    }
  ),
  with_max_message_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_message_size" expected to be of type "number"';
    {
      max_message_size: converted,
    }
  ),
  with_message_retention_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"message_retention_seconds" expected to be of type "number"';
    {
      message_retention_seconds: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  with_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
    }
  ),
  with_receive_wait_time_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"receive_wait_time_seconds" expected to be of type "number"';
    {
      receive_wait_time_seconds: converted,
    }
  ),
  with_redrive_allow_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"redrive_allow_policy" expected to be of type "string"';
    {
      redrive_allow_policy: converted,
    }
  ),
  with_redrive_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"redrive_policy" expected to be of type "string"';
    {
      redrive_policy: converted,
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
  with_sqs_managed_sse_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"sqs_managed_sse_enabled" expected to be of type "bool"';
    {
      sqs_managed_sse_enabled: converted,
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
  with_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
    }
  ),
  with_visibility_timeout_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"visibility_timeout_seconds" expected to be of type "number"';
    {
      visibility_timeout_seconds: converted,
    }
  ),
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
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
