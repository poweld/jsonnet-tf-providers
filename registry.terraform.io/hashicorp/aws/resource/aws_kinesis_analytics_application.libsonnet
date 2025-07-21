{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"code" expected to be of type "string"';
    {
      code: converted,
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
  with_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"version" expected to be of type "number"';
    {
      version: converted,
    }
  ),
  cloudwatch_logging_options:: {
    local block = self,
    new(log_stream_arn, role_arn):: (
      {}
      + block.with_log_stream_arn(log_stream_arn)
      + block.with_role_arn(role_arn)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_log_stream_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_stream_arn" expected to be of type "string"';
      {
        log_stream_arn: converted,
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
  inputs:: {
    local block = self,
    new(name_prefix):: (
      {}
      + block.with_name_prefix(name_prefix)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_name_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
      {
        name_prefix: converted,
      }
    ),
    with_stream_names(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"stream_names" expected to be of type "list"';
      {
        stream_names: converted,
      }
    ),
    with_stream_names_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"stream_names" expected to be of type "list"';
      {
        stream_names+: converted,
      }
    ),
    kinesis_firehose:: {
      local block = self,
      new(resource_arn, role_arn):: (
        {}
        + block.with_resource_arn(resource_arn)
        + block.with_role_arn(role_arn)
      ),
      with_resource_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
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
    kinesis_stream:: {
      local block = self,
      new(resource_arn, role_arn):: (
        {}
        + block.with_resource_arn(resource_arn)
        + block.with_role_arn(role_arn)
      ),
      with_resource_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
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
    parallelism:: {
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
    processing_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      lambda:: {
        local block = self,
        new(resource_arn, role_arn):: (
          {}
          + block.with_resource_arn(resource_arn)
          + block.with_role_arn(role_arn)
        ),
        with_resource_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
          {
            resource_arn: converted,
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
      with_lambda(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          lambda: value,
        }
      ),
      with_lambda_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          lambda+: converted,
        }
      ),
    },
    schema:: {
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
      record_columns:: {
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
        new():: (
          {}
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
          csv:: {
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
          json:: {
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
          with_csv(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              csv: value,
            }
          ),
          with_json(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              json: value,
            }
          ),
          with_csv_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              csv+: converted,
            }
          ),
          with_json_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              json+: converted,
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
      with_record_columns(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_columns: value,
        }
      ),
      with_record_format(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_format: value,
        }
      ),
      with_record_columns_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_columns+: converted,
        }
      ),
      with_record_format_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_format+: converted,
        }
      ),
    },
    starting_position_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_starting_position(value):: (
        local converted = value;
        assert std.isString(converted) : '"starting_position" expected to be of type "string"';
        {
          starting_position: converted,
        }
      ),
    },
    with_kinesis_firehose(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_firehose: value,
      }
    ),
    with_kinesis_stream(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream: value,
      }
    ),
    with_parallelism(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parallelism: value,
      }
    ),
    with_processing_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    with_schema(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schema: value,
      }
    ),
    with_starting_position_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        starting_position_configuration: value,
      }
    ),
    with_kinesis_firehose_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_firehose+: converted,
      }
    ),
    with_kinesis_stream_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream+: converted,
      }
    ),
    with_parallelism_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parallelism+: converted,
      }
    ),
    with_processing_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    with_schema_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schema+: converted,
      }
    ),
    with_starting_position_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        starting_position_configuration+: converted,
      }
    ),
  },
  outputs:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
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
    kinesis_firehose:: {
      local block = self,
      new(resource_arn, role_arn):: (
        {}
        + block.with_resource_arn(resource_arn)
        + block.with_role_arn(role_arn)
      ),
      with_resource_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
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
    kinesis_stream:: {
      local block = self,
      new(resource_arn, role_arn):: (
        {}
        + block.with_resource_arn(resource_arn)
        + block.with_role_arn(role_arn)
      ),
      with_resource_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
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
    lambda:: {
      local block = self,
      new(resource_arn, role_arn):: (
        {}
        + block.with_resource_arn(resource_arn)
        + block.with_role_arn(role_arn)
      ),
      with_resource_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
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
    schema:: {
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
    with_kinesis_firehose(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_firehose: value,
      }
    ),
    with_kinesis_stream(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream: value,
      }
    ),
    with_lambda(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda: value,
      }
    ),
    with_schema(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schema: value,
      }
    ),
    with_kinesis_firehose_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_firehose+: converted,
      }
    ),
    with_kinesis_stream_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream+: converted,
      }
    ),
    with_lambda_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda+: converted,
      }
    ),
    with_schema_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schema+: converted,
      }
    ),
  },
  reference_data_sources:: {
    local block = self,
    new(table_name):: (
      {}
      + block.with_table_name(table_name)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_table_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"table_name" expected to be of type "string"';
      {
        table_name: converted,
      }
    ),
    s3:: {
      local block = self,
      new(bucket_arn, file_key, role_arn):: (
        {}
        + block.with_bucket_arn(bucket_arn)
        + block.with_file_key(file_key)
        + block.with_role_arn(role_arn)
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
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
    },
    schema:: {
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
      record_columns:: {
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
        new():: (
          {}
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
          csv:: {
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
          json:: {
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
          with_csv(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              csv: value,
            }
          ),
          with_json(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              json: value,
            }
          ),
          with_csv_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              csv+: converted,
            }
          ),
          with_json_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              json+: converted,
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
      with_record_columns(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_columns: value,
        }
      ),
      with_record_format(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_format: value,
        }
      ),
      with_record_columns_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_columns+: converted,
        }
      ),
      with_record_format_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_format+: converted,
        }
      ),
    },
    with_s3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3: value,
      }
    ),
    with_schema(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schema: value,
      }
    ),
    with_s3_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3+: converted,
      }
    ),
    with_schema_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schema+: converted,
      }
    ),
  },
  with_cloudwatch_logging_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_logging_options: value,
    }
  ),
  with_inputs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      inputs: value,
    }
  ),
  with_outputs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      outputs: value,
    }
  ),
  with_reference_data_sources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      reference_data_sources: value,
    }
  ),
  with_cloudwatch_logging_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_logging_options+: converted,
    }
  ),
  with_inputs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      inputs+: converted,
    }
  ),
  with_outputs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      outputs+: converted,
    }
  ),
  with_reference_data_sources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      reference_data_sources+: converted,
    }
  ),
}
