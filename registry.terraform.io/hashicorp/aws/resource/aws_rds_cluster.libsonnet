{
  local block = self,
  new(engine):: (
    {}
    + block.with_engine(engine)
  ),
  with_allocated_storage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"allocated_storage" expected to be of type "number"';
    {
      allocated_storage: converted,
    }
  ),
  with_allow_major_version_upgrade(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_major_version_upgrade" expected to be of type "bool"';
    {
      allow_major_version_upgrade: converted,
    }
  ),
  with_apply_immediately(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"apply_immediately" expected to be of type "bool"';
    {
      apply_immediately: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_availability_zones(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones: converted,
    }
  ),
  with_availability_zones_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones+: converted,
    }
  ),
  with_backtrack_window(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"backtrack_window" expected to be of type "number"';
    {
      backtrack_window: converted,
    }
  ),
  with_backup_retention_period(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"backup_retention_period" expected to be of type "number"';
    {
      backup_retention_period: converted,
    }
  ),
  with_ca_certificate_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_certificate_identifier" expected to be of type "string"';
    {
      ca_certificate_identifier: converted,
    }
  ),
  with_ca_certificate_valid_till(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_certificate_valid_till" expected to be of type "string"';
    {
      ca_certificate_valid_till: converted,
    }
  ),
  with_cluster_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
    }
  ),
  with_cluster_identifier_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier_prefix" expected to be of type "string"';
    {
      cluster_identifier_prefix: converted,
    }
  ),
  with_cluster_members(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cluster_members" expected to be of type "set"';
    {
      cluster_members: converted,
    }
  ),
  with_cluster_members_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cluster_members" expected to be of type "set"';
    {
      cluster_members+: converted,
    }
  ),
  with_cluster_resource_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_resource_id" expected to be of type "string"';
    {
      cluster_resource_id: converted,
    }
  ),
  with_cluster_scalability_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_scalability_type" expected to be of type "string"';
    {
      cluster_scalability_type: converted,
    }
  ),
  with_copy_tags_to_snapshot(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"copy_tags_to_snapshot" expected to be of type "bool"';
    {
      copy_tags_to_snapshot: converted,
    }
  ),
  with_database_insights_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_insights_mode" expected to be of type "string"';
    {
      database_insights_mode: converted,
    }
  ),
  with_database_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
    }
  ),
  with_db_cluster_instance_class(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_cluster_instance_class" expected to be of type "string"';
    {
      db_cluster_instance_class: converted,
    }
  ),
  with_db_cluster_parameter_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_cluster_parameter_group_name" expected to be of type "string"';
    {
      db_cluster_parameter_group_name: converted,
    }
  ),
  with_db_instance_parameter_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_instance_parameter_group_name" expected to be of type "string"';
    {
      db_instance_parameter_group_name: converted,
    }
  ),
  with_db_subnet_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_subnet_group_name" expected to be of type "string"';
    {
      db_subnet_group_name: converted,
    }
  ),
  with_db_system_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_system_id" expected to be of type "string"';
    {
      db_system_id: converted,
    }
  ),
  with_delete_automated_backups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"delete_automated_backups" expected to be of type "bool"';
    {
      delete_automated_backups: converted,
    }
  ),
  with_deletion_protection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deletion_protection" expected to be of type "bool"';
    {
      deletion_protection: converted,
    }
  ),
  with_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  with_domain_iam_role_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_iam_role_name" expected to be of type "string"';
    {
      domain_iam_role_name: converted,
    }
  ),
  with_enable_global_write_forwarding(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_global_write_forwarding" expected to be of type "bool"';
    {
      enable_global_write_forwarding: converted,
    }
  ),
  with_enable_http_endpoint(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_http_endpoint" expected to be of type "bool"';
    {
      enable_http_endpoint: converted,
    }
  ),
  with_enable_local_write_forwarding(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_local_write_forwarding" expected to be of type "bool"';
    {
      enable_local_write_forwarding: converted,
    }
  ),
  with_enabled_cloudwatch_logs_exports(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_cloudwatch_logs_exports" expected to be of type "set"';
    {
      enabled_cloudwatch_logs_exports: converted,
    }
  ),
  with_enabled_cloudwatch_logs_exports_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_cloudwatch_logs_exports" expected to be of type "set"';
    {
      enabled_cloudwatch_logs_exports+: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint" expected to be of type "string"';
    {
      endpoint: converted,
    }
  ),
  with_engine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  with_engine_lifecycle_support(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_lifecycle_support" expected to be of type "string"';
    {
      engine_lifecycle_support: converted,
    }
  ),
  with_engine_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_mode" expected to be of type "string"';
    {
      engine_mode: converted,
    }
  ),
  with_engine_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  with_engine_version_actual(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version_actual" expected to be of type "string"';
    {
      engine_version_actual: converted,
    }
  ),
  with_final_snapshot_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"final_snapshot_identifier" expected to be of type "string"';
    {
      final_snapshot_identifier: converted,
    }
  ),
  with_global_cluster_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"global_cluster_identifier" expected to be of type "string"';
    {
      global_cluster_identifier: converted,
    }
  ),
  with_hosted_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"hosted_zone_id" expected to be of type "string"';
    {
      hosted_zone_id: converted,
    }
  ),
  with_iam_database_authentication_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"iam_database_authentication_enabled" expected to be of type "bool"';
    {
      iam_database_authentication_enabled: converted,
    }
  ),
  with_iam_roles(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"iam_roles" expected to be of type "set"';
    {
      iam_roles: converted,
    }
  ),
  with_iam_roles_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"iam_roles" expected to be of type "set"';
    {
      iam_roles+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_iops(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"iops" expected to be of type "number"';
    {
      iops: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_manage_master_user_password(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"manage_master_user_password" expected to be of type "bool"';
    {
      manage_master_user_password: converted,
    }
  ),
  with_master_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_password" expected to be of type "string"';
    {
      master_password: converted,
    }
  ),
  with_master_password_wo(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_password_wo" expected to be of type "string"';
    {
      master_password_wo: converted,
    }
  ),
  with_master_password_wo_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"master_password_wo_version" expected to be of type "number"';
    {
      master_password_wo_version: converted,
    }
  ),
  with_master_user_secret(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"master_user_secret" expected to be of type "list"';
    {
      master_user_secret: converted,
    }
  ),
  with_master_user_secret_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"master_user_secret" expected to be of type "list"';
    {
      master_user_secret+: converted,
    }
  ),
  with_master_user_secret_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_user_secret_kms_key_id" expected to be of type "string"';
    {
      master_user_secret_kms_key_id: converted,
    }
  ),
  with_master_username(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_username" expected to be of type "string"';
    {
      master_username: converted,
    }
  ),
  with_monitoring_interval(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"monitoring_interval" expected to be of type "number"';
    {
      monitoring_interval: converted,
    }
  ),
  with_monitoring_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"monitoring_role_arn" expected to be of type "string"';
    {
      monitoring_role_arn: converted,
    }
  ),
  with_network_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_type" expected to be of type "string"';
    {
      network_type: converted,
    }
  ),
  with_performance_insights_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"performance_insights_enabled" expected to be of type "bool"';
    {
      performance_insights_enabled: converted,
    }
  ),
  with_performance_insights_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"performance_insights_kms_key_id" expected to be of type "string"';
    {
      performance_insights_kms_key_id: converted,
    }
  ),
  with_performance_insights_retention_period(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"performance_insights_retention_period" expected to be of type "number"';
    {
      performance_insights_retention_period: converted,
    }
  ),
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  with_preferred_backup_window(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_backup_window" expected to be of type "string"';
    {
      preferred_backup_window: converted,
    }
  ),
  with_preferred_maintenance_window(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_maintenance_window" expected to be of type "string"';
    {
      preferred_maintenance_window: converted,
    }
  ),
  with_reader_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"reader_endpoint" expected to be of type "string"';
    {
      reader_endpoint: converted,
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
  with_replication_source_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_source_identifier" expected to be of type "string"';
    {
      replication_source_identifier: converted,
    }
  ),
  with_skip_final_snapshot(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_final_snapshot" expected to be of type "bool"';
    {
      skip_final_snapshot: converted,
    }
  ),
  with_snapshot_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_identifier" expected to be of type "string"';
    {
      snapshot_identifier: converted,
    }
  ),
  with_source_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_region" expected to be of type "string"';
    {
      source_region: converted,
    }
  ),
  with_storage_encrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"storage_encrypted" expected to be of type "bool"';
    {
      storage_encrypted: converted,
    }
  ),
  with_storage_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_type" expected to be of type "string"';
    {
      storage_type: converted,
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
  with_vpc_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids: converted,
    }
  ),
  with_vpc_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids+: converted,
    }
  ),
  restore_to_point_in_time:: {
    local block = self,
    new():: (
      {}
    ),
    with_restore_to_time(value):: (
      local converted = value;
      assert std.isString(converted) : '"restore_to_time" expected to be of type "string"';
      {
        restore_to_time: converted,
      }
    ),
    with_restore_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"restore_type" expected to be of type "string"';
      {
        restore_type: converted,
      }
    ),
    with_source_cluster_identifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_cluster_identifier" expected to be of type "string"';
      {
        source_cluster_identifier: converted,
      }
    ),
    with_source_cluster_resource_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_cluster_resource_id" expected to be of type "string"';
      {
        source_cluster_resource_id: converted,
      }
    ),
    with_use_latest_restorable_time(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_latest_restorable_time" expected to be of type "bool"';
      {
        use_latest_restorable_time: converted,
      }
    ),
  },
  s3_import:: {
    local block = self,
    new(bucket_name, ingestion_role, source_engine, source_engine_version):: (
      {}
      + block.with_bucket_name(bucket_name)
      + block.with_ingestion_role(ingestion_role)
      + block.with_source_engine(source_engine)
      + block.with_source_engine_version(source_engine_version)
    ),
    with_bucket_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
      {
        bucket_name: converted,
      }
    ),
    with_bucket_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
      {
        bucket_prefix: converted,
      }
    ),
    with_ingestion_role(value):: (
      local converted = value;
      assert std.isString(converted) : '"ingestion_role" expected to be of type "string"';
      {
        ingestion_role: converted,
      }
    ),
    with_source_engine(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_engine" expected to be of type "string"';
      {
        source_engine: converted,
      }
    ),
    with_source_engine_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_engine_version" expected to be of type "string"';
      {
        source_engine_version: converted,
      }
    ),
  },
  scaling_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_auto_pause(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"auto_pause" expected to be of type "bool"';
      {
        auto_pause: converted,
      }
    ),
    with_max_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_capacity" expected to be of type "number"';
      {
        max_capacity: converted,
      }
    ),
    with_min_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_capacity" expected to be of type "number"';
      {
        min_capacity: converted,
      }
    ),
    with_seconds_before_timeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"seconds_before_timeout" expected to be of type "number"';
      {
        seconds_before_timeout: converted,
      }
    ),
    with_seconds_until_auto_pause(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"seconds_until_auto_pause" expected to be of type "number"';
      {
        seconds_until_auto_pause: converted,
      }
    ),
    with_timeout_action(value):: (
      local converted = value;
      assert std.isString(converted) : '"timeout_action" expected to be of type "string"';
      {
        timeout_action: converted,
      }
    ),
  },
  serverlessv2_scaling_configuration:: {
    local block = self,
    new(max_capacity, min_capacity):: (
      {}
      + block.with_max_capacity(max_capacity)
      + block.with_min_capacity(min_capacity)
    ),
    with_max_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_capacity" expected to be of type "number"';
      {
        max_capacity: converted,
      }
    ),
    with_min_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_capacity" expected to be of type "number"';
      {
        min_capacity: converted,
      }
    ),
    with_seconds_until_auto_pause(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"seconds_until_auto_pause" expected to be of type "number"';
      {
        seconds_until_auto_pause: converted,
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
  with_restore_to_point_in_time(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      restore_to_point_in_time: value,
    }
  ),
  with_s3_import(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_import: value,
    }
  ),
  with_scaling_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_configuration: value,
    }
  ),
  with_serverlessv2_scaling_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      serverlessv2_scaling_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_restore_to_point_in_time_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      restore_to_point_in_time+: converted,
    }
  ),
  with_s3_import_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_import+: converted,
    }
  ),
  with_scaling_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_configuration+: converted,
    }
  ),
  with_serverlessv2_scaling_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      serverlessv2_scaling_configuration+: converted,
    }
  ),
}
