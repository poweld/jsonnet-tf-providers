{
  local block = self,
  new():: (
    {}
  ),
  with_default_sender_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_sender_id" expected to be of type "string"';
    {
      default_sender_id: converted,
    }
  ),
  with_default_sms_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_sms_type" expected to be of type "string"';
    {
      default_sms_type: converted,
    }
  ),
  with_delivery_status_iam_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_status_iam_role_arn" expected to be of type "string"';
    {
      delivery_status_iam_role_arn: converted,
    }
  ),
  with_delivery_status_success_sampling_rate(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_status_success_sampling_rate" expected to be of type "string"';
    {
      delivery_status_success_sampling_rate: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_monthly_spend_limit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"monthly_spend_limit" expected to be of type "number"';
    {
      monthly_spend_limit: converted,
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
  with_usage_report_s3_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"usage_report_s3_bucket" expected to be of type "string"';
    {
      usage_report_s3_bucket: converted,
    }
  ),
}
