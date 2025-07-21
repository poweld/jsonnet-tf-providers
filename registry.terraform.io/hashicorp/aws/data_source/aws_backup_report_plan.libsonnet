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
  with_creation_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_time" expected to be of type "string"';
    {
      creation_time: converted,
    }
  ),
  with_deployment_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_status" expected to be of type "string"';
    {
      deployment_status: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_report_delivery_channel(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"report_delivery_channel" expected to be of type "list"';
    {
      report_delivery_channel: converted,
    }
  ),
  with_report_delivery_channel_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"report_delivery_channel" expected to be of type "list"';
    {
      report_delivery_channel+: converted,
    }
  ),
  with_report_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"report_setting" expected to be of type "list"';
    {
      report_setting: converted,
    }
  ),
  with_report_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"report_setting" expected to be of type "list"';
    {
      report_setting+: converted,
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
