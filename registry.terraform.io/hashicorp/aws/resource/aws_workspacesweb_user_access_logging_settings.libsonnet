{
  local block = self,
  new(kinesis_stream_arn):: (
    {}
    + block.with_kinesis_stream_arn(kinesis_stream_arn)
  ),
  with_associated_portal_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"associated_portal_arns" expected to be of type "list"';
    {
      associated_portal_arns: converted,
    }
  ),
  with_associated_portal_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"associated_portal_arns" expected to be of type "list"';
    {
      associated_portal_arns+: converted,
    }
  ),
  with_kinesis_stream_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kinesis_stream_arn" expected to be of type "string"';
    {
      kinesis_stream_arn: converted,
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
  with_user_access_logging_settings_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_access_logging_settings_arn" expected to be of type "string"';
    {
      user_access_logging_settings_arn: converted,
    }
  ),
}
