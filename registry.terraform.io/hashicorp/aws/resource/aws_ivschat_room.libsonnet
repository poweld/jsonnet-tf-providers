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
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_logging_configuration_identifiers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"logging_configuration_identifiers" expected to be of type "list"';
    {
      logging_configuration_identifiers: converted,
    }
  ),
  with_logging_configuration_identifiers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"logging_configuration_identifiers" expected to be of type "list"';
    {
      logging_configuration_identifiers+: converted,
    }
  ),
  with_maximum_message_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_message_length" expected to be of type "number"';
    {
      maximum_message_length: converted,
    }
  ),
  with_maximum_message_rate_per_second(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_message_rate_per_second" expected to be of type "number"';
    {
      maximum_message_rate_per_second: converted,
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
  message_review_handler:: {
    local block = self,
    new():: (
      {}
    ),
    with_fallback_result(value):: (
      local converted = value;
      assert std.isString(converted) : '"fallback_result" expected to be of type "string"';
      {
        fallback_result: converted,
      }
    ),
    with_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"uri" expected to be of type "string"';
      {
        uri: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_message_review_handler(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      message_review_handler: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_message_review_handler_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      message_review_handler+: converted,
    }
  ),
}
