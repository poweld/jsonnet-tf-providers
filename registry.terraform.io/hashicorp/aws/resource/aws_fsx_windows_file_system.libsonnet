{
  local block = self,
  new(subnet_ids, throughput_capacity):: (
    {}
    + block.with_subnet_ids(subnet_ids)
    + block.with_throughput_capacity(throughput_capacity)
  ),
  with_active_directory_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"active_directory_id" expected to be of type "string"';
    {
      active_directory_id: converted,
    }
  ),
  with_aliases(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aliases" expected to be of type "set"';
    {
      aliases: converted,
    }
  ),
  with_aliases_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aliases" expected to be of type "set"';
    {
      aliases+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_automatic_backup_retention_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"automatic_backup_retention_days" expected to be of type "number"';
    {
      automatic_backup_retention_days: converted,
    }
  ),
  with_backup_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"backup_id" expected to be of type "string"';
    {
      backup_id: converted,
    }
  ),
  with_copy_tags_to_backups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"copy_tags_to_backups" expected to be of type "bool"';
    {
      copy_tags_to_backups: converted,
    }
  ),
  with_daily_automatic_backup_start_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"daily_automatic_backup_start_time" expected to be of type "string"';
    {
      daily_automatic_backup_start_time: converted,
    }
  ),
  with_deployment_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_type" expected to be of type "string"';
    {
      deployment_type: converted,
    }
  ),
  with_dns_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_name" expected to be of type "string"';
    {
      dns_name: converted,
    }
  ),
  with_final_backup_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"final_backup_tags" expected to be of type "map"';
    {
      final_backup_tags: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_network_interface_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_interface_ids" expected to be of type "set"';
    {
      network_interface_ids: converted,
    }
  ),
  with_network_interface_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_interface_ids" expected to be of type "set"';
    {
      network_interface_ids+: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
    }
  ),
  with_preferred_file_server_ip(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_file_server_ip" expected to be of type "string"';
    {
      preferred_file_server_ip: converted,
    }
  ),
  with_preferred_subnet_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_subnet_id" expected to be of type "string"';
    {
      preferred_subnet_id: converted,
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
  with_remote_administration_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"remote_administration_endpoint" expected to be of type "string"';
    {
      remote_administration_endpoint: converted,
    }
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
  with_skip_final_backup(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_final_backup" expected to be of type "bool"';
    {
      skip_final_backup: converted,
    }
  ),
  with_storage_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"storage_capacity" expected to be of type "number"';
    {
      storage_capacity: converted,
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
    assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
    {
      subnet_ids: converted,
    }
  ),
  with_subnet_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
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
  with_throughput_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"throughput_capacity" expected to be of type "number"';
    {
      throughput_capacity: converted,
    }
  ),
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  with_weekly_maintenance_start_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"weekly_maintenance_start_time" expected to be of type "string"';
    {
      weekly_maintenance_start_time: converted,
    }
  ),
  audit_log_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_audit_log_destination(value):: (
      local converted = value;
      assert std.isString(converted) : '"audit_log_destination" expected to be of type "string"';
      {
        audit_log_destination: converted,
      }
    ),
    with_file_access_audit_log_level(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_access_audit_log_level" expected to be of type "string"';
      {
        file_access_audit_log_level: converted,
      }
    ),
    with_file_share_access_audit_log_level(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_share_access_audit_log_level" expected to be of type "string"';
      {
        file_share_access_audit_log_level: converted,
      }
    ),
  },
  disk_iops_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_iops(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"iops" expected to be of type "number"';
      {
        iops: converted,
      }
    ),
    with_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
  },
  self_managed_active_directory:: {
    local block = self,
    new(dns_ips, domain_name, password, username):: (
      {}
      + block.with_dns_ips(dns_ips)
      + block.with_domain_name(domain_name)
      + block.with_password(password)
      + block.with_username(username)
    ),
    with_dns_ips(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dns_ips" expected to be of type "set"';
      {
        dns_ips: converted,
      }
    ),
    with_dns_ips_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dns_ips" expected to be of type "set"';
      {
        dns_ips+: converted,
      }
    ),
    with_domain_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_name" expected to be of type "string"';
      {
        domain_name: converted,
      }
    ),
    with_file_system_administrators_group(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_system_administrators_group" expected to be of type "string"';
      {
        file_system_administrators_group: converted,
      }
    ),
    with_organizational_unit_distinguished_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"organizational_unit_distinguished_name" expected to be of type "string"';
      {
        organizational_unit_distinguished_name: converted,
      }
    ),
    with_password(value):: (
      local converted = value;
      assert std.isString(converted) : '"password" expected to be of type "string"';
      {
        password: converted,
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
  with_audit_log_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      audit_log_configuration: value,
    }
  ),
  with_disk_iops_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      disk_iops_configuration: value,
    }
  ),
  with_self_managed_active_directory(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      self_managed_active_directory: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_audit_log_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      audit_log_configuration+: converted,
    }
  ),
  with_disk_iops_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      disk_iops_configuration+: converted,
    }
  ),
  with_self_managed_active_directory_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      self_managed_active_directory+: converted,
    }
  ),
}
