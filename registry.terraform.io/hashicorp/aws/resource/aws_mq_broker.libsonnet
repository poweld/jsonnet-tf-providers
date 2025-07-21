{
  local block = self,
  new(broker_name, engine_type, engine_version, host_instance_type):: (
    {}
    + block.with_broker_name(broker_name)
    + block.with_engine_type(engine_type)
    + block.with_engine_version(engine_version)
    + block.with_host_instance_type(host_instance_type)
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
  with_authentication_strategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_strategy" expected to be of type "string"';
    {
      authentication_strategy: converted,
    }
  ),
  with_auto_minor_version_upgrade(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_minor_version_upgrade" expected to be of type "bool"';
    {
      auto_minor_version_upgrade: converted,
    }
  ),
  with_broker_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"broker_name" expected to be of type "string"';
    {
      broker_name: converted,
    }
  ),
  with_data_replication_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_replication_mode" expected to be of type "string"';
    {
      data_replication_mode: converted,
    }
  ),
  with_data_replication_primary_broker_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_replication_primary_broker_arn" expected to be of type "string"';
    {
      data_replication_primary_broker_arn: converted,
    }
  ),
  with_deployment_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_mode" expected to be of type "string"';
    {
      deployment_mode: converted,
    }
  ),
  with_engine_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_type" expected to be of type "string"';
    {
      engine_type: converted,
    }
  ),
  with_engine_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  with_host_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"host_instance_type" expected to be of type "string"';
    {
      host_instance_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instances(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"instances" expected to be of type "list"';
    {
      instances: converted,
    }
  ),
  with_instances_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"instances" expected to be of type "list"';
    {
      instances+: converted,
    }
  ),
  with_pending_data_replication_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"pending_data_replication_mode" expected to be of type "string"';
    {
      pending_data_replication_mode: converted,
    }
  ),
  with_publicly_accessible(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publicly_accessible" expected to be of type "bool"';
    {
      publicly_accessible: converted,
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
  with_security_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups: converted,
    }
  ),
  with_security_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups+: converted,
    }
  ),
  with_storage_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_type" expected to be of type "string"';
    {
      storage_type: converted,
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
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_revision(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"revision" expected to be of type "number"';
      {
        revision: converted,
      }
    ),
  },
  encryption_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_kms_key_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    with_use_aws_owned_key(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_aws_owned_key" expected to be of type "bool"';
      {
        use_aws_owned_key: converted,
      }
    ),
  },
  ldap_server_metadata:: {
    local block = self,
    new():: (
      {}
    ),
    with_hosts(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"hosts" expected to be of type "list"';
      {
        hosts: converted,
      }
    ),
    with_hosts_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"hosts" expected to be of type "list"';
      {
        hosts+: converted,
      }
    ),
    with_role_base(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_base" expected to be of type "string"';
      {
        role_base: converted,
      }
    ),
    with_role_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_name" expected to be of type "string"';
      {
        role_name: converted,
      }
    ),
    with_role_search_matching(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_search_matching" expected to be of type "string"';
      {
        role_search_matching: converted,
      }
    ),
    with_role_search_subtree(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"role_search_subtree" expected to be of type "bool"';
      {
        role_search_subtree: converted,
      }
    ),
    with_service_account_password(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_account_password" expected to be of type "string"';
      {
        service_account_password: converted,
      }
    ),
    with_service_account_username(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_account_username" expected to be of type "string"';
      {
        service_account_username: converted,
      }
    ),
    with_user_base(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_base" expected to be of type "string"';
      {
        user_base: converted,
      }
    ),
    with_user_role_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_role_name" expected to be of type "string"';
      {
        user_role_name: converted,
      }
    ),
    with_user_search_matching(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_search_matching" expected to be of type "string"';
      {
        user_search_matching: converted,
      }
    ),
    with_user_search_subtree(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"user_search_subtree" expected to be of type "bool"';
      {
        user_search_subtree: converted,
      }
    ),
  },
  logs:: {
    local block = self,
    new():: (
      {}
    ),
    with_audit(value):: (
      local converted = value;
      assert std.isString(converted) : '"audit" expected to be of type "string"';
      {
        audit: converted,
      }
    ),
    with_general(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"general" expected to be of type "bool"';
      {
        general: converted,
      }
    ),
  },
  maintenance_window_start_time:: {
    local block = self,
    new(day_of_week, time_of_day, time_zone):: (
      {}
      + block.with_day_of_week(day_of_week)
      + block.with_time_of_day(time_of_day)
      + block.with_time_zone(time_zone)
    ),
    with_day_of_week(value):: (
      local converted = value;
      assert std.isString(converted) : '"day_of_week" expected to be of type "string"';
      {
        day_of_week: converted,
      }
    ),
    with_time_of_day(value):: (
      local converted = value;
      assert std.isString(converted) : '"time_of_day" expected to be of type "string"';
      {
        time_of_day: converted,
      }
    ),
    with_time_zone(value):: (
      local converted = value;
      assert std.isString(converted) : '"time_zone" expected to be of type "string"';
      {
        time_zone: converted,
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
  user:: {
    local block = self,
    new(password, username):: (
      {}
      + block.with_password(password)
      + block.with_username(username)
    ),
    with_console_access(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"console_access" expected to be of type "bool"';
      {
        console_access: converted,
      }
    ),
    with_groups(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
      {
        groups: converted,
      }
    ),
    with_groups_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
      {
        groups+: converted,
      }
    ),
    with_password(value):: (
      local converted = value;
      assert std.isString(converted) : '"password" expected to be of type "string"';
      {
        password: converted,
      }
    ),
    with_replication_user(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"replication_user" expected to be of type "bool"';
      {
        replication_user: converted,
      }
    ),
    with_username(value):: (
      local converted = value;
      assert std.isString(converted) : '"username" expected to be of type "string"';
      {
        username: converted,
      }
    ),
  },
  with_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  with_encryption_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_options: value,
    }
  ),
  with_ldap_server_metadata(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ldap_server_metadata: value,
    }
  ),
  with_logs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logs: value,
    }
  ),
  with_maintenance_window_start_time(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance_window_start_time: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_user(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user: value,
    }
  ),
  with_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
  with_encryption_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_options+: converted,
    }
  ),
  with_ldap_server_metadata_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ldap_server_metadata+: converted,
    }
  ),
  with_logs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logs+: converted,
    }
  ),
  with_maintenance_window_start_time_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance_window_start_time+: converted,
    }
  ),
  with_user_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user+: converted,
    }
  ),
}
