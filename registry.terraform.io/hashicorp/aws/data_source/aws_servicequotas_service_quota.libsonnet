{
  local block = self,
  new(service_code):: (
    {}
    + block.with_service_code(service_code)
  ),
  with_adjustable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"adjustable" expected to be of type "bool"';
    {
      adjustable: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_default_value(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_value" expected to be of type "number"';
    {
      default_value: converted,
    }
  ),
  with_global_quota(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"global_quota" expected to be of type "bool"';
    {
      global_quota: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_quota_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"quota_code" expected to be of type "string"';
    {
      quota_code: converted,
    }
  ),
  with_quota_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"quota_name" expected to be of type "string"';
    {
      quota_name: converted,
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
  with_service_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_code" expected to be of type "string"';
    {
      service_code: converted,
    }
  ),
  with_service_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_name" expected to be of type "string"';
    {
      service_name: converted,
    }
  ),
  with_usage_metric(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"usage_metric" expected to be of type "list"';
    {
      usage_metric: converted,
    }
  ),
  with_usage_metric_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"usage_metric" expected to be of type "list"';
    {
      usage_metric+: converted,
    }
  ),
  with_value(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"value" expected to be of type "number"';
    {
      value: converted,
    }
  ),
}
