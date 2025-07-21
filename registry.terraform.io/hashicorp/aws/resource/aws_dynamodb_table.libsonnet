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
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_restore_date_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"restore_date_time" expected to be of type "string"';
    {
      restore_date_time: converted,
    }
  ),
  with_restore_source_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"restore_source_name" expected to be of type "string"';
    {
      restore_source_name: converted,
    }
  ),
  with_restore_source_table_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"restore_source_table_arn" expected to be of type "string"';
    {
      restore_source_table_arn: converted,
    }
  ),
  with_restore_to_latest_time(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"restore_to_latest_time" expected to be of type "bool"';
    {
      restore_to_latest_time: converted,
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
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  with_write_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"write_capacity" expected to be of type "number"';
    {
      write_capacity: converted,
    }
  ),
  attribute:: {
    local block = self,
    new(name, type):: (
      {}
      + block.with_name(name)
      + block.with_type(type)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  global_secondary_index:: {
    local block = self,
    new(hash_key, name, projection_type):: (
      {}
      + block.with_hash_key(hash_key)
      + block.with_name(name)
      + block.with_projection_type(projection_type)
    ),
    with_hash_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"hash_key" expected to be of type "string"';
      {
        hash_key: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_non_key_attributes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"non_key_attributes" expected to be of type "set"';
      {
        non_key_attributes: converted,
      }
    ),
    with_non_key_attributes_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"non_key_attributes" expected to be of type "set"';
      {
        non_key_attributes+: converted,
      }
    ),
    with_projection_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"projection_type" expected to be of type "string"';
      {
        projection_type: converted,
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
    with_write_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"write_capacity" expected to be of type "number"';
      {
        write_capacity: converted,
      }
    ),
    on_demand_throughput:: {
      local block = self,
      new():: (
        {}
      ),
      with_max_read_request_units(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_read_request_units" expected to be of type "number"';
        {
          max_read_request_units: converted,
        }
      ),
      with_max_write_request_units(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_write_request_units" expected to be of type "number"';
        {
          max_write_request_units: converted,
        }
      ),
    },
    with_on_demand_throughput(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_demand_throughput: value,
      }
    ),
    with_on_demand_throughput_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_demand_throughput+: converted,
      }
    ),
  },
  import_table:: {
    local block = self,
    new(input_format):: (
      {}
      + block.with_input_format(input_format)
    ),
    with_input_compression_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_compression_type" expected to be of type "string"';
      {
        input_compression_type: converted,
      }
    ),
    with_input_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_format" expected to be of type "string"';
      {
        input_format: converted,
      }
    ),
    input_format_options:: {
      local block = self,
      new():: (
        {}
      ),
      csv:: {
        local block = self,
        new():: (
          {}
        ),
        with_delimiter(value):: (
          local converted = value;
          assert std.isString(converted) : '"delimiter" expected to be of type "string"';
          {
            delimiter: converted,
          }
        ),
        with_header_list(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"header_list" expected to be of type "set"';
          {
            header_list: converted,
          }
        ),
        with_header_list_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"header_list" expected to be of type "set"';
          {
            header_list+: converted,
          }
        ),
      },
      with_csv(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          csv: value,
        }
      ),
      with_csv_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          csv+: converted,
        }
      ),
    },
    s3_bucket_source:: {
      local block = self,
      new(bucket):: (
        {}
        + block.with_bucket(bucket)
      ),
      with_bucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket" expected to be of type "string"';
        {
          bucket: converted,
        }
      ),
      with_bucket_owner(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_owner" expected to be of type "string"';
        {
          bucket_owner: converted,
        }
      ),
      with_key_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"key_prefix" expected to be of type "string"';
        {
          key_prefix: converted,
        }
      ),
    },
    with_input_format_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        input_format_options: value,
      }
    ),
    with_s3_bucket_source(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_bucket_source: value,
      }
    ),
    with_input_format_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        input_format_options+: converted,
      }
    ),
    with_s3_bucket_source_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_bucket_source+: converted,
      }
    ),
  },
  local_secondary_index:: {
    local block = self,
    new(name, projection_type, range_key):: (
      {}
      + block.with_name(name)
      + block.with_projection_type(projection_type)
      + block.with_range_key(range_key)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_non_key_attributes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"non_key_attributes" expected to be of type "list"';
      {
        non_key_attributes: converted,
      }
    ),
    with_non_key_attributes_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"non_key_attributes" expected to be of type "list"';
      {
        non_key_attributes+: converted,
      }
    ),
    with_projection_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"projection_type" expected to be of type "string"';
      {
        projection_type: converted,
      }
    ),
    with_range_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"range_key" expected to be of type "string"';
      {
        range_key: converted,
      }
    ),
  },
  on_demand_throughput:: {
    local block = self,
    new():: (
      {}
    ),
    with_max_read_request_units(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_read_request_units" expected to be of type "number"';
      {
        max_read_request_units: converted,
      }
    ),
    with_max_write_request_units(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_write_request_units" expected to be of type "number"';
      {
        max_write_request_units: converted,
      }
    ),
  },
  point_in_time_recovery:: {
    local block = self,
    new(enabled):: (
      {}
      + block.with_enabled(enabled)
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_recovery_period_in_days(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"recovery_period_in_days" expected to be of type "number"';
      {
        recovery_period_in_days: converted,
      }
    ),
  },
  replica:: {
    local block = self,
    new(region_name):: (
      {}
      + block.with_region_name(region_name)
    ),
    with_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"arn" expected to be of type "string"';
      {
        arn: converted,
      }
    ),
    with_consistency_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"consistency_mode" expected to be of type "string"';
      {
        consistency_mode: converted,
      }
    ),
    with_kms_key_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
      }
    ),
    with_point_in_time_recovery(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"point_in_time_recovery" expected to be of type "bool"';
      {
        point_in_time_recovery: converted,
      }
    ),
    with_propagate_tags(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"propagate_tags" expected to be of type "bool"';
      {
        propagate_tags: converted,
      }
    ),
    with_region_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"region_name" expected to be of type "string"';
      {
        region_name: converted,
      }
    ),
    with_stream_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"stream_arn" expected to be of type "string"';
      {
        stream_arn: converted,
      }
    ),
    with_stream_label(value):: (
      local converted = value;
      assert std.isString(converted) : '"stream_label" expected to be of type "string"';
      {
        stream_label: converted,
      }
    ),
  },
  server_side_encryption:: {
    local block = self,
    new(enabled):: (
      {}
      + block.with_enabled(enabled)
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
  ttl:: {
    local block = self,
    new():: (
      {}
    ),
    with_attribute_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"attribute_name" expected to be of type "string"';
      {
        attribute_name: converted,
      }
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
  },
  with_attribute(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attribute: value,
    }
  ),
  with_global_secondary_index(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      global_secondary_index: value,
    }
  ),
  with_import_table(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      import_table: value,
    }
  ),
  with_local_secondary_index(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      local_secondary_index: value,
    }
  ),
  with_on_demand_throughput(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_demand_throughput: value,
    }
  ),
  with_point_in_time_recovery(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      point_in_time_recovery: value,
    }
  ),
  with_replica(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replica: value,
    }
  ),
  with_server_side_encryption(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_ttl(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ttl: value,
    }
  ),
  with_attribute_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attribute+: converted,
    }
  ),
  with_global_secondary_index_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      global_secondary_index+: converted,
    }
  ),
  with_import_table_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      import_table+: converted,
    }
  ),
  with_local_secondary_index_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      local_secondary_index+: converted,
    }
  ),
  with_on_demand_throughput_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_demand_throughput+: converted,
    }
  ),
  with_point_in_time_recovery_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      point_in_time_recovery+: converted,
    }
  ),
  with_replica_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replica+: converted,
    }
  ),
  with_server_side_encryption_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption+: converted,
    }
  ),
  with_ttl_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ttl+: converted,
    }
  ),
}
