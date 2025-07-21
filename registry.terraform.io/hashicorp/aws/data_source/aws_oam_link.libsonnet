{
  local block = self,
  new(link_identifier):: (
    {}
    + block.with_link_identifier(link_identifier)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  with_label_template(value):: (
    local converted = value;
    assert std.isString(converted) : '"label_template" expected to be of type "string"';
    {
      label_template: converted,
    }
  ),
  with_link_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"link_configuration" expected to be of type "list"';
    {
      link_configuration: converted,
    }
  ),
  with_link_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"link_configuration" expected to be of type "list"';
    {
      link_configuration+: converted,
    }
  ),
  with_link_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"link_id" expected to be of type "string"';
    {
      link_id: converted,
    }
  ),
  with_link_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"link_identifier" expected to be of type "string"';
    {
      link_identifier: converted,
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
  with_resource_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
    {
      resource_types: converted,
    }
  ),
  with_resource_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
    {
      resource_types+: converted,
    }
  ),
  with_sink_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"sink_arn" expected to be of type "string"';
    {
      sink_arn: converted,
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
