{
  local block = self,
  new(configuration_set_name):: (
    {}
    + block.with_configuration_set_name(configuration_set_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_configuration_set_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_set_name" expected to be of type "string"';
    {
      configuration_set_name: converted,
    }
  ),
  with_delivery_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"delivery_options" expected to be of type "list"';
    {
      delivery_options: converted,
    }
  ),
  with_delivery_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"delivery_options" expected to be of type "list"';
    {
      delivery_options+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_reputation_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"reputation_options" expected to be of type "list"';
    {
      reputation_options: converted,
    }
  ),
  with_reputation_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"reputation_options" expected to be of type "list"';
    {
      reputation_options+: converted,
    }
  ),
  with_sending_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"sending_options" expected to be of type "list"';
    {
      sending_options: converted,
    }
  ),
  with_sending_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"sending_options" expected to be of type "list"';
    {
      sending_options+: converted,
    }
  ),
  with_suppression_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"suppression_options" expected to be of type "list"';
    {
      suppression_options: converted,
    }
  ),
  with_suppression_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"suppression_options" expected to be of type "list"';
    {
      suppression_options+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tracking_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"tracking_options" expected to be of type "list"';
    {
      tracking_options: converted,
    }
  ),
  with_tracking_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"tracking_options" expected to be of type "list"';
    {
      tracking_options+: converted,
    }
  ),
  with_vdm_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vdm_options" expected to be of type "list"';
    {
      vdm_options: converted,
    }
  ),
  with_vdm_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vdm_options" expected to be of type "list"';
    {
      vdm_options+: converted,
    }
  ),
}
