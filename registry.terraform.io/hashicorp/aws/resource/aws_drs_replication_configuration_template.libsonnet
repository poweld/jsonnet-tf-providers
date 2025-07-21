{
  local block = self,
  new(associate_default_security_group, bandwidth_throttling, create_public_ip, data_plane_routing, default_large_staging_disk_type, ebs_encryption, replication_server_instance_type, replication_servers_security_groups_ids, staging_area_subnet_id, staging_area_tags, use_dedicated_replication_server):: (
    {}
    + block.with_associate_default_security_group(associate_default_security_group)
    + block.with_bandwidth_throttling(bandwidth_throttling)
    + block.with_create_public_ip(create_public_ip)
    + block.with_data_plane_routing(data_plane_routing)
    + block.with_default_large_staging_disk_type(default_large_staging_disk_type)
    + block.with_ebs_encryption(ebs_encryption)
    + block.with_replication_server_instance_type(replication_server_instance_type)
    + block.with_replication_servers_security_groups_ids(replication_servers_security_groups_ids)
    + block.with_staging_area_subnet_id(staging_area_subnet_id)
    + block.with_staging_area_tags(staging_area_tags)
    + block.with_use_dedicated_replication_server(use_dedicated_replication_server)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_associate_default_security_group(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"associate_default_security_group" expected to be of type "bool"';
    {
      associate_default_security_group: converted,
    }
  ),
  with_auto_replicate_new_disks(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_replicate_new_disks" expected to be of type "bool"';
    {
      auto_replicate_new_disks: converted,
    }
  ),
  with_bandwidth_throttling(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"bandwidth_throttling" expected to be of type "number"';
    {
      bandwidth_throttling: converted,
    }
  ),
  with_create_public_ip(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"create_public_ip" expected to be of type "bool"';
    {
      create_public_ip: converted,
    }
  ),
  with_data_plane_routing(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_plane_routing" expected to be of type "string"';
    {
      data_plane_routing: converted,
    }
  ),
  with_default_large_staging_disk_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_large_staging_disk_type" expected to be of type "string"';
    {
      default_large_staging_disk_type: converted,
    }
  ),
  with_ebs_encryption(value):: (
    local converted = value;
    assert std.isString(converted) : '"ebs_encryption" expected to be of type "string"';
    {
      ebs_encryption: converted,
    }
  ),
  with_ebs_encryption_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"ebs_encryption_key_arn" expected to be of type "string"';
    {
      ebs_encryption_key_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_replication_server_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_server_instance_type" expected to be of type "string"';
    {
      replication_server_instance_type: converted,
    }
  ),
  with_replication_servers_security_groups_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"replication_servers_security_groups_ids" expected to be of type "list"';
    {
      replication_servers_security_groups_ids: converted,
    }
  ),
  with_replication_servers_security_groups_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"replication_servers_security_groups_ids" expected to be of type "list"';
    {
      replication_servers_security_groups_ids+: converted,
    }
  ),
  with_staging_area_subnet_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"staging_area_subnet_id" expected to be of type "string"';
    {
      staging_area_subnet_id: converted,
    }
  ),
  with_staging_area_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"staging_area_tags" expected to be of type "map"';
    {
      staging_area_tags: converted,
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
  with_use_dedicated_replication_server(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_dedicated_replication_server" expected to be of type "bool"';
    {
      use_dedicated_replication_server: converted,
    }
  ),
  pit_policy:: {
    local block = self,
    new(interval, retention_duration, units):: (
      {}
      + block.with_interval(interval)
      + block.with_retention_duration(retention_duration)
      + block.with_units(units)
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_interval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"interval" expected to be of type "number"';
      {
        interval: converted,
      }
    ),
    with_retention_duration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retention_duration" expected to be of type "number"';
      {
        retention_duration: converted,
      }
    ),
    with_rule_id(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"rule_id" expected to be of type "number"';
      {
        rule_id: converted,
      }
    ),
    with_units(value):: (
      local converted = value;
      assert std.isString(converted) : '"units" expected to be of type "string"';
      {
        units: converted,
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
  with_pit_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pit_policy: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_pit_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pit_policy+: converted,
    }
  ),
}
