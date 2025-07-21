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
  with_delivery_destination_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_destination_type" expected to be of type "string"';
    {
      delivery_destination_type: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_output_format(value):: (
    local converted = value;
    assert std.isString(converted) : '"output_format" expected to be of type "string"';
    {
      output_format: converted,
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
  delivery_destination_configuration:: {
    local block = self,
    new(destination_resource_arn):: (
      {}
      + block.with_destination_resource_arn(destination_resource_arn)
    ),
    with_destination_resource_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_resource_arn" expected to be of type "string"';
      {
        destination_resource_arn: converted,
      }
    ),
  },
  with_delivery_destination_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delivery_destination_configuration: value,
    }
  ),
  with_delivery_destination_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delivery_destination_configuration+: converted,
    }
  ),
}
