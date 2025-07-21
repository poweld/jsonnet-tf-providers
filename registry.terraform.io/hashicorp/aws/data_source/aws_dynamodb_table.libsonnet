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
  with_attribute(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"attribute" expected to be of type "set"';
    {
      attribute: converted,
    }
  ),
  with_attribute_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"attribute" expected to be of type "set"';
    {
      attribute+: converted,
    }
  ),
  with_billing_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"billing_mode" expected to be of type "string"';
    {
      billing_mode: converted,
    }
  ),
  with_deletion_protection_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deletion_protection_enabled" expected to be of type "bool"';
    {
      deletion_protection_enabled: converted,
    }
  ),
  with_global_secondary_index(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"global_secondary_index" expected to be of type "set"';
    {
      global_secondary_index: converted,
    }
  ),
  with_global_secondary_index_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"global_secondary_index" expected to be of type "set"';
    {
      global_secondary_index+: converted,
    }
  ),
  with_hash_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"hash_key" expected to be of type "string"';
    {
      hash_key: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_local_secondary_index(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"local_secondary_index" expected to be of type "set"';
    {
      local_secondary_index: converted,
    }
  ),
  with_local_secondary_index_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"local_secondary_index" expected to be of type "set"';
    {
      local_secondary_index+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_on_demand_throughput(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"on_demand_throughput" expected to be of type "list"';
    {
      on_demand_throughput: converted,
    }
  ),
  with_on_demand_throughput_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"on_demand_throughput" expected to be of type "list"';
    {
      on_demand_throughput+: converted,
    }
  ),
  with_point_in_time_recovery(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"point_in_time_recovery" expected to be of type "list"';
    {
      point_in_time_recovery: converted,
    }
  ),
  with_point_in_time_recovery_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"point_in_time_recovery" expected to be of type "list"';
    {
      point_in_time_recovery+: converted,
    }
  ),
  with_range_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"range_key" expected to be of type "string"';
    {
      range_key: converted,
    }
  ),
  with_read_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"read_capacity" expected to be of type "number"';
    {
      read_capacity: converted,
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
  with_replica(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"replica" expected to be of type "set"';
    {
      replica: converted,
    }
  ),
  with_replica_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"replica" expected to be of type "set"';
    {
      replica+: converted,
    }
  ),
  with_stream_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"stream_arn" expected to be of type "string"';
    {
      stream_arn: converted,
    }
  ),
  with_stream_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"stream_enabled" expected to be of type "bool"';
    {
      stream_enabled: converted,
    }
  ),
  with_stream_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"stream_label" expected to be of type "string"';
    {
      stream_label: converted,
    }
  ),
  with_stream_view_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"stream_view_type" expected to be of type "string"';
    {
      stream_view_type: converted,
    }
  ),
  with_table_class(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_class" expected to be of type "string"';
    {
      table_class: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_ttl(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ttl" expected to be of type "set"';
    {
      ttl: converted,
    }
  ),
  with_ttl_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ttl" expected to be of type "set"';
    {
      ttl+: converted,
    }
  ),
  with_write_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"write_capacity" expected to be of type "number"';
    {
      write_capacity: converted,
    }
  ),
  server_side_encryption:: {
    local block = self,
    new():: (
      {}
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_kms_key_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
      }
    ),
  },
  with_server_side_encryption(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption: value,
    }
  ),
  with_server_side_encryption_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption+: converted,
    }
  ),
}
