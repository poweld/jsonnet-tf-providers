{
  local block = self,
  new(event_time_feature_name, feature_group_name, record_identifier_feature_name, role_arn):: (
    {}
    + block.with_event_time_feature_name(event_time_feature_name)
    + block.with_feature_group_name(feature_group_name)
    + block.with_record_identifier_feature_name(record_identifier_feature_name)
    + block.with_role_arn(role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_event_time_feature_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_time_feature_name" expected to be of type "string"';
    {
      event_time_feature_name: converted,
    }
  ),
  with_feature_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"feature_group_name" expected to be of type "string"';
    {
      feature_group_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_record_identifier_feature_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"record_identifier_feature_name" expected to be of type "string"';
    {
      record_identifier_feature_name: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  feature_definition:: {
    local block = self,
    new():: (
      {}
    ),
    with_collection_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"collection_type" expected to be of type "string"';
      {
        collection_type: converted,
      }
    ),
    with_feature_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"feature_name" expected to be of type "string"';
      {
        feature_name: converted,
      }
    ),
    with_feature_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"feature_type" expected to be of type "string"';
      {
        feature_type: converted,
      }
    ),
    collection_config:: {
      local block = self,
      new():: (
        {}
      ),
      vector_config:: {
        local block = self,
        new():: (
          {}
        ),
        with_dimension(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"dimension" expected to be of type "number"';
          {
            dimension: converted,
          }
        ),
      },
      with_vector_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          vector_config: value,
        }
      ),
      with_vector_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          vector_config+: converted,
        }
      ),
    },
    with_collection_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        collection_config: value,
      }
    ),
    with_collection_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        collection_config+: converted,
      }
    ),
  },
  offline_store_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_disable_glue_table_creation(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disable_glue_table_creation" expected to be of type "bool"';
      {
        disable_glue_table_creation: converted,
      }
    ),
    with_table_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"table_format" expected to be of type "string"';
      {
        table_format: converted,
      }
    ),
    data_catalog_config:: {
      local block = self,
      new():: (
        {}
      ),
      with_catalog(value):: (
        local converted = value;
        assert std.isString(converted) : '"catalog" expected to be of type "string"';
        {
          catalog: converted,
        }
      ),
      with_database(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      with_table_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"table_name" expected to be of type "string"';
        {
          table_name: converted,
        }
      ),
    },
    s3_storage_config:: {
      local block = self,
      new(s3_uri):: (
        {}
        + block.with_s3_uri(s3_uri)
      ),
      with_kms_key_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
        {
          kms_key_id: converted,
        }
      ),
      with_resolved_output_s3_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"resolved_output_s3_uri" expected to be of type "string"';
        {
          resolved_output_s3_uri: converted,
        }
      ),
      with_s3_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
        {
          s3_uri: converted,
        }
      ),
    },
    with_data_catalog_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_catalog_config: value,
      }
    ),
    with_s3_storage_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_storage_config: value,
      }
    ),
    with_data_catalog_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_catalog_config+: converted,
      }
    ),
    with_s3_storage_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_storage_config+: converted,
      }
    ),
  },
  online_store_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_enable_online_store(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_online_store" expected to be of type "bool"';
      {
        enable_online_store: converted,
      }
    ),
    with_storage_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"storage_type" expected to be of type "string"';
      {
        storage_type: converted,
      }
    ),
    security_config:: {
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
    },
    ttl_duration:: {
      local block = self,
      new():: (
        {}
      ),
      with_unit(value):: (
        local converted = value;
        assert std.isString(converted) : '"unit" expected to be of type "string"';
        {
          unit: converted,
        }
      ),
      with_value(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"value" expected to be of type "number"';
        {
          value: converted,
        }
      ),
    },
    with_security_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        security_config: value,
      }
    ),
    with_ttl_duration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ttl_duration: value,
      }
    ),
    with_security_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        security_config+: converted,
      }
    ),
    with_ttl_duration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ttl_duration+: converted,
      }
    ),
  },
  throughput_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_provisioned_read_capacity_units(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"provisioned_read_capacity_units" expected to be of type "number"';
      {
        provisioned_read_capacity_units: converted,
      }
    ),
    with_provisioned_write_capacity_units(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"provisioned_write_capacity_units" expected to be of type "number"';
      {
        provisioned_write_capacity_units: converted,
      }
    ),
    with_throughput_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"throughput_mode" expected to be of type "string"';
      {
        throughput_mode: converted,
      }
    ),
  },
  with_feature_definition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      feature_definition: value,
    }
  ),
  with_offline_store_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      offline_store_config: value,
    }
  ),
  with_online_store_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      online_store_config: value,
    }
  ),
  with_throughput_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      throughput_config: value,
    }
  ),
  with_feature_definition_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      feature_definition+: converted,
    }
  ),
  with_offline_store_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      offline_store_config+: converted,
    }
  ),
  with_online_store_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      online_store_config+: converted,
    }
  ),
  with_throughput_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      throughput_config+: converted,
    }
  ),
}
