{
  local block = self,
  new(replication_config_identifier, replication_type, source_endpoint_arn, table_mappings, target_endpoint_arn):: (
    {}
    + block.with_replication_config_identifier(replication_config_identifier)
    + block.with_replication_type(replication_type)
    + block.with_source_endpoint_arn(source_endpoint_arn)
    + block.with_table_mappings(table_mappings)
    + block.with_target_endpoint_arn(target_endpoint_arn)
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_replication_config_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_config_identifier" expected to be of type "string"';
    {
      replication_config_identifier: converted,
    }
  ),
  with_replication_settings(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_settings" expected to be of type "string"';
    {
      replication_settings: converted,
    }
  ),
  with_replication_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_type" expected to be of type "string"';
    {
      replication_type: converted,
    }
  ),
  with_resource_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_identifier" expected to be of type "string"';
    {
      resource_identifier: converted,
    }
  ),
  with_source_endpoint_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_endpoint_arn" expected to be of type "string"';
    {
      source_endpoint_arn: converted,
    }
  ),
  with_start_replication(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"start_replication" expected to be of type "bool"';
    {
      start_replication: converted,
    }
  ),
  with_supplemental_settings(value):: (
    local converted = value;
    assert std.isString(converted) : '"supplemental_settings" expected to be of type "string"';
    {
      supplemental_settings: converted,
    }
  ),
  with_table_mappings(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_mappings" expected to be of type "string"';
    {
      table_mappings: converted,
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
  with_target_endpoint_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_endpoint_arn" expected to be of type "string"';
    {
      target_endpoint_arn: converted,
    }
  ),
  compute_config:: {
    local block = self,
    new(replication_subnet_group_id):: (
      {}
      + block.with_replication_subnet_group_id(replication_subnet_group_id)
    ),
    with_availability_zone(value):: (
      local converted = value;
      assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
      {
        availability_zone: converted,
      }
    ),
    with_dns_name_servers(value):: (
      local converted = value;
      assert std.isString(converted) : '"dns_name_servers" expected to be of type "string"';
      {
        dns_name_servers: converted,
      }
    ),
    with_kms_key_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    with_max_capacity_units(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_capacity_units" expected to be of type "number"';
      {
        max_capacity_units: converted,
      }
    ),
    with_min_capacity_units(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_capacity_units" expected to be of type "number"';
      {
        min_capacity_units: converted,
      }
    ),
    with_multi_az(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"multi_az" expected to be of type "bool"';
      {
        multi_az: converted,
      }
    ),
    with_preferred_maintenance_window(value):: (
      local converted = value;
      assert std.isString(converted) : '"preferred_maintenance_window" expected to be of type "string"';
      {
        preferred_maintenance_window: converted,
      }
    ),
    with_replication_subnet_group_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"replication_subnet_group_id" expected to be of type "string"';
      {
        replication_subnet_group_id: converted,
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
  with_compute_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_config: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_compute_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_config+: converted,
    }
  ),
}
