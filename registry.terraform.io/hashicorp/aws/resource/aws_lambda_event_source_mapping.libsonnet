{
  local block = self,
  new(function_name):: (
    {}
    + block.with_function_name(function_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_batch_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
    {
      batch_size: converted,
    }
  ),
  with_bisect_batch_on_function_error(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"bisect_batch_on_function_error" expected to be of type "bool"';
    {
      bisect_batch_on_function_error: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_event_source_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_source_arn" expected to be of type "string"';
    {
      event_source_arn: converted,
    }
  ),
  with_function_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_arn" expected to be of type "string"';
    {
      function_arn: converted,
    }
  ),
  with_function_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  with_function_response_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"function_response_types" expected to be of type "set"';
    {
      function_response_types: converted,
    }
  ),
  with_function_response_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"function_response_types" expected to be of type "set"';
    {
      function_response_types+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  with_last_modified(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified" expected to be of type "string"';
    {
      last_modified: converted,
    }
  ),
  with_last_processing_result(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_processing_result" expected to be of type "string"';
    {
      last_processing_result: converted,
    }
  ),
  with_maximum_batching_window_in_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_batching_window_in_seconds" expected to be of type "number"';
    {
      maximum_batching_window_in_seconds: converted,
    }
  ),
  with_maximum_record_age_in_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_record_age_in_seconds" expected to be of type "number"';
    {
      maximum_record_age_in_seconds: converted,
    }
  ),
  with_maximum_retry_attempts(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_retry_attempts" expected to be of type "number"';
    {
      maximum_retry_attempts: converted,
    }
  ),
  with_parallelization_factor(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"parallelization_factor" expected to be of type "number"';
    {
      parallelization_factor: converted,
    }
  ),
  with_queues(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"queues" expected to be of type "list"';
    {
      queues: converted,
    }
  ),
  with_queues_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"queues" expected to be of type "list"';
    {
      queues+: converted,
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
  with_starting_position(value):: (
    local converted = value;
    assert std.isString(converted) : '"starting_position" expected to be of type "string"';
    {
      starting_position: converted,
    }
  ),
  with_starting_position_timestamp(value):: (
    local converted = value;
    assert std.isString(converted) : '"starting_position_timestamp" expected to be of type "string"';
    {
      starting_position_timestamp: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_state_transition_reason(value):: (
    local converted = value;
    assert std.isString(converted) : '"state_transition_reason" expected to be of type "string"';
    {
      state_transition_reason: converted,
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
  with_topics(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"topics" expected to be of type "set"';
    {
      topics: converted,
    }
  ),
  with_topics_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"topics" expected to be of type "set"';
    {
      topics+: converted,
    }
  ),
  with_tumbling_window_in_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tumbling_window_in_seconds" expected to be of type "number"';
    {
      tumbling_window_in_seconds: converted,
    }
  ),
  with_uuid(value):: (
    local converted = value;
    assert std.isString(converted) : '"uuid" expected to be of type "string"';
    {
      uuid: converted,
    }
  ),
  amazon_managed_kafka_event_source_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_consumer_group_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"consumer_group_id" expected to be of type "string"';
      {
        consumer_group_id: converted,
      }
    ),
  },
  destination_config:: {
    local block = self,
    new():: (
      {}
    ),
    on_failure:: {
      local block = self,
      new(destination_arn):: (
        {}
        + block.with_destination_arn(destination_arn)
      ),
      with_destination_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination_arn" expected to be of type "string"';
        {
          destination_arn: converted,
        }
      ),
    },
    with_on_failure(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_failure: value,
      }
    ),
    with_on_failure_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_failure+: converted,
      }
    ),
  },
  document_db_event_source_config:: {
    local block = self,
    new(database_name):: (
      {}
      + block.with_database_name(database_name)
    ),
    with_collection_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"collection_name" expected to be of type "string"';
      {
        collection_name: converted,
      }
    ),
    with_database_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_name" expected to be of type "string"';
      {
        database_name: converted,
      }
    ),
    with_full_document(value):: (
      local converted = value;
      assert std.isString(converted) : '"full_document" expected to be of type "string"';
      {
        full_document: converted,
      }
    ),
  },
  filter_criteria:: {
    local block = self,
    new():: (
      {}
    ),
    filter:: {
      local block = self,
      new():: (
        {}
      ),
      with_pattern(value):: (
        local converted = value;
        assert std.isString(converted) : '"pattern" expected to be of type "string"';
        {
          pattern: converted,
        }
      ),
    },
    with_filter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter: value,
      }
    ),
    with_filter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter+: converted,
      }
    ),
  },
  metrics_config:: {
    local block = self,
    new(metrics):: (
      {}
      + block.with_metrics(metrics)
    ),
    with_metrics(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"metrics" expected to be of type "set"';
      {
        metrics: converted,
      }
    ),
    with_metrics_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"metrics" expected to be of type "set"';
      {
        metrics+: converted,
      }
    ),
  },
  provisioned_poller_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_maximum_pollers(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_pollers" expected to be of type "number"';
      {
        maximum_pollers: converted,
      }
    ),
    with_minimum_pollers(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"minimum_pollers" expected to be of type "number"';
      {
        minimum_pollers: converted,
      }
    ),
  },
  scaling_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_maximum_concurrency(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_concurrency" expected to be of type "number"';
      {
        maximum_concurrency: converted,
      }
    ),
  },
  self_managed_event_source:: {
    local block = self,
    new(endpoints):: (
      {}
      + block.with_endpoints(endpoints)
    ),
    with_endpoints(value):: (
      local converted = value;
      assert std.isObject(converted) : '"endpoints" expected to be of type "map"';
      {
        endpoints: converted,
      }
    ),
  },
  self_managed_kafka_event_source_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_consumer_group_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"consumer_group_id" expected to be of type "string"';
      {
        consumer_group_id: converted,
      }
    ),
  },
  source_access_configuration:: {
    local block = self,
    new(type, uri):: (
      {}
      + block.with_type(type)
      + block.with_uri(uri)
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
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
  with_amazon_managed_kafka_event_source_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      amazon_managed_kafka_event_source_config: value,
    }
  ),
  with_destination_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_config: value,
    }
  ),
  with_document_db_event_source_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      document_db_event_source_config: value,
    }
  ),
  with_filter_criteria(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_criteria: value,
    }
  ),
  with_metrics_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metrics_config: value,
    }
  ),
  with_provisioned_poller_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      provisioned_poller_config: value,
    }
  ),
  with_scaling_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_config: value,
    }
  ),
  with_self_managed_event_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      self_managed_event_source: value,
    }
  ),
  with_self_managed_kafka_event_source_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      self_managed_kafka_event_source_config: value,
    }
  ),
  with_source_access_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_access_configuration: value,
    }
  ),
  with_amazon_managed_kafka_event_source_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      amazon_managed_kafka_event_source_config+: converted,
    }
  ),
  with_destination_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_config+: converted,
    }
  ),
  with_document_db_event_source_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      document_db_event_source_config+: converted,
    }
  ),
  with_filter_criteria_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_criteria+: converted,
    }
  ),
  with_metrics_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metrics_config+: converted,
    }
  ),
  with_provisioned_poller_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      provisioned_poller_config+: converted,
    }
  ),
  with_scaling_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_config+: converted,
    }
  ),
  with_self_managed_event_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      self_managed_event_source+: converted,
    }
  ),
  with_self_managed_kafka_event_source_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      self_managed_kafka_event_source_config+: converted,
    }
  ),
  with_source_access_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_access_configuration+: converted,
    }
  ),
}
