{
  local block = self,
  new(dag_s3_path, execution_role_arn, name, source_bucket_arn):: (
    {}
    + block.with_dag_s3_path(dag_s3_path)
    + block.with_execution_role_arn(execution_role_arn)
    + block.with_name(name)
    + block.with_source_bucket_arn(source_bucket_arn)
  ),
  with_airflow_configuration_options(value):: (
    local converted = value;
    assert std.isObject(converted) : '"airflow_configuration_options" expected to be of type "map"';
    {
      airflow_configuration_options: converted,
    }
  ),
  with_airflow_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"airflow_version" expected to be of type "string"';
    {
      airflow_version: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_dag_s3_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"dag_s3_path" expected to be of type "string"';
    {
      dag_s3_path: converted,
    }
  ),
  with_database_vpc_endpoint_service(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_vpc_endpoint_service" expected to be of type "string"';
    {
      database_vpc_endpoint_service: converted,
    }
  ),
  with_endpoint_management(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_management" expected to be of type "string"';
    {
      endpoint_management: converted,
    }
  ),
  with_environment_class(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_class" expected to be of type "string"';
    {
      environment_class: converted,
    }
  ),
  with_execution_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
    {
      execution_role_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key" expected to be of type "string"';
    {
      kms_key: converted,
    }
  ),
  with_last_updated(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"last_updated" expected to be of type "list"';
    {
      last_updated: converted,
    }
  ),
  with_last_updated_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"last_updated" expected to be of type "list"';
    {
      last_updated+: converted,
    }
  ),
  with_max_webservers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_webservers" expected to be of type "number"';
    {
      max_webservers: converted,
    }
  ),
  with_max_workers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_workers" expected to be of type "number"';
    {
      max_workers: converted,
    }
  ),
  with_min_webservers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_webservers" expected to be of type "number"';
    {
      min_webservers: converted,
    }
  ),
  with_min_workers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_workers" expected to be of type "number"';
    {
      min_workers: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_plugins_s3_object_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"plugins_s3_object_version" expected to be of type "string"';
    {
      plugins_s3_object_version: converted,
    }
  ),
  with_plugins_s3_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"plugins_s3_path" expected to be of type "string"';
    {
      plugins_s3_path: converted,
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
  with_requirements_s3_object_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"requirements_s3_object_version" expected to be of type "string"';
    {
      requirements_s3_object_version: converted,
    }
  ),
  with_requirements_s3_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"requirements_s3_path" expected to be of type "string"';
    {
      requirements_s3_path: converted,
    }
  ),
  with_schedulers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"schedulers" expected to be of type "number"';
    {
      schedulers: converted,
    }
  ),
  with_service_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_role_arn" expected to be of type "string"';
    {
      service_role_arn: converted,
    }
  ),
  with_source_bucket_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_bucket_arn" expected to be of type "string"';
    {
      source_bucket_arn: converted,
    }
  ),
  with_startup_script_s3_object_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"startup_script_s3_object_version" expected to be of type "string"';
    {
      startup_script_s3_object_version: converted,
    }
  ),
  with_startup_script_s3_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"startup_script_s3_path" expected to be of type "string"';
    {
      startup_script_s3_path: converted,
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
  with_webserver_access_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"webserver_access_mode" expected to be of type "string"';
    {
      webserver_access_mode: converted,
    }
  ),
  with_webserver_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"webserver_url" expected to be of type "string"';
    {
      webserver_url: converted,
    }
  ),
  with_webserver_vpc_endpoint_service(value):: (
    local converted = value;
    assert std.isString(converted) : '"webserver_vpc_endpoint_service" expected to be of type "string"';
    {
      webserver_vpc_endpoint_service: converted,
    }
  ),
  with_weekly_maintenance_window_start(value):: (
    local converted = value;
    assert std.isString(converted) : '"weekly_maintenance_window_start" expected to be of type "string"';
    {
      weekly_maintenance_window_start: converted,
    }
  ),
  logging_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    dag_processing_logs:: {
      local block = self,
      new():: (
        {}
      ),
      with_cloud_watch_log_group_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"cloud_watch_log_group_arn" expected to be of type "string"';
        {
          cloud_watch_log_group_arn: converted,
        }
      ),
      with_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      with_log_level(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_level" expected to be of type "string"';
        {
          log_level: converted,
        }
      ),
    },
    scheduler_logs:: {
      local block = self,
      new():: (
        {}
      ),
      with_cloud_watch_log_group_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"cloud_watch_log_group_arn" expected to be of type "string"';
        {
          cloud_watch_log_group_arn: converted,
        }
      ),
      with_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      with_log_level(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_level" expected to be of type "string"';
        {
          log_level: converted,
        }
      ),
    },
    task_logs:: {
      local block = self,
      new():: (
        {}
      ),
      with_cloud_watch_log_group_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"cloud_watch_log_group_arn" expected to be of type "string"';
        {
          cloud_watch_log_group_arn: converted,
        }
      ),
      with_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      with_log_level(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_level" expected to be of type "string"';
        {
          log_level: converted,
        }
      ),
    },
    webserver_logs:: {
      local block = self,
      new():: (
        {}
      ),
      with_cloud_watch_log_group_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"cloud_watch_log_group_arn" expected to be of type "string"';
        {
          cloud_watch_log_group_arn: converted,
        }
      ),
      with_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      with_log_level(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_level" expected to be of type "string"';
        {
          log_level: converted,
        }
      ),
    },
    worker_logs:: {
      local block = self,
      new():: (
        {}
      ),
      with_cloud_watch_log_group_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"cloud_watch_log_group_arn" expected to be of type "string"';
        {
          cloud_watch_log_group_arn: converted,
        }
      ),
      with_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      with_log_level(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_level" expected to be of type "string"';
        {
          log_level: converted,
        }
      ),
    },
    with_dag_processing_logs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dag_processing_logs: value,
      }
    ),
    with_scheduler_logs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        scheduler_logs: value,
      }
    ),
    with_task_logs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        task_logs: value,
      }
    ),
    with_webserver_logs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        webserver_logs: value,
      }
    ),
    with_worker_logs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        worker_logs: value,
      }
    ),
    with_dag_processing_logs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dag_processing_logs+: converted,
      }
    ),
    with_scheduler_logs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        scheduler_logs+: converted,
      }
    ),
    with_task_logs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        task_logs+: converted,
      }
    ),
    with_webserver_logs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        webserver_logs+: converted,
      }
    ),
    with_worker_logs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        worker_logs+: converted,
      }
    ),
  },
  network_configuration:: {
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
  with_logging_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_configuration: value,
    }
  ),
  with_network_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_logging_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_configuration+: converted,
    }
  ),
  with_network_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration+: converted,
    }
  ),
}
