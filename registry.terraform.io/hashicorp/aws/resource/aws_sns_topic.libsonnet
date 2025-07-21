{
  local block = self,
  new():: (
    {}
  ),
  with_application_failure_feedback_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_failure_feedback_role_arn" expected to be of type "string"';
    {
      application_failure_feedback_role_arn: converted,
    }
  ),
  with_application_success_feedback_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_success_feedback_role_arn" expected to be of type "string"';
    {
      application_success_feedback_role_arn: converted,
    }
  ),
  with_application_success_feedback_sample_rate(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"application_success_feedback_sample_rate" expected to be of type "number"';
    {
      application_success_feedback_sample_rate: converted,
    }
  ),
  with_archive_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"archive_policy" expected to be of type "string"';
    {
      archive_policy: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_beginning_archive_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"beginning_archive_time" expected to be of type "string"';
    {
      beginning_archive_time: converted,
    }
  ),
  with_content_based_deduplication(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"content_based_deduplication" expected to be of type "bool"';
    {
      content_based_deduplication: converted,
    }
  ),
  with_delivery_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_policy" expected to be of type "string"';
    {
      delivery_policy: converted,
    }
  ),
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  with_fifo_throughput_scope(value):: (
    local converted = value;
    assert std.isString(converted) : '"fifo_throughput_scope" expected to be of type "string"';
    {
      fifo_throughput_scope: converted,
    }
  ),
  with_fifo_topic(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"fifo_topic" expected to be of type "bool"';
    {
      fifo_topic: converted,
    }
  ),
  with_firehose_failure_feedback_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"firehose_failure_feedback_role_arn" expected to be of type "string"';
    {
      firehose_failure_feedback_role_arn: converted,
    }
  ),
  with_firehose_success_feedback_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"firehose_success_feedback_role_arn" expected to be of type "string"';
    {
      firehose_success_feedback_role_arn: converted,
    }
  ),
  with_firehose_success_feedback_sample_rate(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"firehose_success_feedback_sample_rate" expected to be of type "number"';
    {
      firehose_success_feedback_sample_rate: converted,
    }
  ),
  with_http_failure_feedback_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_failure_feedback_role_arn" expected to be of type "string"';
    {
      http_failure_feedback_role_arn: converted,
    }
  ),
  with_http_success_feedback_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_success_feedback_role_arn" expected to be of type "string"';
    {
      http_success_feedback_role_arn: converted,
    }
  ),
  with_http_success_feedback_sample_rate(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"http_success_feedback_sample_rate" expected to be of type "number"';
    {
      http_success_feedback_sample_rate: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_master_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_master_key_id" expected to be of type "string"';
    {
      kms_master_key_id: converted,
    }
  ),
  with_lambda_failure_feedback_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"lambda_failure_feedback_role_arn" expected to be of type "string"';
    {
      lambda_failure_feedback_role_arn: converted,
    }
  ),
  with_lambda_success_feedback_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"lambda_success_feedback_role_arn" expected to be of type "string"';
    {
      lambda_success_feedback_role_arn: converted,
    }
  ),
  with_lambda_success_feedback_sample_rate(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"lambda_success_feedback_sample_rate" expected to be of type "number"';
    {
      lambda_success_feedback_sample_rate: converted,
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
  with_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner" expected to be of type "string"';
    {
      owner: converted,
    }
  ),
  with_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
  with_signature_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"signature_version" expected to be of type "number"';
    {
      signature_version: converted,
    }
  ),
  with_sqs_failure_feedback_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"sqs_failure_feedback_role_arn" expected to be of type "string"';
    {
      sqs_failure_feedback_role_arn: converted,
    }
  ),
  with_sqs_success_feedback_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"sqs_success_feedback_role_arn" expected to be of type "string"';
    {
      sqs_success_feedback_role_arn: converted,
    }
  ),
  with_sqs_success_feedback_sample_rate(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"sqs_success_feedback_sample_rate" expected to be of type "number"';
    {
      sqs_success_feedback_sample_rate: converted,
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
  with_tracing_config(value):: (
    local converted = value;
    assert std.isString(converted) : '"tracing_config" expected to be of type "string"';
    {
      tracing_config: converted,
    }
  ),
}
