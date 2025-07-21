{
  local block = self,
  new(database_name, name):: (
    {}
    + block.with_database_name(database_name)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_catalog_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
    }
  ),
  with_database_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  with_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner" expected to be of type "string"';
    {
      owner: converted,
    }
  ),
  with_parameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
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
  with_retention(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retention" expected to be of type "number"';
    {
      retention: converted,
    }
  ),
  with_table_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_type" expected to be of type "string"';
    {
      table_type: converted,
    }
  ),
  with_view_expanded_text(value):: (
    local converted = value;
    assert std.isString(converted) : '"view_expanded_text" expected to be of type "string"';
    {
      view_expanded_text: converted,
    }
  ),
  with_view_original_text(value):: (
    local converted = value;
    assert std.isString(converted) : '"view_original_text" expected to be of type "string"';
    {
      view_original_text: converted,
    }
  ),
  open_table_format_input:: {
    local block = self,
    new():: (
      {}
    ),
    iceberg_input:: {
      local block = self,
      new(metadata_operation):: (
        {}
        + block.with_metadata_operation(metadata_operation)
      ),
      with_metadata_operation(value):: (
        local converted = value;
        assert std.isString(converted) : '"metadata_operation" expected to be of type "string"';
        {
          metadata_operation: converted,
        }
      ),
      with_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"version" expected to be of type "string"';
        {
          version: converted,
        }
      ),
    },
    with_iceberg_input(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iceberg_input: value,
      }
    ),
    with_iceberg_input_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iceberg_input+: converted,
      }
    ),
  },
  partition_index:: {
    local block = self,
    new(index_name, keys):: (
      {}
      + block.with_index_name(index_name)
      + block.with_keys(keys)
    ),
    with_index_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"index_name" expected to be of type "string"';
      {
        index_name: converted,
      }
    ),
    with_index_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"index_status" expected to be of type "string"';
      {
        index_status: converted,
      }
    ),
    with_keys(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"keys" expected to be of type "list"';
      {
        keys: converted,
      }
    ),
    with_keys_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"keys" expected to be of type "list"';
      {
        keys+: converted,
      }
    ),
  },
  partition_keys:: {
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
      with_parameters(value):: (
        local converted = value;
        assert std.isObject(converted) : '"parameters" expected to be of type "map"';
        {
          parameters: converted,
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
    schema_reference:: {
      local block = self,
      new(schema_version_number):: (
        {}
        + block.with_schema_version_number(schema_version_number)
      ),
      with_schema_version_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"schema_version_id" expected to be of type "string"';
        {
          schema_version_id: converted,
        }
      ),
      with_schema_version_number(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"schema_version_number" expected to be of type "number"';
        {
          schema_version_number: converted,
        }
      ),
      schema_id:: {
        local block = self,
        new():: (
          {}
        ),
        with_registry_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"registry_name" expected to be of type "string"';
          {
            registry_name: converted,
          }
        ),
        with_schema_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"schema_arn" expected to be of type "string"';
          {
            schema_arn: converted,
          }
        ),
        with_schema_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"schema_name" expected to be of type "string"';
          {
            schema_name: converted,
          }
        ),
      },
      with_schema_id(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          schema_id: value,
        }
      ),
      with_schema_id_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          schema_id+: converted,
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
    with_schema_reference(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schema_reference: value,
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
    with_schema_reference_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schema_reference+: converted,
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
  target_table:: {
    local block = self,
    new(catalog_id, database_name, name):: (
      {}
      + block.with_catalog_id(catalog_id)
      + block.with_database_name(database_name)
      + block.with_name(name)
    ),
    with_catalog_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
      {
        catalog_id: converted,
      }
    ),
    with_database_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_name" expected to be of type "string"';
      {
        database_name: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
  },
  with_open_table_format_input(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      open_table_format_input: value,
    }
  ),
  with_partition_index(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      partition_index: value,
    }
  ),
  with_partition_keys(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      partition_keys: value,
    }
  ),
  with_storage_descriptor(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_descriptor: value,
    }
  ),
  with_target_table(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_table: value,
    }
  ),
  with_open_table_format_input_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      open_table_format_input+: converted,
    }
  ),
  with_partition_index_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      partition_index+: converted,
    }
  ),
  with_partition_keys_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      partition_keys+: converted,
    }
  ),
  with_storage_descriptor_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_descriptor+: converted,
    }
  ),
  with_target_table_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_table+: converted,
    }
  ),
}
