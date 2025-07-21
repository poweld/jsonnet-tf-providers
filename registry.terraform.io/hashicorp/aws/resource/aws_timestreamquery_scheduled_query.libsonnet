{
  local block = self,
  new(execution_role_arn, name, query_string):: (
    {}
    + block.with_execution_role_arn(execution_role_arn)
    + block.with_name(name)
    + block.with_query_string(query_string)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_creation_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_time" expected to be of type "string"';
    {
      creation_time: converted,
    }
  ),
  with_execution_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
    {
      execution_role_arn: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_next_invocation_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"next_invocation_time" expected to be of type "string"';
    {
      next_invocation_time: converted,
    }
  ),
  with_previous_invocation_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"previous_invocation_time" expected to be of type "string"';
    {
      previous_invocation_time: converted,
    }
  ),
  with_query_string(value):: (
    local converted = value;
    assert std.isString(converted) : '"query_string" expected to be of type "string"';
    {
      query_string: converted,
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
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
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
  error_report_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    s3_configuration:: {
      local block = self,
      new(bucket_name):: (
        {}
        + block.with_bucket_name(bucket_name)
      ),
      with_bucket_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
      with_encryption_option(value):: (
        local converted = value;
        assert std.isString(converted) : '"encryption_option" expected to be of type "string"';
        {
          encryption_option: converted,
        }
      ),
      with_object_key_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"object_key_prefix" expected to be of type "string"';
        {
          object_key_prefix: converted,
        }
      ),
    },
    with_s3_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    with_s3_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
  },
  last_run_summary:: {
    local block = self,
    new():: (
      {}
    ),
    with_failure_reason(value):: (
      local converted = value;
      assert std.isString(converted) : '"failure_reason" expected to be of type "string"';
      {
        failure_reason: converted,
      }
    ),
    with_invocation_time(value):: (
      local converted = value;
      assert std.isString(converted) : '"invocation_time" expected to be of type "string"';
      {
        invocation_time: converted,
      }
    ),
    with_run_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"run_status" expected to be of type "string"';
      {
        run_status: converted,
      }
    ),
    with_trigger_time(value):: (
      local converted = value;
      assert std.isString(converted) : '"trigger_time" expected to be of type "string"';
      {
        trigger_time: converted,
      }
    ),
    error_report_location:: {
      local block = self,
      new():: (
        {}
      ),
      s3_report_location:: {
        local block = self,
        new():: (
          {}
        ),
        with_bucket_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
          {
            bucket_name: converted,
          }
        ),
        with_object_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"object_key" expected to be of type "string"';
          {
            object_key: converted,
          }
        ),
      },
      with_s3_report_location(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_report_location: value,
        }
      ),
      with_s3_report_location_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_report_location+: converted,
        }
      ),
    },
    execution_stats:: {
      local block = self,
      new():: (
        {}
      ),
      with_bytes_metered(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"bytes_metered" expected to be of type "number"';
        {
          bytes_metered: converted,
        }
      ),
      with_cumulative_bytes_scanned(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"cumulative_bytes_scanned" expected to be of type "number"';
        {
          cumulative_bytes_scanned: converted,
        }
      ),
      with_data_writes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"data_writes" expected to be of type "number"';
        {
          data_writes: converted,
        }
      ),
      with_execution_time_in_millis(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"execution_time_in_millis" expected to be of type "number"';
        {
          execution_time_in_millis: converted,
        }
      ),
      with_query_result_rows(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"query_result_rows" expected to be of type "number"';
        {
          query_result_rows: converted,
        }
      ),
      with_records_ingested(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"records_ingested" expected to be of type "number"';
        {
          records_ingested: converted,
        }
      ),
    },
    query_insights_response:: {
      local block = self,
      new():: (
        {}
      ),
      with_output_bytes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"output_bytes" expected to be of type "number"';
        {
          output_bytes: converted,
        }
      ),
      with_output_rows(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"output_rows" expected to be of type "number"';
        {
          output_rows: converted,
        }
      ),
      with_query_table_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"query_table_count" expected to be of type "number"';
        {
          query_table_count: converted,
        }
      ),
      query_spatial_coverage:: {
        local block = self,
        new():: (
          {}
        ),
        max:: {
          local block = self,
          new():: (
            {}
          ),
          with_partition_key(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"partition_key" expected to be of type "list"';
            {
              partition_key: converted,
            }
          ),
          with_partition_key_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"partition_key" expected to be of type "list"';
            {
              partition_key+: converted,
            }
          ),
          with_table_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"table_arn" expected to be of type "string"';
            {
              table_arn: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        with_max(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            max: value,
          }
        ),
        with_max_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            max+: converted,
          }
        ),
      },
      query_temporal_range:: {
        local block = self,
        new():: (
          {}
        ),
        max:: {
          local block = self,
          new():: (
            {}
          ),
          with_table_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"table_arn" expected to be of type "string"';
            {
              table_arn: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        with_max(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            max: value,
          }
        ),
        with_max_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            max+: converted,
          }
        ),
      },
      with_query_spatial_coverage(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_spatial_coverage: value,
        }
      ),
      with_query_temporal_range(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_temporal_range: value,
        }
      ),
      with_query_spatial_coverage_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_spatial_coverage+: converted,
        }
      ),
      with_query_temporal_range_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_temporal_range+: converted,
        }
      ),
    },
    with_error_report_location(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        error_report_location: value,
      }
    ),
    with_execution_stats(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        execution_stats: value,
      }
    ),
    with_query_insights_response(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_insights_response: value,
      }
    ),
    with_error_report_location_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        error_report_location+: converted,
      }
    ),
    with_execution_stats_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        execution_stats+: converted,
      }
    ),
    with_query_insights_response_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_insights_response+: converted,
      }
    ),
  },
  notification_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    sns_configuration:: {
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
    with_sns_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sns_configuration: value,
      }
    ),
    with_sns_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sns_configuration+: converted,
      }
    ),
  },
  recently_failed_runs:: {
    local block = self,
    new():: (
      {}
    ),
    with_failure_reason(value):: (
      local converted = value;
      assert std.isString(converted) : '"failure_reason" expected to be of type "string"';
      {
        failure_reason: converted,
      }
    ),
    with_invocation_time(value):: (
      local converted = value;
      assert std.isString(converted) : '"invocation_time" expected to be of type "string"';
      {
        invocation_time: converted,
      }
    ),
    with_run_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"run_status" expected to be of type "string"';
      {
        run_status: converted,
      }
    ),
    with_trigger_time(value):: (
      local converted = value;
      assert std.isString(converted) : '"trigger_time" expected to be of type "string"';
      {
        trigger_time: converted,
      }
    ),
    error_report_location:: {
      local block = self,
      new():: (
        {}
      ),
      s3_report_location:: {
        local block = self,
        new():: (
          {}
        ),
        with_bucket_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
          {
            bucket_name: converted,
          }
        ),
        with_object_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"object_key" expected to be of type "string"';
          {
            object_key: converted,
          }
        ),
      },
      with_s3_report_location(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_report_location: value,
        }
      ),
      with_s3_report_location_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_report_location+: converted,
        }
      ),
    },
    execution_stats:: {
      local block = self,
      new():: (
        {}
      ),
      with_bytes_metered(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"bytes_metered" expected to be of type "number"';
        {
          bytes_metered: converted,
        }
      ),
      with_cumulative_bytes_scanned(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"cumulative_bytes_scanned" expected to be of type "number"';
        {
          cumulative_bytes_scanned: converted,
        }
      ),
      with_data_writes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"data_writes" expected to be of type "number"';
        {
          data_writes: converted,
        }
      ),
      with_execution_time_in_millis(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"execution_time_in_millis" expected to be of type "number"';
        {
          execution_time_in_millis: converted,
        }
      ),
      with_query_result_rows(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"query_result_rows" expected to be of type "number"';
        {
          query_result_rows: converted,
        }
      ),
      with_records_ingested(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"records_ingested" expected to be of type "number"';
        {
          records_ingested: converted,
        }
      ),
    },
    query_insights_response:: {
      local block = self,
      new():: (
        {}
      ),
      with_output_bytes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"output_bytes" expected to be of type "number"';
        {
          output_bytes: converted,
        }
      ),
      with_output_rows(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"output_rows" expected to be of type "number"';
        {
          output_rows: converted,
        }
      ),
      with_query_table_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"query_table_count" expected to be of type "number"';
        {
          query_table_count: converted,
        }
      ),
      query_spatial_coverage:: {
        local block = self,
        new():: (
          {}
        ),
        max:: {
          local block = self,
          new():: (
            {}
          ),
          with_partition_key(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"partition_key" expected to be of type "list"';
            {
              partition_key: converted,
            }
          ),
          with_partition_key_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"partition_key" expected to be of type "list"';
            {
              partition_key+: converted,
            }
          ),
          with_table_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"table_arn" expected to be of type "string"';
            {
              table_arn: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        with_max(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            max: value,
          }
        ),
        with_max_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            max+: converted,
          }
        ),
      },
      query_temporal_range:: {
        local block = self,
        new():: (
          {}
        ),
        max:: {
          local block = self,
          new():: (
            {}
          ),
          with_table_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"table_arn" expected to be of type "string"';
            {
              table_arn: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        with_max(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            max: value,
          }
        ),
        with_max_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            max+: converted,
          }
        ),
      },
      with_query_spatial_coverage(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_spatial_coverage: value,
        }
      ),
      with_query_temporal_range(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_temporal_range: value,
        }
      ),
      with_query_spatial_coverage_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_spatial_coverage+: converted,
        }
      ),
      with_query_temporal_range_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_temporal_range+: converted,
        }
      ),
    },
    with_error_report_location(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        error_report_location: value,
      }
    ),
    with_execution_stats(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        execution_stats: value,
      }
    ),
    with_query_insights_response(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_insights_response: value,
      }
    ),
    with_error_report_location_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        error_report_location+: converted,
      }
    ),
    with_execution_stats_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        execution_stats+: converted,
      }
    ),
    with_query_insights_response_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_insights_response+: converted,
      }
    ),
  },
  schedule_configuration:: {
    local block = self,
    new(schedule_expression):: (
      {}
      + block.with_schedule_expression(schedule_expression)
    ),
    with_schedule_expression(value):: (
      local converted = value;
      assert std.isString(converted) : '"schedule_expression" expected to be of type "string"';
      {
        schedule_expression: converted,
      }
    ),
  },
  target_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    timestream_configuration:: {
      local block = self,
      new(database_name, table_name, time_column):: (
        {}
        + block.with_database_name(database_name)
        + block.with_table_name(table_name)
        + block.with_time_column(time_column)
      ),
      with_database_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"database_name" expected to be of type "string"';
        {
          database_name: converted,
        }
      ),
      with_measure_name_column(value):: (
        local converted = value;
        assert std.isString(converted) : '"measure_name_column" expected to be of type "string"';
        {
          measure_name_column: converted,
        }
      ),
      with_table_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"table_name" expected to be of type "string"';
        {
          table_name: converted,
        }
      ),
      with_time_column(value):: (
        local converted = value;
        assert std.isString(converted) : '"time_column" expected to be of type "string"';
        {
          time_column: converted,
        }
      ),
      dimension_mapping:: {
        local block = self,
        new(dimension_value_type, name):: (
          {}
          + block.with_dimension_value_type(dimension_value_type)
          + block.with_name(name)
        ),
        with_dimension_value_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"dimension_value_type" expected to be of type "string"';
          {
            dimension_value_type: converted,
          }
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
      },
      mixed_measure_mapping:: {
        local block = self,
        new(measure_value_type):: (
          {}
          + block.with_measure_value_type(measure_value_type)
        ),
        with_measure_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"measure_name" expected to be of type "string"';
          {
            measure_name: converted,
          }
        ),
        with_measure_value_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"measure_value_type" expected to be of type "string"';
          {
            measure_value_type: converted,
          }
        ),
        with_source_column(value):: (
          local converted = value;
          assert std.isString(converted) : '"source_column" expected to be of type "string"';
          {
            source_column: converted,
          }
        ),
        with_target_measure_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"target_measure_name" expected to be of type "string"';
          {
            target_measure_name: converted,
          }
        ),
        multi_measure_attribute_mapping:: {
          local block = self,
          new(measure_value_type, source_column):: (
            {}
            + block.with_measure_value_type(measure_value_type)
            + block.with_source_column(source_column)
          ),
          with_measure_value_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"measure_value_type" expected to be of type "string"';
            {
              measure_value_type: converted,
            }
          ),
          with_source_column(value):: (
            local converted = value;
            assert std.isString(converted) : '"source_column" expected to be of type "string"';
            {
              source_column: converted,
            }
          ),
          with_target_multi_measure_attribute_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"target_multi_measure_attribute_name" expected to be of type "string"';
            {
              target_multi_measure_attribute_name: converted,
            }
          ),
        },
        with_multi_measure_attribute_mapping(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            multi_measure_attribute_mapping: value,
          }
        ),
        with_multi_measure_attribute_mapping_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            multi_measure_attribute_mapping+: converted,
          }
        ),
      },
      multi_measure_mappings:: {
        local block = self,
        new():: (
          {}
        ),
        with_target_multi_measure_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"target_multi_measure_name" expected to be of type "string"';
          {
            target_multi_measure_name: converted,
          }
        ),
        multi_measure_attribute_mapping:: {
          local block = self,
          new(measure_value_type, source_column):: (
            {}
            + block.with_measure_value_type(measure_value_type)
            + block.with_source_column(source_column)
          ),
          with_measure_value_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"measure_value_type" expected to be of type "string"';
            {
              measure_value_type: converted,
            }
          ),
          with_source_column(value):: (
            local converted = value;
            assert std.isString(converted) : '"source_column" expected to be of type "string"';
            {
              source_column: converted,
            }
          ),
          with_target_multi_measure_attribute_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"target_multi_measure_attribute_name" expected to be of type "string"';
            {
              target_multi_measure_attribute_name: converted,
            }
          ),
        },
        with_multi_measure_attribute_mapping(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            multi_measure_attribute_mapping: value,
          }
        ),
        with_multi_measure_attribute_mapping_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            multi_measure_attribute_mapping+: converted,
          }
        ),
      },
      with_dimension_mapping(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension_mapping: value,
        }
      ),
      with_mixed_measure_mapping(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          mixed_measure_mapping: value,
        }
      ),
      with_multi_measure_mappings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          multi_measure_mappings: value,
        }
      ),
      with_dimension_mapping_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension_mapping+: converted,
        }
      ),
      with_mixed_measure_mapping_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          mixed_measure_mapping+: converted,
        }
      ),
      with_multi_measure_mappings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          multi_measure_mappings+: converted,
        }
      ),
    },
    with_timestream_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        timestream_configuration: value,
      }
    ),
    with_timestream_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        timestream_configuration+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_error_report_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      error_report_configuration: value,
    }
  ),
  with_last_run_summary(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      last_run_summary: value,
    }
  ),
  with_notification_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_configuration: value,
    }
  ),
  with_recently_failed_runs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recently_failed_runs: value,
    }
  ),
  with_schedule_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule_configuration: value,
    }
  ),
  with_target_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_error_report_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      error_report_configuration+: converted,
    }
  ),
  with_last_run_summary_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      last_run_summary+: converted,
    }
  ),
  with_notification_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_configuration+: converted,
    }
  ),
  with_recently_failed_runs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recently_failed_runs+: converted,
    }
  ),
  with_schedule_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule_configuration+: converted,
    }
  ),
  with_target_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_configuration+: converted,
    }
  ),
}
