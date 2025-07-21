{
  local block = self,
  new(contact_list_name):: (
    {}
    + block.with_contact_list_name(contact_list_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_contact_list_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"contact_list_name" expected to be of type "string"';
    {
      contact_list_name: converted,
    }
  ),
  with_created_timestamp(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_timestamp" expected to be of type "string"';
    {
      created_timestamp: converted,
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
  with_last_updated_timestamp(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_timestamp" expected to be of type "string"';
    {
      last_updated_timestamp: converted,
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
  topic:: {
    local block = self,
    new(default_subscription_status, display_name, topic_name):: (
      {}
      + block.with_default_subscription_status(default_subscription_status)
      + block.with_display_name(display_name)
      + block.with_topic_name(topic_name)
    ),
    with_default_subscription_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_subscription_status" expected to be of type "string"';
      {
        default_subscription_status: converted,
      }
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_display_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"display_name" expected to be of type "string"';
      {
        display_name: converted,
      }
    ),
    with_topic_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_name" expected to be of type "string"';
      {
        topic_name: converted,
      }
    ),
  },
  with_topic(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      topic: value,
    }
  ),
  with_topic_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      topic+: converted,
    }
  ),
}
