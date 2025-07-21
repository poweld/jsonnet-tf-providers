{
  local block = self,
  new(configuration_set_name, event_destination_name):: (
    {}
    + block.with_configuration_set_name(configuration_set_name)
    + block.with_event_destination_name(event_destination_name)
  ),
  with_configuration_set_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_set_name" expected to be of type "string"';
    {
      configuration_set_name: converted,
    }
  ),
  with_event_destination_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_destination_name" expected to be of type "string"';
    {
      event_destination_name: converted,
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
  event_destination:: {
    local block = self,
    new(matching_event_types):: (
      {}
      + block.with_matching_event_types(matching_event_types)
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_matching_event_types(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"matching_event_types" expected to be of type "set"';
      {
        matching_event_types: converted,
      }
    ),
    with_matching_event_types_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"matching_event_types" expected to be of type "set"';
      {
        matching_event_types+: converted,
      }
    ),
    cloud_watch_destination:: {
      local block = self,
      new():: (
        {}
      ),
      dimension_configuration:: {
        local block = self,
        new(default_dimension_value, dimension_name, dimension_value_source):: (
          {}
          + block.with_default_dimension_value(default_dimension_value)
          + block.with_dimension_name(dimension_name)
          + block.with_dimension_value_source(dimension_value_source)
        ),
        with_default_dimension_value(value):: (
          local converted = value;
          assert std.isString(converted) : '"default_dimension_value" expected to be of type "string"';
          {
            default_dimension_value: converted,
          }
        ),
        with_dimension_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"dimension_name" expected to be of type "string"';
          {
            dimension_name: converted,
          }
        ),
        with_dimension_value_source(value):: (
          local converted = value;
          assert std.isString(converted) : '"dimension_value_source" expected to be of type "string"';
          {
            dimension_value_source: converted,
          }
        ),
      },
      with_dimension_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension_configuration: value,
        }
      ),
      with_dimension_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension_configuration+: converted,
        }
      ),
    },
    event_bridge_destination:: {
      local block = self,
      new(event_bus_arn):: (
        {}
        + block.with_event_bus_arn(event_bus_arn)
      ),
      with_event_bus_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"event_bus_arn" expected to be of type "string"';
        {
          event_bus_arn: converted,
        }
      ),
    },
    kinesis_firehose_destination:: {
      local block = self,
      new(delivery_stream_arn, iam_role_arn):: (
        {}
        + block.with_delivery_stream_arn(delivery_stream_arn)
        + block.with_iam_role_arn(iam_role_arn)
      ),
      with_delivery_stream_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"delivery_stream_arn" expected to be of type "string"';
        {
          delivery_stream_arn: converted,
        }
      ),
      with_iam_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
        {
          iam_role_arn: converted,
        }
      ),
    },
    pinpoint_destination:: {
      local block = self,
      new(application_arn):: (
        {}
        + block.with_application_arn(application_arn)
      ),
      with_application_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"application_arn" expected to be of type "string"';
        {
          application_arn: converted,
        }
      ),
    },
    sns_destination:: {
      local block = self,
      new(topic_arn):: (
        {}
        + block.with_topic_arn(topic_arn)
      ),
      with_topic_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
        {
          topic_arn: converted,
        }
      ),
    },
    with_cloud_watch_destination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloud_watch_destination: value,
      }
    ),
    with_event_bridge_destination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        event_bridge_destination: value,
      }
    ),
    with_kinesis_firehose_destination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_firehose_destination: value,
      }
    ),
    with_pinpoint_destination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pinpoint_destination: value,
      }
    ),
    with_sns_destination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sns_destination: value,
      }
    ),
    with_cloud_watch_destination_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloud_watch_destination+: converted,
      }
    ),
    with_event_bridge_destination_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        event_bridge_destination+: converted,
      }
    ),
    with_kinesis_firehose_destination_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_firehose_destination+: converted,
      }
    ),
    with_pinpoint_destination_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pinpoint_destination+: converted,
      }
    ),
    with_sns_destination_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sns_destination+: converted,
      }
    ),
  },
  with_event_destination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_destination: value,
    }
  ),
  with_event_destination_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_destination+: converted,
    }
  ),
}
