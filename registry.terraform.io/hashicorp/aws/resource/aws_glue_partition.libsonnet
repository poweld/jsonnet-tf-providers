{
  local block = self,
  new(database_name, partition_values, table_name):: (
    {}
    + block.with_database_name(database_name)
    + block.with_partition_values(partition_values)
    + block.with_table_name(table_name)
  ),
  with_catalog_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
    }
  ),
  with_creation_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_time" expected to be of type "string"';
    {
      creation_time: converted,
    }
  ),
  with_database_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_accessed_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_accessed_time" expected to be of type "string"';
    {
      last_accessed_time: converted,
    }
  ),
  with_last_analyzed_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_analyzed_time" expected to be of type "string"';
    {
      last_analyzed_time: converted,
    }
  ),
  with_parameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
    }
  ),
  with_partition_values(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"partition_values" expected to be of type "list"';
    {
      partition_values: converted,
    }
  ),
  with_partition_values_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"partition_values" expected to be of type "list"';
    {
      partition_values+: converted,
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
  storage_descriptor:: {
    local block = self,
    new():: (
      {}
    ),
    with_additional_locations(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"additional_locations" expected to be of type "list"';
      {
        additional_locations: converted,
      }
    ),
    with_additional_locations_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"additional_locations" expected to be of type "list"';
      {
        additional_locations+: converted,
      }
    ),
    with_bucket_columns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"bucket_columns" expected to be of type "list"';
      {
        bucket_columns: converted,
      }
    ),
    with_bucket_columns_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"bucket_columns" expected to be of type "list"';
      {
        bucket_columns+: converted,
      }
    ),
    with_compressed(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"compressed" expected to be of type "bool"';
      {
        compressed: converted,
      }
    ),
    with_input_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_format" expected to be of type "string"';
      {
        input_format: converted,
      }
    ),
    with_location(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    with_number_of_buckets(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"number_of_buckets" expected to be of type "number"';
      {
        number_of_buckets: converted,
      }
    ),
    with_output_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"output_format" expected to be of type "string"';
      {
        output_format: converted,
      }
    ),
    with_parameters(value):: (
      local converted = value;
      assert std.isObject(converted) : '"parameters" expected to be of type "map"';
      {
        parameters: converted,
      }
    ),
    with_stored_as_sub_directories(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"stored_as_sub_directories" expected to be of type "bool"';
      {
        stored_as_sub_directories: converted,
      }
    ),
    columns:: {
      local block = self,
      new(name):: (
        {}
        + block.with_name(name)
      ),
      with_comment(value):: (
        local converted = value;
        assert std.isString(converted) : '"comment" expected to be of type "string"';
        {
          comment: converted,
        }
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
    ser_de_info:: {
      local block = self,
      new():: (
        {}
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_parameters(value):: (
        local converted = value;
        assert std.isObject(converted) : '"parameters" expected to be of type "map"';
        {
          parameters: converted,
        }
      ),
      with_serialization_library(value):: (
        local converted = value;
        assert std.isString(converted) : '"serialization_library" expected to be of type "string"';
        {
          serialization_library: converted,
        }
      ),
    },
    skewed_info:: {
      local block = self,
      new():: (
        {}
      ),
      with_skewed_column_names(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"skewed_column_names" expected to be of type "list"';
        {
          skewed_column_names: converted,
        }
      ),
      with_skewed_column_names_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"skewed_column_names" expected to be of type "list"';
        {
          skewed_column_names+: converted,
        }
      ),
      with_skewed_column_value_location_maps(value):: (
        local converted = value;
        assert std.isObject(converted) : '"skewed_column_value_location_maps" expected to be of type "map"';
        {
          skewed_column_value_location_maps: converted,
        }
      ),
      with_skewed_column_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"skewed_column_values" expected to be of type "list"';
        {
          skewed_column_values: converted,
        }
      ),
      with_skewed_column_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"skewed_column_values" expected to be of type "list"';
        {
          skewed_column_values+: converted,
        }
      ),
    },
    sort_columns:: {
      local block = self,
      new(column, sort_order):: (
        {}
        + block.with_column(column)
        + block.with_sort_order(sort_order)
      ),
      with_column(value):: (
        local converted = value;
        assert std.isString(converted) : '"column" expected to be of type "string"';
        {
          column: converted,
        }
      ),
      with_sort_order(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"sort_order" expected to be of type "number"';
        {
          sort_order: converted,
        }
      ),
    },
    with_columns(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        columns: value,
      }
    ),
    with_ser_de_info(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ser_de_info: value,
      }
    ),
    with_skewed_info(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        skewed_info: value,
      }
    ),
    with_sort_columns(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sort_columns: value,
      }
    ),
    with_columns_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        columns+: converted,
      }
    ),
    with_ser_de_info_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ser_de_info+: converted,
      }
    ),
    with_skewed_info_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        skewed_info+: converted,
      }
    ),
    with_sort_columns_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sort_columns+: converted,
      }
    ),
  },
  with_storage_descriptor(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_descriptor: value,
    }
  ),
  with_storage_descriptor_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_descriptor+: converted,
    }
  ),
}
