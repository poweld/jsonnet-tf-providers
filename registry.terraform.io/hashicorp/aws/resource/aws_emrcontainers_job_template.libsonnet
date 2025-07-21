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
  job_template_data:: {
    local block = self,
    new(execution_role_arn, release_label):: (
      {}
      + block.with_execution_role_arn(execution_role_arn)
      + block.with_release_label(release_label)
    ),
    with_execution_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
      {
        execution_role_arn: converted,
      }
    ),
    with_job_tags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"job_tags" expected to be of type "map"';
      {
        job_tags: converted,
      }
    ),
    with_release_label(value):: (
      local converted = value;
      assert std.isString(converted) : '"release_label" expected to be of type "string"';
      {
        release_label: converted,
      }
    ),
    configuration_overrides:: {
      local block = self,
      new():: (
        {}
      ),
      application_configuration:: {
        local block = self,
        new(classification):: (
          {}
          + block.with_classification(classification)
        ),
        with_classification(value):: (
          local converted = value;
          assert std.isString(converted) : '"classification" expected to be of type "string"';
          {
            classification: converted,
          }
        ),
        with_properties(value):: (
          local converted = value;
          assert std.isObject(converted) : '"properties" expected to be of type "map"';
          {
            properties: converted,
          }
        ),
        configurations:: {
          local block = self,
          new():: (
            {}
          ),
          with_classification(value):: (
            local converted = value;
            assert std.isString(converted) : '"classification" expected to be of type "string"';
            {
              classification: converted,
            }
          ),
          with_properties(value):: (
            local converted = value;
            assert std.isObject(converted) : '"properties" expected to be of type "map"';
            {
              properties: converted,
            }
          ),
        },
        with_configurations(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            configurations: value,
          }
        ),
        with_configurations_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            configurations+: converted,
          }
        ),
      },
      monitoring_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        with_persistent_app_ui(value):: (
          local converted = value;
          assert std.isString(converted) : '"persistent_app_ui" expected to be of type "string"';
          {
            persistent_app_ui: converted,
          }
        ),
        cloud_watch_monitoring_configuration:: {
          local block = self,
          new(log_group_name):: (
            {}
            + block.with_log_group_name(log_group_name)
          ),
          with_log_group_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
            {
              log_group_name: converted,
            }
          ),
          with_log_stream_name_prefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"log_stream_name_prefix" expected to be of type "string"';
            {
              log_stream_name_prefix: converted,
            }
          ),
        },
        s3_monitoring_configuration:: {
          local block = self,
          new(log_uri):: (
            {}
            + block.with_log_uri(log_uri)
          ),
          with_log_uri(value):: (
            local converted = value;
            assert std.isString(converted) : '"log_uri" expected to be of type "string"';
            {
              log_uri: converted,
            }
          ),
        },
        with_cloud_watch_monitoring_configuration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            cloud_watch_monitoring_configuration: value,
          }
        ),
        with_s3_monitoring_configuration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_monitoring_configuration: value,
          }
        ),
        with_cloud_watch_monitoring_configuration_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            cloud_watch_monitoring_configuration+: converted,
          }
        ),
        with_s3_monitoring_configuration_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_monitoring_configuration+: converted,
          }
        ),
      },
      with_application_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          application_configuration: value,
        }
      ),
      with_monitoring_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          monitoring_configuration: value,
        }
      ),
      with_application_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          application_configuration+: converted,
        }
      ),
      with_monitoring_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          monitoring_configuration+: converted,
        }
      ),
    },
    job_driver:: {
      local block = self,
      new():: (
        {}
      ),
      spark_sql_job_driver:: {
        local block = self,
        new():: (
          {}
        ),
        with_entry_point(value):: (
          local converted = value;
          assert std.isString(converted) : '"entry_point" expected to be of type "string"';
          {
            entry_point: converted,
          }
        ),
        with_spark_sql_parameters(value):: (
          local converted = value;
          assert std.isString(converted) : '"spark_sql_parameters" expected to be of type "string"';
          {
            spark_sql_parameters: converted,
          }
        ),
      },
      spark_submit_job_driver:: {
        local block = self,
        new(entry_point):: (
          {}
          + block.with_entry_point(entry_point)
        ),
        with_entry_point(value):: (
          local converted = value;
          assert std.isString(converted) : '"entry_point" expected to be of type "string"';
          {
            entry_point: converted,
          }
        ),
        with_entry_point_arguments(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"entry_point_arguments" expected to be of type "set"';
          {
            entry_point_arguments: converted,
          }
        ),
        with_entry_point_arguments_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"entry_point_arguments" expected to be of type "set"';
          {
            entry_point_arguments+: converted,
          }
        ),
        with_spark_submit_parameters(value):: (
          local converted = value;
          assert std.isString(converted) : '"spark_submit_parameters" expected to be of type "string"';
          {
            spark_submit_parameters: converted,
          }
        ),
      },
      with_spark_sql_job_driver(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          spark_sql_job_driver: value,
        }
      ),
      with_spark_submit_job_driver(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          spark_submit_job_driver: value,
        }
      ),
      with_spark_sql_job_driver_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          spark_sql_job_driver+: converted,
        }
      ),
      with_spark_submit_job_driver_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          spark_submit_job_driver+: converted,
        }
      ),
    },
    with_configuration_overrides(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        configuration_overrides: value,
      }
    ),
    with_job_driver(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        job_driver: value,
      }
    ),
    with_configuration_overrides_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        configuration_overrides+: converted,
      }
    ),
    with_job_driver_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        job_driver+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  with_job_template_data(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      job_template_data: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_job_template_data_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      job_template_data+: converted,
    }
  ),
}
