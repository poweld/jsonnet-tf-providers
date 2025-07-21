{
  local block = self,
  new(enabled, name, sql, sql_version):: (
    {}
    + block.with_enabled(enabled)
    + block.with_name(name)
    + block.with_sql(sql)
    + block.with_sql_version(sql_version)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
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
  with_sql(value):: (
    local converted = value;
    assert std.isString(converted) : '"sql" expected to be of type "string"';
    {
      sql: converted,
    }
  ),
  with_sql_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"sql_version" expected to be of type "string"';
    {
      sql_version: converted,
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
  cloudwatch_alarm:: {
    local block = self,
    new(alarm_name, role_arn, state_reason, state_value):: (
      {}
      + block.with_alarm_name(alarm_name)
      + block.with_role_arn(role_arn)
      + block.with_state_reason(state_reason)
      + block.with_state_value(state_value)
    ),
    with_alarm_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"alarm_name" expected to be of type "string"';
      {
        alarm_name: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_state_reason(value):: (
      local converted = value;
      assert std.isString(converted) : '"state_reason" expected to be of type "string"';
      {
        state_reason: converted,
      }
    ),
    with_state_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"state_value" expected to be of type "string"';
      {
        state_value: converted,
      }
    ),
  },
  cloudwatch_logs:: {
    local block = self,
    new(log_group_name, role_arn):: (
      {}
      + block.with_log_group_name(log_group_name)
      + block.with_role_arn(role_arn)
    ),
    with_batch_mode(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"batch_mode" expected to be of type "bool"';
      {
        batch_mode: converted,
      }
    ),
    with_log_group_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
      {
        log_group_name: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
  },
  cloudwatch_metric:: {
    local block = self,
    new(metric_name, metric_namespace, metric_unit, metric_value, role_arn):: (
      {}
      + block.with_metric_name(metric_name)
      + block.with_metric_namespace(metric_namespace)
      + block.with_metric_unit(metric_unit)
      + block.with_metric_value(metric_value)
      + block.with_role_arn(role_arn)
    ),
    with_metric_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"metric_name" expected to be of type "string"';
      {
        metric_name: converted,
      }
    ),
    with_metric_namespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"metric_namespace" expected to be of type "string"';
      {
        metric_namespace: converted,
      }
    ),
    with_metric_timestamp(value):: (
      local converted = value;
      assert std.isString(converted) : '"metric_timestamp" expected to be of type "string"';
      {
        metric_timestamp: converted,
      }
    ),
    with_metric_unit(value):: (
      local converted = value;
      assert std.isString(converted) : '"metric_unit" expected to be of type "string"';
      {
        metric_unit: converted,
      }
    ),
    with_metric_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"metric_value" expected to be of type "string"';
      {
        metric_value: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
  },
  dynamodb:: {
    local block = self,
    new(hash_key_field, hash_key_value, role_arn, table_name):: (
      {}
      + block.with_hash_key_field(hash_key_field)
      + block.with_hash_key_value(hash_key_value)
      + block.with_role_arn(role_arn)
      + block.with_table_name(table_name)
    ),
    with_hash_key_field(value):: (
      local converted = value;
      assert std.isString(converted) : '"hash_key_field" expected to be of type "string"';
      {
        hash_key_field: converted,
      }
    ),
    with_hash_key_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"hash_key_type" expected to be of type "string"';
      {
        hash_key_type: converted,
      }
    ),
    with_hash_key_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"hash_key_value" expected to be of type "string"';
      {
        hash_key_value: converted,
      }
    ),
    with_operation(value):: (
      local converted = value;
      assert std.isString(converted) : '"operation" expected to be of type "string"';
      {
        operation: converted,
      }
    ),
    with_payload_field(value):: (
      local converted = value;
      assert std.isString(converted) : '"payload_field" expected to be of type "string"';
      {
        payload_field: converted,
      }
    ),
    with_range_key_field(value):: (
      local converted = value;
      assert std.isString(converted) : '"range_key_field" expected to be of type "string"';
      {
        range_key_field: converted,
      }
    ),
    with_range_key_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"range_key_type" expected to be of type "string"';
      {
        range_key_type: converted,
      }
    ),
    with_range_key_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"range_key_value" expected to be of type "string"';
      {
        range_key_value: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_table_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"table_name" expected to be of type "string"';
      {
        table_name: converted,
      }
    ),
  },
  dynamodbv2:: {
    local block = self,
    new(role_arn):: (
      {}
      + block.with_role_arn(role_arn)
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    put_item:: {
      local block = self,
      new(table_name):: (
        {}
        + block.with_table_name(table_name)
      ),
      with_table_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"table_name" expected to be of type "string"';
        {
          table_name: converted,
        }
      ),
    },
    with_put_item(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        put_item: value,
      }
    ),
    with_put_item_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        put_item+: converted,
      }
    ),
  },
  elasticsearch:: {
    local block = self,
    new(endpoint, id, index, role_arn, type):: (
      {}
      + block.with_endpoint(endpoint)
      + block.with_id(id)
      + block.with_index(index)
      + block.with_role_arn(role_arn)
      + block.with_type(type)
    ),
    with_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint" expected to be of type "string"';
      {
        endpoint: converted,
      }
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_index(value):: (
      local converted = value;
      assert std.isString(converted) : '"index" expected to be of type "string"';
      {
        index: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  error_action:: {
    local block = self,
    new():: (
      {}
    ),
    cloudwatch_alarm:: {
      local block = self,
      new(alarm_name, role_arn, state_reason, state_value):: (
        {}
        + block.with_alarm_name(alarm_name)
        + block.with_role_arn(role_arn)
        + block.with_state_reason(state_reason)
        + block.with_state_value(state_value)
      ),
      with_alarm_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"alarm_name" expected to be of type "string"';
        {
          alarm_name: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_state_reason(value):: (
        local converted = value;
        assert std.isString(converted) : '"state_reason" expected to be of type "string"';
        {
          state_reason: converted,
        }
      ),
      with_state_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"state_value" expected to be of type "string"';
        {
          state_value: converted,
        }
      ),
    },
    cloudwatch_logs:: {
      local block = self,
      new(log_group_name, role_arn):: (
        {}
        + block.with_log_group_name(log_group_name)
        + block.with_role_arn(role_arn)
      ),
      with_batch_mode(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"batch_mode" expected to be of type "bool"';
        {
          batch_mode: converted,
        }
      ),
      with_log_group_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
    },
    cloudwatch_metric:: {
      local block = self,
      new(metric_name, metric_namespace, metric_unit, metric_value, role_arn):: (
        {}
        + block.with_metric_name(metric_name)
        + block.with_metric_namespace(metric_namespace)
        + block.with_metric_unit(metric_unit)
        + block.with_metric_value(metric_value)
        + block.with_role_arn(role_arn)
      ),
      with_metric_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_name" expected to be of type "string"';
        {
          metric_name: converted,
        }
      ),
      with_metric_namespace(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_namespace" expected to be of type "string"';
        {
          metric_namespace: converted,
        }
      ),
      with_metric_timestamp(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_timestamp" expected to be of type "string"';
        {
          metric_timestamp: converted,
        }
      ),
      with_metric_unit(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_unit" expected to be of type "string"';
        {
          metric_unit: converted,
        }
      ),
      with_metric_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_value" expected to be of type "string"';
        {
          metric_value: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
    },
    dynamodb:: {
      local block = self,
      new(hash_key_field, hash_key_value, role_arn, table_name):: (
        {}
        + block.with_hash_key_field(hash_key_field)
        + block.with_hash_key_value(hash_key_value)
        + block.with_role_arn(role_arn)
        + block.with_table_name(table_name)
      ),
      with_hash_key_field(value):: (
        local converted = value;
        assert std.isString(converted) : '"hash_key_field" expected to be of type "string"';
        {
          hash_key_field: converted,
        }
      ),
      with_hash_key_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"hash_key_type" expected to be of type "string"';
        {
          hash_key_type: converted,
        }
      ),
      with_hash_key_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"hash_key_value" expected to be of type "string"';
        {
          hash_key_value: converted,
        }
      ),
      with_operation(value):: (
        local converted = value;
        assert std.isString(converted) : '"operation" expected to be of type "string"';
        {
          operation: converted,
        }
      ),
      with_payload_field(value):: (
        local converted = value;
        assert std.isString(converted) : '"payload_field" expected to be of type "string"';
        {
          payload_field: converted,
        }
      ),
      with_range_key_field(value):: (
        local converted = value;
        assert std.isString(converted) : '"range_key_field" expected to be of type "string"';
        {
          range_key_field: converted,
        }
      ),
      with_range_key_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"range_key_type" expected to be of type "string"';
        {
          range_key_type: converted,
        }
      ),
      with_range_key_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"range_key_value" expected to be of type "string"';
        {
          range_key_value: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_table_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"table_name" expected to be of type "string"';
        {
          table_name: converted,
        }
      ),
    },
    dynamodbv2:: {
      local block = self,
      new(role_arn):: (
        {}
        + block.with_role_arn(role_arn)
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      put_item:: {
        local block = self,
        new(table_name):: (
          {}
          + block.with_table_name(table_name)
        ),
        with_table_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"table_name" expected to be of type "string"';
          {
            table_name: converted,
          }
        ),
      },
      with_put_item(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          put_item: value,
        }
      ),
      with_put_item_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          put_item+: converted,
        }
      ),
    },
    elasticsearch:: {
      local block = self,
      new(endpoint, id, index, role_arn, type):: (
        {}
        + block.with_endpoint(endpoint)
        + block.with_id(id)
        + block.with_index(index)
        + block.with_role_arn(role_arn)
        + block.with_type(type)
      ),
      with_endpoint(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint" expected to be of type "string"';
        {
          endpoint: converted,
        }
      ),
      with_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"id" expected to be of type "string"';
        {
          id: converted,
        }
      ),
      with_index(value):: (
        local converted = value;
        assert std.isString(converted) : '"index" expected to be of type "string"';
        {
          index: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    firehose:: {
      local block = self,
      new(delivery_stream_name, role_arn):: (
        {}
        + block.with_delivery_stream_name(delivery_stream_name)
        + block.with_role_arn(role_arn)
      ),
      with_batch_mode(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"batch_mode" expected to be of type "bool"';
        {
          batch_mode: converted,
        }
      ),
      with_delivery_stream_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"delivery_stream_name" expected to be of type "string"';
        {
          delivery_stream_name: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_separator(value):: (
        local converted = value;
        assert std.isString(converted) : '"separator" expected to be of type "string"';
        {
          separator: converted,
        }
      ),
    },
    http:: {
      local block = self,
      new(url):: (
        {}
        + block.with_url(url)
      ),
      with_confirmation_url(value):: (
        local converted = value;
        assert std.isString(converted) : '"confirmation_url" expected to be of type "string"';
        {
          confirmation_url: converted,
        }
      ),
      with_url(value):: (
        local converted = value;
        assert std.isString(converted) : '"url" expected to be of type "string"';
        {
          url: converted,
        }
      ),
      http_header:: {
        local block = self,
        new(key, value):: (
          {}
          + block.with_key(key)
          + block.with_value(value)
        ),
        with_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        with_value(value):: (
          local converted = value;
          assert std.isString(converted) : '"value" expected to be of type "string"';
          {
            value: converted,
          }
        ),
      },
      with_http_header(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          http_header: value,
        }
      ),
      with_http_header_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          http_header+: converted,
        }
      ),
    },
    iot_analytics:: {
      local block = self,
      new(channel_name, role_arn):: (
        {}
        + block.with_channel_name(channel_name)
        + block.with_role_arn(role_arn)
      ),
      with_batch_mode(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"batch_mode" expected to be of type "bool"';
        {
          batch_mode: converted,
        }
      ),
      with_channel_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"channel_name" expected to be of type "string"';
        {
          channel_name: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
    },
    iot_events:: {
      local block = self,
      new(input_name, role_arn):: (
        {}
        + block.with_input_name(input_name)
        + block.with_role_arn(role_arn)
      ),
      with_batch_mode(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"batch_mode" expected to be of type "bool"';
        {
          batch_mode: converted,
        }
      ),
      with_input_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"input_name" expected to be of type "string"';
        {
          input_name: converted,
        }
      ),
      with_message_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_id" expected to be of type "string"';
        {
          message_id: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
    },
    kafka:: {
      local block = self,
      new(client_properties, destination_arn, topic):: (
        {}
        + block.with_client_properties(client_properties)
        + block.with_destination_arn(destination_arn)
        + block.with_topic(topic)
      ),
      with_client_properties(value):: (
        local converted = value;
        assert std.isObject(converted) : '"client_properties" expected to be of type "map"';
        {
          client_properties: converted,
        }
      ),
      with_destination_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination_arn" expected to be of type "string"';
        {
          destination_arn: converted,
        }
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      with_partition(value):: (
        local converted = value;
        assert std.isString(converted) : '"partition" expected to be of type "string"';
        {
          partition: converted,
        }
      ),
      with_topic(value):: (
        local converted = value;
        assert std.isString(converted) : '"topic" expected to be of type "string"';
        {
          topic: converted,
        }
      ),
      header:: {
        local block = self,
        new(key, value):: (
          {}
          + block.with_key(key)
          + block.with_value(value)
        ),
        with_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        with_value(value):: (
          local converted = value;
          assert std.isString(converted) : '"value" expected to be of type "string"';
          {
            value: converted,
          }
        ),
      },
      with_header(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          header: value,
        }
      ),
      with_header_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          header+: converted,
        }
      ),
    },
    kinesis:: {
      local block = self,
      new(role_arn, stream_name):: (
        {}
        + block.with_role_arn(role_arn)
        + block.with_stream_name(stream_name)
      ),
      with_partition_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"partition_key" expected to be of type "string"';
        {
          partition_key: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_stream_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"stream_name" expected to be of type "string"';
        {
          stream_name: converted,
        }
      ),
    },
    lambda:: {
      local block = self,
      new(function_arn):: (
        {}
        + block.with_function_arn(function_arn)
      ),
      with_function_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"function_arn" expected to be of type "string"';
        {
          function_arn: converted,
        }
      ),
    },
    republish:: {
      local block = self,
      new(role_arn, topic):: (
        {}
        + block.with_role_arn(role_arn)
        + block.with_topic(topic)
      ),
      with_qos(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"qos" expected to be of type "number"';
        {
          qos: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_topic(value):: (
        local converted = value;
        assert std.isString(converted) : '"topic" expected to be of type "string"';
        {
          topic: converted,
        }
      ),
    },
    s3:: {
      local block = self,
      new(bucket_name, key, role_arn):: (
        {}
        + block.with_bucket_name(bucket_name)
        + block.with_key(key)
        + block.with_role_arn(role_arn)
      ),
      with_bucket_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
      with_canned_acl(value):: (
        local converted = value;
        assert std.isString(converted) : '"canned_acl" expected to be of type "string"';
        {
          canned_acl: converted,
        }
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
    },
    sns:: {
      local block = self,
      new(role_arn, target_arn):: (
        {}
        + block.with_role_arn(role_arn)
        + block.with_target_arn(target_arn)
      ),
      with_message_format(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_format" expected to be of type "string"';
        {
          message_format: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_target_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"target_arn" expected to be of type "string"';
        {
          target_arn: converted,
        }
      ),
    },
    sqs:: {
      local block = self,
      new(queue_url, role_arn, use_base64):: (
        {}
        + block.with_queue_url(queue_url)
        + block.with_role_arn(role_arn)
        + block.with_use_base64(use_base64)
      ),
      with_queue_url(value):: (
        local converted = value;
        assert std.isString(converted) : '"queue_url" expected to be of type "string"';
        {
          queue_url: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_use_base64(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"use_base64" expected to be of type "bool"';
        {
          use_base64: converted,
        }
      ),
    },
    step_functions:: {
      local block = self,
      new(role_arn, state_machine_name):: (
        {}
        + block.with_role_arn(role_arn)
        + block.with_state_machine_name(state_machine_name)
      ),
      with_execution_name_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"execution_name_prefix" expected to be of type "string"';
        {
          execution_name_prefix: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_state_machine_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"state_machine_name" expected to be of type "string"';
        {
          state_machine_name: converted,
        }
      ),
    },
    timestream:: {
      local block = self,
      new(database_name, role_arn, table_name):: (
        {}
        + block.with_database_name(database_name)
        + block.with_role_arn(role_arn)
        + block.with_table_name(table_name)
      ),
      with_database_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"database_name" expected to be of type "string"';
        {
          database_name: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_table_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"table_name" expected to be of type "string"';
        {
          table_name: converted,
        }
      ),
      dimension:: {
        local block = self,
        new(name, value):: (
          {}
          + block.with_name(name)
          + block.with_value(value)
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        with_value(value):: (
          local converted = value;
          assert std.isString(converted) : '"value" expected to be of type "string"';
          {
            value: converted,
          }
        ),
      },
      timestamp:: {
        local block = self,
        new(unit, value):: (
          {}
          + block.with_unit(unit)
          + block.with_value(value)
        ),
        with_unit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unit" expected to be of type "string"';
          {
            unit: converted,
          }
        ),
        with_value(value):: (
          local converted = value;
          assert std.isString(converted) : '"value" expected to be of type "string"';
          {
            value: converted,
          }
        ),
      },
      with_dimension(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension: value,
        }
      ),
      with_timestamp(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timestamp: value,
        }
      ),
      with_dimension_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension+: converted,
        }
      ),
      with_timestamp_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timestamp+: converted,
        }
      ),
    },
    with_cloudwatch_alarm(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_alarm: value,
      }
    ),
    with_cloudwatch_logs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs: value,
      }
    ),
    with_cloudwatch_metric(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_metric: value,
      }
    ),
    with_dynamodb(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dynamodb: value,
      }
    ),
    with_dynamodbv2(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dynamodbv2: value,
      }
    ),
    with_elasticsearch(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elasticsearch: value,
      }
    ),
    with_firehose(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        firehose: value,
      }
    ),
    with_http(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http: value,
      }
    ),
    with_iot_analytics(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iot_analytics: value,
      }
    ),
    with_iot_events(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iot_events: value,
      }
    ),
    with_kafka(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kafka: value,
      }
    ),
    with_kinesis(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis: value,
      }
    ),
    with_lambda(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda: value,
      }
    ),
    with_republish(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        republish: value,
      }
    ),
    with_s3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3: value,
      }
    ),
    with_sns(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sns: value,
      }
    ),
    with_sqs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs: value,
      }
    ),
    with_step_functions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        step_functions: value,
      }
    ),
    with_timestream(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        timestream: value,
      }
    ),
    with_cloudwatch_alarm_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_alarm+: converted,
      }
    ),
    with_cloudwatch_logs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs+: converted,
      }
    ),
    with_cloudwatch_metric_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_metric+: converted,
      }
    ),
    with_dynamodb_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dynamodb+: converted,
      }
    ),
    with_dynamodbv2_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dynamodbv2+: converted,
      }
    ),
    with_elasticsearch_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elasticsearch+: converted,
      }
    ),
    with_firehose_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        firehose+: converted,
      }
    ),
    with_http_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http+: converted,
      }
    ),
    with_iot_analytics_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iot_analytics+: converted,
      }
    ),
    with_iot_events_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iot_events+: converted,
      }
    ),
    with_kafka_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kafka+: converted,
      }
    ),
    with_kinesis_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis+: converted,
      }
    ),
    with_lambda_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda+: converted,
      }
    ),
    with_republish_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        republish+: converted,
      }
    ),
    with_s3_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3+: converted,
      }
    ),
    with_sns_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sns+: converted,
      }
    ),
    with_sqs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs+: converted,
      }
    ),
    with_step_functions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        step_functions+: converted,
      }
    ),
    with_timestream_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        timestream+: converted,
      }
    ),
  },
  firehose:: {
    local block = self,
    new(delivery_stream_name, role_arn):: (
      {}
      + block.with_delivery_stream_name(delivery_stream_name)
      + block.with_role_arn(role_arn)
    ),
    with_batch_mode(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"batch_mode" expected to be of type "bool"';
      {
        batch_mode: converted,
      }
    ),
    with_delivery_stream_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"delivery_stream_name" expected to be of type "string"';
      {
        delivery_stream_name: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_separator(value):: (
      local converted = value;
      assert std.isString(converted) : '"separator" expected to be of type "string"';
      {
        separator: converted,
      }
    ),
  },
  http:: {
    local block = self,
    new(url):: (
      {}
      + block.with_url(url)
    ),
    with_confirmation_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"confirmation_url" expected to be of type "string"';
      {
        confirmation_url: converted,
      }
    ),
    with_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"url" expected to be of type "string"';
      {
        url: converted,
      }
    ),
    http_header:: {
      local block = self,
      new(key, value):: (
        {}
        + block.with_key(key)
        + block.with_value(value)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    with_http_header(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_header: value,
      }
    ),
    with_http_header_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_header+: converted,
      }
    ),
  },
  iot_analytics:: {
    local block = self,
    new(channel_name, role_arn):: (
      {}
      + block.with_channel_name(channel_name)
      + block.with_role_arn(role_arn)
    ),
    with_batch_mode(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"batch_mode" expected to be of type "bool"';
      {
        batch_mode: converted,
      }
    ),
    with_channel_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"channel_name" expected to be of type "string"';
      {
        channel_name: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
  },
  iot_events:: {
    local block = self,
    new(input_name, role_arn):: (
      {}
      + block.with_input_name(input_name)
      + block.with_role_arn(role_arn)
    ),
    with_batch_mode(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"batch_mode" expected to be of type "bool"';
      {
        batch_mode: converted,
      }
    ),
    with_input_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_name" expected to be of type "string"';
      {
        input_name: converted,
      }
    ),
    with_message_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"message_id" expected to be of type "string"';
      {
        message_id: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
  },
  kafka:: {
    local block = self,
    new(client_properties, destination_arn, topic):: (
      {}
      + block.with_client_properties(client_properties)
      + block.with_destination_arn(destination_arn)
      + block.with_topic(topic)
    ),
    with_client_properties(value):: (
      local converted = value;
      assert std.isObject(converted) : '"client_properties" expected to be of type "map"';
      {
        client_properties: converted,
      }
    ),
    with_destination_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_arn" expected to be of type "string"';
      {
        destination_arn: converted,
      }
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    with_partition(value):: (
      local converted = value;
      assert std.isString(converted) : '"partition" expected to be of type "string"';
      {
        partition: converted,
      }
    ),
    with_topic(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic" expected to be of type "string"';
      {
        topic: converted,
      }
    ),
    header:: {
      local block = self,
      new(key, value):: (
        {}
        + block.with_key(key)
        + block.with_value(value)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    with_header(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        header: value,
      }
    ),
    with_header_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        header+: converted,
      }
    ),
  },
  kinesis:: {
    local block = self,
    new(role_arn, stream_name):: (
      {}
      + block.with_role_arn(role_arn)
      + block.with_stream_name(stream_name)
    ),
    with_partition_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"partition_key" expected to be of type "string"';
      {
        partition_key: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_stream_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"stream_name" expected to be of type "string"';
      {
        stream_name: converted,
      }
    ),
  },
  lambda:: {
    local block = self,
    new(function_arn):: (
      {}
      + block.with_function_arn(function_arn)
    ),
    with_function_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"function_arn" expected to be of type "string"';
      {
        function_arn: converted,
      }
    ),
  },
  republish:: {
    local block = self,
    new(role_arn, topic):: (
      {}
      + block.with_role_arn(role_arn)
      + block.with_topic(topic)
    ),
    with_qos(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"qos" expected to be of type "number"';
      {
        qos: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_topic(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic" expected to be of type "string"';
      {
        topic: converted,
      }
    ),
  },
  s3:: {
    local block = self,
    new(bucket_name, key, role_arn):: (
      {}
      + block.with_bucket_name(bucket_name)
      + block.with_key(key)
      + block.with_role_arn(role_arn)
    ),
    with_bucket_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
      {
        bucket_name: converted,
      }
    ),
    with_canned_acl(value):: (
      local converted = value;
      assert std.isString(converted) : '"canned_acl" expected to be of type "string"';
      {
        canned_acl: converted,
      }
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
  },
  sns:: {
    local block = self,
    new(role_arn, target_arn):: (
      {}
      + block.with_role_arn(role_arn)
      + block.with_target_arn(target_arn)
    ),
    with_message_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"message_format" expected to be of type "string"';
      {
        message_format: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_target_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_arn" expected to be of type "string"';
      {
        target_arn: converted,
      }
    ),
  },
  sqs:: {
    local block = self,
    new(queue_url, role_arn, use_base64):: (
      {}
      + block.with_queue_url(queue_url)
      + block.with_role_arn(role_arn)
      + block.with_use_base64(use_base64)
    ),
    with_queue_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"queue_url" expected to be of type "string"';
      {
        queue_url: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_use_base64(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_base64" expected to be of type "bool"';
      {
        use_base64: converted,
      }
    ),
  },
  step_functions:: {
    local block = self,
    new(role_arn, state_machine_name):: (
      {}
      + block.with_role_arn(role_arn)
      + block.with_state_machine_name(state_machine_name)
    ),
    with_execution_name_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"execution_name_prefix" expected to be of type "string"';
      {
        execution_name_prefix: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_state_machine_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"state_machine_name" expected to be of type "string"';
      {
        state_machine_name: converted,
      }
    ),
  },
  timestream:: {
    local block = self,
    new(database_name, role_arn, table_name):: (
      {}
      + block.with_database_name(database_name)
      + block.with_role_arn(role_arn)
      + block.with_table_name(table_name)
    ),
    with_database_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_name" expected to be of type "string"';
      {
        database_name: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_table_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"table_name" expected to be of type "string"';
      {
        table_name: converted,
      }
    ),
    dimension:: {
      local block = self,
      new(name, value):: (
        {}
        + block.with_name(name)
        + block.with_value(value)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    timestamp:: {
      local block = self,
      new(unit, value):: (
        {}
        + block.with_unit(unit)
        + block.with_value(value)
      ),
      with_unit(value):: (
        local converted = value;
        assert std.isString(converted) : '"unit" expected to be of type "string"';
        {
          unit: converted,
        }
      ),
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    with_dimension(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dimension: value,
      }
    ),
    with_timestamp(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        timestamp: value,
      }
    ),
    with_dimension_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dimension+: converted,
      }
    ),
    with_timestamp_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        timestamp+: converted,
      }
    ),
  },
  with_cloudwatch_alarm(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_alarm: value,
    }
  ),
  with_cloudwatch_logs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_logs: value,
    }
  ),
  with_cloudwatch_metric(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_metric: value,
    }
  ),
  with_dynamodb(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dynamodb: value,
    }
  ),
  with_dynamodbv2(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dynamodbv2: value,
    }
  ),
  with_elasticsearch(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elasticsearch: value,
    }
  ),
  with_error_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      error_action: value,
    }
  ),
  with_firehose(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      firehose: value,
    }
  ),
  with_http(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      http: value,
    }
  ),
  with_iot_analytics(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iot_analytics: value,
    }
  ),
  with_iot_events(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iot_events: value,
    }
  ),
  with_kafka(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka: value,
    }
  ),
  with_kinesis(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis: value,
    }
  ),
  with_lambda(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda: value,
    }
  ),
  with_republish(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      republish: value,
    }
  ),
  with_s3(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3: value,
    }
  ),
  with_sns(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns: value,
    }
  ),
  with_sqs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sqs: value,
    }
  ),
  with_step_functions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      step_functions: value,
    }
  ),
  with_timestream(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      timestream: value,
    }
  ),
  with_cloudwatch_alarm_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_alarm+: converted,
    }
  ),
  with_cloudwatch_logs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_logs+: converted,
    }
  ),
  with_cloudwatch_metric_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_metric+: converted,
    }
  ),
  with_dynamodb_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dynamodb+: converted,
    }
  ),
  with_dynamodbv2_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dynamodbv2+: converted,
    }
  ),
  with_elasticsearch_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elasticsearch+: converted,
    }
  ),
  with_error_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      error_action+: converted,
    }
  ),
  with_firehose_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      firehose+: converted,
    }
  ),
  with_http_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      http+: converted,
    }
  ),
  with_iot_analytics_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iot_analytics+: converted,
    }
  ),
  with_iot_events_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iot_events+: converted,
    }
  ),
  with_kafka_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka+: converted,
    }
  ),
  with_kinesis_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis+: converted,
    }
  ),
  with_lambda_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda+: converted,
    }
  ),
  with_republish_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      republish+: converted,
    }
  ),
  with_s3_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3+: converted,
    }
  ),
  with_sns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns+: converted,
    }
  ),
  with_sqs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sqs+: converted,
    }
  ),
  with_step_functions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      step_functions+: converted,
    }
  ),
  with_timestream_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      timestream+: converted,
    }
  ),
}
