{
  local block = self,
  new(resource_group_name):: (
    {}
    + block.with_resource_group_name(resource_group_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auto_config_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_config_enabled" expected to be of type "bool"';
    {
      auto_config_enabled: converted,
    }
  ),
  with_auto_create(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_create" expected to be of type "bool"';
    {
      auto_create: converted,
    }
  ),
  with_cwe_monitor_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cwe_monitor_enabled" expected to be of type "bool"';
    {
      cwe_monitor_enabled: converted,
    }
  ),
  with_grouping_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"grouping_type" expected to be of type "string"';
    {
      grouping_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ops_center_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ops_center_enabled" expected to be of type "bool"';
    {
      ops_center_enabled: converted,
    }
  ),
  with_ops_item_sns_topic_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"ops_item_sns_topic_arn" expected to be of type "string"';
    {
      ops_item_sns_topic_arn: converted,
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
  with_resource_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_group_name" expected to be of type "string"';
    {
      resource_group_name: converted,
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
