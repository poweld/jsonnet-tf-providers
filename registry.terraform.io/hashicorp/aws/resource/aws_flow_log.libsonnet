{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_deliver_cross_account_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"deliver_cross_account_role" expected to be of type "string"';
    {
      deliver_cross_account_role: converted,
    }
  ),
  with_eni_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"eni_id" expected to be of type "string"';
    {
      eni_id: converted,
    }
  ),
  with_iam_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
    {
      iam_role_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_log_destination(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_destination" expected to be of type "string"';
    {
      log_destination: converted,
    }
  ),
  with_log_destination_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_destination_type" expected to be of type "string"';
    {
      log_destination_type: converted,
    }
  ),
  with_log_format(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_format" expected to be of type "string"';
    {
      log_format: converted,
    }
  ),
  with_max_aggregation_interval(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_aggregation_interval" expected to be of type "number"';
    {
      max_aggregation_interval: converted,
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
  with_subnet_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
    {
      subnet_id: converted,
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
  with_traffic_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"traffic_type" expected to be of type "string"';
    {
      traffic_type: converted,
    }
  ),
  with_transit_gateway_attachment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_attachment_id" expected to be of type "string"';
    {
      transit_gateway_attachment_id: converted,
    }
  ),
  with_transit_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_id" expected to be of type "string"';
    {
      transit_gateway_id: converted,
    }
  ),
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  destination_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_file_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_format" expected to be of type "string"';
      {
        file_format: converted,
      }
    ),
    with_hive_compatible_partitions(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"hive_compatible_partitions" expected to be of type "bool"';
      {
        hive_compatible_partitions: converted,
      }
    ),
    with_per_hour_partition(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"per_hour_partition" expected to be of type "bool"';
      {
        per_hour_partition: converted,
      }
    ),
  },
  with_destination_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_options: value,
    }
  ),
  with_destination_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_options+: converted,
    }
  ),
}
