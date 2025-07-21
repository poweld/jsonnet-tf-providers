{
  local block = self,
  new(blueprint_id, bundle_id, master_database_name, master_password, master_username, relational_database_name):: (
    {}
    + block.with_blueprint_id(blueprint_id)
    + block.with_bundle_id(bundle_id)
    + block.with_master_database_name(master_database_name)
    + block.with_master_password(master_password)
    + block.with_master_username(master_username)
    + block.with_relational_database_name(relational_database_name)
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
  with_availability_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  with_backup_retention_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"backup_retention_enabled" expected to be of type "bool"';
    {
      backup_retention_enabled: converted,
    }
  ),
  with_blueprint_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"blueprint_id" expected to be of type "string"';
    {
      blueprint_id: converted,
    }
  ),
  with_bundle_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"bundle_id" expected to be of type "string"';
    {
      bundle_id: converted,
    }
  ),
  with_ca_certificate_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_certificate_identifier" expected to be of type "string"';
    {
      ca_certificate_identifier: converted,
    }
  ),
  with_cpu_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"cpu_count" expected to be of type "number"';
    {
      cpu_count: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_disk_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"disk_size" expected to be of type "number"';
    {
      disk_size: converted,
    }
  ),
  with_engine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  with_engine_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  with_final_snapshot_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"final_snapshot_name" expected to be of type "string"';
    {
      final_snapshot_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_master_database_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_database_name" expected to be of type "string"';
    {
      master_database_name: converted,
    }
  ),
  with_master_endpoint_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_endpoint_address" expected to be of type "string"';
    {
      master_endpoint_address: converted,
    }
  ),
  with_master_endpoint_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"master_endpoint_port" expected to be of type "number"';
    {
      master_endpoint_port: converted,
    }
  ),
  with_master_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_password" expected to be of type "string"';
    {
      master_password: converted,
    }
  ),
  with_master_username(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_username" expected to be of type "string"';
    {
      master_username: converted,
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
  with_publicly_accessible(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publicly_accessible" expected to be of type "bool"';
    {
      publicly_accessible: converted,
    }
  ),
  with_ram_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ram_size" expected to be of type "number"';
    {
      ram_size: converted,
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
  with_relational_database_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"relational_database_name" expected to be of type "string"';
    {
      relational_database_name: converted,
    }
  ),
  with_secondary_availability_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"secondary_availability_zone" expected to be of type "string"';
    {
      secondary_availability_zone: converted,
    }
  ),
  with_skip_final_snapshot(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_final_snapshot" expected to be of type "bool"';
    {
      skip_final_snapshot: converted,
    }
  ),
  with_support_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"support_code" expected to be of type "string"';
    {
      support_code: converted,
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
}
