{
  local block = self,
  new(keyspace_name, table_name):: (
    {}
    + block.with_keyspace_name(keyspace_name)
    + block.with_table_name(table_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_default_time_to_live(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_time_to_live" expected to be of type "number"';
    {
      default_time_to_live: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_keyspace_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"keyspace_name" expected to be of type "string"';
    {
      keyspace_name: converted,
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
  with_table_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_name" expected to be of type "string"';
    {
      table_name: converted,
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
  capacity_specification:: {
    local block = self,
    new():: (
      {}
    ),
    with_read_capacity_units(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"read_capacity_units" expected to be of type "number"';
      {
        read_capacity_units: converted,
      }
    ),
    with_throughput_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"throughput_mode" expected to be of type "string"';
      {
        throughput_mode: converted,
      }
    ),
    with_write_capacity_units(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"write_capacity_units" expected to be of type "number"';
      {
        write_capacity_units: converted,
      }
    ),
  },
  client_side_timestamps:: {
    local block = self,
    new(status):: (
      {}
      + block.with_status(status)
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
  },
  comment:: {
    local block = self,
    new():: (
      {}
    ),
    with_message(value):: (
      local converted = value;
      assert std.isString(converted) : '"message" expected to be of type "string"';
      {
        message: converted,
      }
    ),
  },
  encryption_specification:: {
    local block = self,
    new():: (
      {}
    ),
    with_kms_key_identifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_identifier" expected to be of type "string"';
      {
        kms_key_identifier: converted,
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
  point_in_time_recovery:: {
    local block = self,
    new():: (
      {}
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
  },
  schema_definition:: {
    local block = self,
    new():: (
      {}
    ),
    clustering_key:: {
      local block = self,
      new(name, order_by):: (
        {}
        + block.with_name(name)
        + block.with_order_by(order_by)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_order_by(value):: (
        local converted = value;
        assert std.isString(converted) : '"order_by" expected to be of type "string"';
        {
          order_by: converted,
        }
      ),
    },
    column:: {
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
    partition_key:: {
      local block = self,
      new(name):: (
        {}
        + block.with_name(name)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    static_column:: {
      local block = self,
      new(name):: (
        {}
        + block.with_name(name)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    with_clustering_key(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        clustering_key: value,
      }
    ),
    with_column(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        column: value,
      }
    ),
    with_partition_key(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        partition_key: value,
      }
    ),
    with_static_column(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        static_column: value,
      }
    ),
    with_clustering_key_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        clustering_key+: converted,
      }
    ),
    with_column_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        column+: converted,
      }
    ),
    with_partition_key_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        partition_key+: converted,
      }
    ),
    with_static_column_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        static_column+: converted,
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
    new(status):: (
      {}
      + block.with_status(status)
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
  },
  with_capacity_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_specification: value,
    }
  ),
  with_client_side_timestamps(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_side_timestamps: value,
    }
  ),
  with_comment(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      comment: value,
    }
  ),
  with_encryption_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_specification: value,
    }
  ),
  with_point_in_time_recovery(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      point_in_time_recovery: value,
    }
  ),
  with_schema_definition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schema_definition: value,
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
  with_capacity_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_specification+: converted,
    }
  ),
  with_client_side_timestamps_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_side_timestamps+: converted,
    }
  ),
  with_comment_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      comment+: converted,
    }
  ),
  with_encryption_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_specification+: converted,
    }
  ),
  with_point_in_time_recovery_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      point_in_time_recovery+: converted,
    }
  ),
  with_schema_definition_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schema_definition+: converted,
    }
  ),
  with_ttl_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ttl+: converted,
    }
  ),
}
