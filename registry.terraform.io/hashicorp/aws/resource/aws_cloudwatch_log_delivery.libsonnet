{
  local block = self,
  new(delivery_destination_arn, delivery_source_name):: (
    {}
    + block.with_delivery_destination_arn(delivery_destination_arn)
    + block.with_delivery_source_name(delivery_source_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_delivery_destination_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_destination_arn" expected to be of type "string"';
    {
      delivery_destination_arn: converted,
    }
  ),
  with_delivery_source_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_source_name" expected to be of type "string"';
    {
      delivery_source_name: converted,
    }
  ),
  with_field_delimiter(value):: (
    local converted = value;
    assert std.isString(converted) : '"field_delimiter" expected to be of type "string"';
    {
      field_delimiter: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_record_fields(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"record_fields" expected to be of type "list"';
    {
      record_fields: converted,
    }
  ),
  with_record_fields_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"record_fields" expected to be of type "list"';
    {
      record_fields+: converted,
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
  with_s3_delivery_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"s3_delivery_configuration" expected to be of type "list"';
    {
      s3_delivery_configuration: converted,
    }
  ),
  with_s3_delivery_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"s3_delivery_configuration" expected to be of type "list"';
    {
      s3_delivery_configuration+: converted,
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
