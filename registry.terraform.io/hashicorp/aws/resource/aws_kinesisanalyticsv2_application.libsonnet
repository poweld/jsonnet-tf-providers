{
  local block = self,
  new(name, runtime_environment, service_execution_role):: (
    {}
    + block.with_name(name)
    + block.with_runtime_environment(runtime_environment)
    + block.with_service_execution_role(service_execution_role)
  ),
  with_application_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_mode" expected to be of type "string"';
    {
      application_mode: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_create_timestamp(value):: (
    local converted = value;
    assert std.isString(converted) : '"create_timestamp" expected to be of type "string"';
    {
      create_timestamp: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_force_stop(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_stop" expected to be of type "bool"';
    {
      force_stop: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_update_timestamp(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_update_timestamp" expected to be of type "string"';
    {
      last_update_timestamp: converted,
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
  with_runtime_environment(value):: (
    local converted = value;
    assert std.isString(converted) : '"runtime_environment" expected to be of type "string"';
    {
      runtime_environment: converted,
    }
  ),
  with_service_execution_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_execution_role" expected to be of type "string"';
    {
      service_execution_role: converted,
    }
  ),
  with_start_application(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"start_application" expected to be of type "bool"';
    {
      start_application: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  with_version_id(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"version_id" expected to be of type "number"';
    {
      version_id: converted,
    }
  ),
  application_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    application_code_configuration:: {
      local block = self,
      new(code_content_type):: (
        {}
        + block.with_code_content_type(code_content_type)
      ),
      with_code_content_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"code_content_type" expected to be of type "string"';
        {
          code_content_type: converted,
        }
      ),
      code_content:: {
        local block = self,
        new():: (
          {}
        ),
        with_text_content(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_content" expected to be of type "string"';
          {
            text_content: converted,
          }
        ),
        s3_content_location:: {
          local block = self,
          new(bucket_arn, file_key):: (
            {}
            + block.with_bucket_arn(bucket_arn)
            + block.with_file_key(file_key)
          ),
          with_bucket_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
            {
              bucket_arn: converted,
            }
          ),
          with_file_key(value):: (
            local converted = value;
            assert std.isString(converted) : '"file_key" expected to be of type "string"';
            {
              file_key: converted,
            }
          ),
          with_object_version(value):: (
            local converted = value;
            assert std.isString(converted) : '"object_version" expected to be of type "string"';
            {
              object_version: converted,
            }
          ),
        },
        with_s3_content_location(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_content_location: value,
          }
        ),
        with_s3_content_location_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_content_location+: converted,
          }
        ),
      },
      with_code_content(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          code_content: value,
        }
      ),
      with_code_content_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          code_content+: converted,
        }
      ),
    },
    application_snapshot_configuration:: {
      local block = self,
      new(snapshots_enabled):: (
        {}
        + block.with_snapshots_enabled(snapshots_enabled)
      ),
      with_snapshots_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"snapshots_enabled" expected to be of type "bool"';
        {
          snapshots_enabled: converted,
        }
      ),
    },
    environment_properties:: {
      local block = self,
      new():: (
        {}
      ),
      property_group:: {
        local block = self,
        new(property_group_id, property_map):: (
          {}
          + block.with_property_group_id(property_group_id)
          + block.with_property_map(property_map)
        ),
        with_property_group_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"property_group_id" expected to be of type "string"';
          {
            property_group_id: converted,
          }
        ),
        with_property_map(value):: (
          local converted = value;
          assert std.isObject(converted) : '"property_map" expected to be of type "map"';
          {
            property_map: converted,
          }
        ),
      },
      with_property_group(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          property_group: value,
        }
      ),
      with_property_group_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          property_group+: converted,
        }
      ),
    },
    flink_application_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      checkpoint_configuration:: {
        local block = self,
        new(configuration_type):: (
          {}
          + block.with_configuration_type(configuration_type)
        ),
        with_checkpoint_interval(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"checkpoint_interval" expected to be of type "number"';
          {
            checkpoint_interval: converted,
          }
        ),
        with_checkpointing_enabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"checkpointing_enabled" expected to be of type "bool"';
          {
            checkpointing_enabled: converted,
          }
        ),
        with_configuration_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"configuration_type" expected to be of type "string"';
          {
            configuration_type: converted,
          }
        ),
        with_min_pause_between_checkpoints(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"min_pause_between_checkpoints" expected to be of type "number"';
          {
            min_pause_between_checkpoints: converted,
          }
        ),
      },
      monitoring_configuration:: {
        local block = self,
        new(configuration_type):: (
          {}
          + block.with_configuration_type(configuration_type)
        ),
        with_configuration_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"configuration_type" expected to be of type "string"';
          {
            configuration_type: converted,
          }
        ),
        with_log_level(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_level" expected to be of type "string"';
          {
            log_level: converted,
          }
        ),
        with_metrics_level(value):: (
          local converted = value;
          assert std.isString(converted) : '"metrics_level" expected to be of type "string"';
          {
            metrics_level: converted,
          }
        ),
      },
      parallelism_configuration:: {
        local block = self,
        new(configuration_type):: (
          {}
          + block.with_configuration_type(configuration_type)
        ),
        with_auto_scaling_enabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"auto_scaling_enabled" expected to be of type "bool"';
          {
            auto_scaling_enabled: converted,
          }
        ),
        with_configuration_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"configuration_type" expected to be of type "string"';
          {
            configuration_type: converted,
          }
        ),
        with_parallelism(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"parallelism" expected to be of type "number"';
          {
            parallelism: converted,
          }
        ),
        with_parallelism_per_kpu(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"parallelism_per_kpu" expected to be of type "number"';
          {
            parallelism_per_kpu: converted,
          }
        ),
      },
      with_checkpoint_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          checkpoint_configuration: value,
        }
      ),
      with_monitoring_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          monitoring_configuration: value,
        }
      ),
      with_parallelism_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parallelism_configuration: value,
        }
      ),
      with_checkpoint_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          checkpoint_configuration+: converted,
        }
      ),
      with_monitoring_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          monitoring_configuration+: converted,
        }
      ),
      with_parallelism_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parallelism_configuration+: converted,
        }
      ),
    },
    run_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      application_restore_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        with_application_restore_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"application_restore_type" expected to be of type "string"';
          {
            application_restore_type: converted,
          }
        ),
        with_snapshot_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"snapshot_name" expected to be of type "string"';
          {
            snapshot_name: converted,
          }
        ),
      },
      flink_run_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        with_allow_non_restored_state(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"allow_non_restored_state" expected to be of type "bool"';
          {
            allow_non_restored_state: converted,
          }
        ),
      },
      with_application_restore_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          application_restore_configuration: value,
        }
      ),
      with_flink_run_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          flink_run_configuration: value,
        }
      ),
      with_application_restore_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          application_restore_configuration+: converted,
        }
      ),
      with_flink_run_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          flink_run_configuration+: converted,
        }
      ),
    },
    sql_application_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      input:: {
        local block = self,
        new(name_prefix):: (
          {}
          + block.with_name_prefix(name_prefix)
        ),
        with_in_app_stream_names(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"in_app_stream_names" expected to be of type "list"';
          {
            in_app_stream_names: converted,
          }
        ),
        with_in_app_stream_names_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"in_app_stream_names" expected to be of type "list"';
          {
            in_app_stream_names+: converted,
          }
        ),
        with_input_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"input_id" expected to be of type "string"';
          {
            input_id: converted,
          }
        ),
        with_name_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
          {
            name_prefix: converted,
          }
        ),
        input_parallelism:: {
          local block = self,
          new():: (
            {}
          ),
          with_count(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"count" expected to be of type "number"';
            {
              count: converted,
            }
          ),
        },
        input_processing_configuration:: {
          local block = self,
          new():: (
            {}
          ),
          input_lambda_processor:: {
            local block = self,
            new(resource_arn):: (
              {}
              + block.with_resource_arn(resource_arn)
            ),
            with_resource_arn(value):: (
              local converted = value;
              assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
              {
                resource_arn: converted,
              }
            ),
          },
          with_input_lambda_processor(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              input_lambda_processor: value,
            }
          ),
          with_input_lambda_processor_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              input_lambda_processor+: converted,
            }
          ),
        },
        input_schema:: {
          local block = self,
          new():: (
            {}
          ),
          with_record_encoding(value):: (
            local converted = value;
            assert std.isString(converted) : '"record_encoding" expected to be of type "string"';
            {
              record_encoding: converted,
            }
          ),
          record_column:: {
            local block = self,
            new(name, sql_type):: (
              {}
              + block.with_name(name)
              + block.with_sql_type(sql_type)
            ),
            with_mapping(value):: (
              local converted = value;
              assert std.isString(converted) : '"mapping" expected to be of type "string"';
              {
                mapping: converted,
              }
            ),
            with_name(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            with_sql_type(value):: (
              local converted = value;
              assert std.isString(converted) : '"sql_type" expected to be of type "string"';
              {
                sql_type: converted,
              }
            ),
          },
          record_format:: {
            local block = self,
            new(record_format_type):: (
              {}
              + block.with_record_format_type(record_format_type)
            ),
            with_record_format_type(value):: (
              local converted = value;
              assert std.isString(converted) : '"record_format_type" expected to be of type "string"';
              {
                record_format_type: converted,
              }
            ),
            mapping_parameters:: {
              local block = self,
              new():: (
                {}
              ),
              csv_mapping_parameters:: {
                local block = self,
                new(record_column_delimiter, record_row_delimiter):: (
                  {}
                  + block.with_record_column_delimiter(record_column_delimiter)
                  + block.with_record_row_delimiter(record_row_delimiter)
                ),
                with_record_column_delimiter(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"record_column_delimiter" expected to be of type "string"';
                  {
                    record_column_delimiter: converted,
                  }
                ),
                with_record_row_delimiter(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"record_row_delimiter" expected to be of type "string"';
                  {
                    record_row_delimiter: converted,
                  }
                ),
              },
              json_mapping_parameters:: {
                local block = self,
                new(record_row_path):: (
                  {}
                  + block.with_record_row_path(record_row_path)
                ),
                with_record_row_path(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"record_row_path" expected to be of type "string"';
                  {
                    record_row_path: converted,
                  }
                ),
              },
              with_csv_mapping_parameters(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  csv_mapping_parameters: value,
                }
              ),
              with_json_mapping_parameters(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  json_mapping_parameters: value,
                }
              ),
              with_csv_mapping_parameters_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  csv_mapping_parameters+: converted,
                }
              ),
              with_json_mapping_parameters_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  json_mapping_parameters+: converted,
                }
              ),
            },
            with_mapping_parameters(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                mapping_parameters: value,
              }
            ),
            with_mapping_parameters_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                mapping_parameters+: converted,
              }
            ),
          },
          with_record_column(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              record_column: value,
            }
          ),
          with_record_format(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              record_format: value,
            }
          ),
          with_record_column_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              record_column+: converted,
            }
          ),
          with_record_format_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              record_format+: converted,
            }
          ),
        },
        input_starting_position_configuration:: {
          local block = self,
          new():: (
            {}
          ),
          with_input_starting_position(value):: (
            local converted = value;
            assert std.isString(converted) : '"input_starting_position" expected to be of type "string"';
            {
              input_starting_position: converted,
            }
          ),
        },
        kinesis_firehose_input:: {
          local block = self,
          new(resource_arn):: (
            {}
            + block.with_resource_arn(resource_arn)
          ),
          with_resource_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
            {
              resource_arn: converted,
            }
          ),
        },
        kinesis_streams_input:: {
          local block = self,
          new(resource_arn):: (
            {}
            + block.with_resource_arn(resource_arn)
          ),
          with_resource_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
            {
              resource_arn: converted,
            }
          ),
        },
        with_input_parallelism(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_parallelism: value,
          }
        ),
        with_input_processing_configuration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_processing_configuration: value,
          }
        ),
        with_input_schema(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_schema: value,
          }
        ),
        with_input_starting_position_configuration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_starting_position_configuration: value,
          }
        ),
        with_kinesis_firehose_input(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kinesis_firehose_input: value,
          }
        ),
        with_kinesis_streams_input(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kinesis_streams_input: value,
          }
        ),
        with_input_parallelism_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_parallelism+: converted,
          }
        ),
        with_input_processing_configuration_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_processing_configuration+: converted,
          }
        ),
        with_input_schema_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_schema+: converted,
          }
        ),
        with_input_starting_position_configuration_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_starting_position_configuration+: converted,
          }
        ),
        with_kinesis_firehose_input_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kinesis_firehose_input+: converted,
          }
        ),
        with_kinesis_streams_input_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kinesis_streams_input+: converted,
          }
        ),
      },
      output:: {
        local block = self,
        new(name):: (
          {}
          + block.with_name(name)
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        with_output_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"output_id" expected to be of type "string"';
          {
            output_id: converted,
          }
        ),
        destination_schema:: {
          local block = self,
          new(record_format_type):: (
            {}
            + block.with_record_format_type(record_format_type)
          ),
          with_record_format_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"record_format_type" expected to be of type "string"';
            {
              record_format_type: converted,
            }
          ),
        },
        kinesis_firehose_output:: {
          local block = self,
          new(resource_arn):: (
            {}
            + block.with_resource_arn(resource_arn)
          ),
          with_resource_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
            {
              resource_arn: converted,
            }
          ),
        },
        kinesis_streams_output:: {
          local block = self,
          new(resource_arn):: (
            {}
            + block.with_resource_arn(resource_arn)
          ),
          with_resource_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
            {
              resource_arn: converted,
            }
          ),
        },
        lambda_output:: {
          local block = self,
          new(resource_arn):: (
            {}
            + block.with_resource_arn(resource_arn)
          ),
          with_resource_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
            {
              resource_arn: converted,
            }
          ),
        },
        with_destination_schema(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            destination_schema: value,
          }
        ),
        with_kinesis_firehose_output(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kinesis_firehose_output: value,
          }
        ),
        with_kinesis_streams_output(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kinesis_streams_output: value,
          }
        ),
        with_lambda_output(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            lambda_output: value,
          }
        ),
        with_destination_schema_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            destination_schema+: converted,
          }
        ),
        with_kinesis_firehose_output_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kinesis_firehose_output+: converted,
          }
        ),
        with_kinesis_streams_output_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kinesis_streams_output+: converted,
          }
        ),
        with_lambda_output_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            lambda_output+: converted,
          }
        ),
      },
      reference_data_source:: {
        local block = self,
        new(table_name):: (
          {}
          + block.with_table_name(table_name)
        ),
        with_reference_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"reference_id" expected to be of type "string"';
          {
            reference_id: converted,
          }
        ),
        with_table_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"table_name" expected to be of type "string"';
          {
            table_name: converted,
          }
        ),
        reference_schema:: {
          local block = self,
          new():: (
            {}
          ),
          with_record_encoding(value):: (
            local converted = value;
            assert std.isString(converted) : '"record_encoding" expected to be of type "string"';
            {
              record_encoding: converted,
            }
          ),
          record_column:: {
            local block = self,
            new(name, sql_type):: (
              {}
              + block.with_name(name)
              + block.with_sql_type(sql_type)
            ),
            with_mapping(value):: (
              local converted = value;
              assert std.isString(converted) : '"mapping" expected to be of type "string"';
              {
                mapping: converted,
              }
            ),
            with_name(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            with_sql_type(value):: (
              local converted = value;
              assert std.isString(converted) : '"sql_type" expected to be of type "string"';
              {
                sql_type: converted,
              }
            ),
          },
          record_format:: {
            local block = self,
            new(record_format_type):: (
              {}
              + block.with_record_format_type(record_format_type)
            ),
            with_record_format_type(value):: (
              local converted = value;
              assert std.isString(converted) : '"record_format_type" expected to be of type "string"';
              {
                record_format_type: converted,
              }
            ),
            mapping_parameters:: {
              local block = self,
              new():: (
                {}
              ),
              csv_mapping_parameters:: {
                local block = self,
                new(record_column_delimiter, record_row_delimiter):: (
                  {}
                  + block.with_record_column_delimiter(record_column_delimiter)
                  + block.with_record_row_delimiter(record_row_delimiter)
                ),
                with_record_column_delimiter(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"record_column_delimiter" expected to be of type "string"';
                  {
                    record_column_delimiter: converted,
                  }
                ),
                with_record_row_delimiter(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"record_row_delimiter" expected to be of type "string"';
                  {
                    record_row_delimiter: converted,
                  }
                ),
              },
              json_mapping_parameters:: {
                local block = self,
                new(record_row_path):: (
                  {}
                  + block.with_record_row_path(record_row_path)
                ),
                with_record_row_path(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"record_row_path" expected to be of type "string"';
                  {
                    record_row_path: converted,
                  }
                ),
              },
              with_csv_mapping_parameters(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  csv_mapping_parameters: value,
                }
              ),
              with_json_mapping_parameters(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  json_mapping_parameters: value,
                }
              ),
              with_csv_mapping_parameters_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  csv_mapping_parameters+: converted,
                }
              ),
              with_json_mapping_parameters_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  json_mapping_parameters+: converted,
                }
              ),
            },
            with_mapping_parameters(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                mapping_parameters: value,
              }
            ),
            with_mapping_parameters_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                mapping_parameters+: converted,
              }
            ),
          },
          with_record_column(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              record_column: value,
            }
          ),
          with_record_format(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              record_format: value,
            }
          ),
          with_record_column_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              record_column+: converted,
            }
          ),
          with_record_format_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              record_format+: converted,
            }
          ),
        },
        s3_reference_data_source:: {
          local block = self,
          new(bucket_arn, file_key):: (
            {}
            + block.with_bucket_arn(bucket_arn)
            + block.with_file_key(file_key)
          ),
          with_bucket_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
            {
              bucket_arn: converted,
            }
          ),
          with_file_key(value):: (
            local converted = value;
            assert std.isString(converted) : '"file_key" expected to be of type "string"';
            {
              file_key: converted,
            }
          ),
        },
        with_reference_schema(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            reference_schema: value,
          }
        ),
        with_s3_reference_data_source(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_reference_data_source: value,
          }
        ),
        with_reference_schema_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            reference_schema+: converted,
          }
        ),
        with_s3_reference_data_source_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_reference_data_source+: converted,
          }
        ),
      },
      with_input(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input: value,
        }
      ),
      with_output(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          output: value,
        }
      ),
      with_reference_data_source(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          reference_data_source: value,
        }
      ),
      with_input_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input+: converted,
        }
      ),
      with_output_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          output+: converted,
        }
      ),
      with_reference_data_source_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          reference_data_source+: converted,
        }
      ),
    },
    vpc_configuration:: {
      local block = self,
      new(security_group_ids, subnet_ids):: (
        {}
        + block.with_security_group_ids(security_group_ids)
        + block.with_subnet_ids(subnet_ids)
      ),
      with_security_group_ids(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
        {
          security_group_ids: converted,
        }
      ),
      with_security_group_ids_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
        {
          security_group_ids+: converted,
        }
      ),
      with_subnet_ids(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
        {
          subnet_ids: converted,
        }
      ),
      with_subnet_ids_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
        {
          subnet_ids+: converted,
        }
      ),
      with_vpc_configuration_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"vpc_configuration_id" expected to be of type "string"';
        {
          vpc_configuration_id: converted,
        }
      ),
      with_vpc_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
        {
          vpc_id: converted,
        }
      ),
    },
    with_application_code_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        application_code_configuration: value,
      }
    ),
    with_application_snapshot_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        application_snapshot_configuration: value,
      }
    ),
    with_environment_properties(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        environment_properties: value,
      }
    ),
    with_flink_application_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        flink_application_configuration: value,
      }
    ),
    with_run_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        run_configuration: value,
      }
    ),
    with_sql_application_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sql_application_configuration: value,
      }
    ),
    with_vpc_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_configuration: value,
      }
    ),
    with_application_code_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        application_code_configuration+: converted,
      }
    ),
    with_application_snapshot_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        application_snapshot_configuration+: converted,
      }
    ),
    with_environment_properties_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        environment_properties+: converted,
      }
    ),
    with_flink_application_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        flink_application_configuration+: converted,
      }
    ),
    with_run_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        run_configuration+: converted,
      }
    ),
    with_sql_application_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sql_application_configuration+: converted,
      }
    ),
    with_vpc_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_configuration+: converted,
      }
    ),
  },
  cloudwatch_logging_options:: {
    local block = self,
    new(log_stream_arn):: (
      {}
      + block.with_log_stream_arn(log_stream_arn)
    ),
    with_cloudwatch_logging_option_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatch_logging_option_id" expected to be of type "string"';
      {
        cloudwatch_logging_option_id: converted,
      }
    ),
    with_log_stream_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_stream_arn" expected to be of type "string"';
      {
        log_stream_arn: converted,
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
  with_application_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      application_configuration: value,
    }
  ),
  with_cloudwatch_logging_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_logging_options: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_application_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      application_configuration+: converted,
    }
  ),
  with_cloudwatch_logging_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_logging_options+: converted,
    }
  ),
}
