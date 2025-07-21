{
  local block = self,
  new(enabled, log_group_arn_list):: (
    {}
    + block.with_enabled(enabled)
    + block.with_log_group_arn_list(log_group_arn_list)
  ),
  with_anomaly_visibility_time(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"anomaly_visibility_time" expected to be of type "number"';
    {
      anomaly_visibility_time: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_detector_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"detector_name" expected to be of type "string"';
    {
      detector_name: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_evaluation_frequency(value):: (
    local converted = value;
    assert std.isString(converted) : '"evaluation_frequency" expected to be of type "string"';
    {
      evaluation_frequency: converted,
    }
  ),
  with_filter_pattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"filter_pattern" expected to be of type "string"';
    {
      filter_pattern: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_log_group_arn_list(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"log_group_arn_list" expected to be of type "list"';
    {
      log_group_arn_list: converted,
    }
  ),
  with_log_group_arn_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"log_group_arn_list" expected to be of type "list"';
    {
      log_group_arn_list+: converted,
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
}
