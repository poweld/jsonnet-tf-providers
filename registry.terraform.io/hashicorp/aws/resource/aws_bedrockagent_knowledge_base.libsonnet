{
  local block = self,
  new(name, role_arn):: (
    {}
    + block.with_name(name)
    + block.with_role_arn(role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_failure_reasons(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"failure_reasons" expected to be of type "list"';
    {
      failure_reasons: converted,
    }
  ),
  with_failure_reasons_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"failure_reasons" expected to be of type "list"';
    {
      failure_reasons+: converted,
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
  with_updated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"updated_at" expected to be of type "string"';
    {
      updated_at: converted,
    }
  ),
  knowledge_base_configuration:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    vector_knowledge_base_configuration:: {
      local block = self,
      new(embedding_model_arn):: (
        {}
        + block.with_embedding_model_arn(embedding_model_arn)
      ),
      with_embedding_model_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"embedding_model_arn" expected to be of type "string"';
        {
          embedding_model_arn: converted,
        }
      ),
      embedding_model_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        bedrock_embedding_model_configuration:: {
          local block = self,
          new():: (
            {}
          ),
          with_dimensions(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"dimensions" expected to be of type "number"';
            {
              dimensions: converted,
            }
          ),
          with_embedding_data_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"embedding_data_type" expected to be of type "string"';
            {
              embedding_data_type: converted,
            }
          ),
        },
        with_bedrock_embedding_model_configuration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            bedrock_embedding_model_configuration: value,
          }
        ),
        with_bedrock_embedding_model_configuration_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            bedrock_embedding_model_configuration+: converted,
          }
        ),
      },
      supplemental_data_storage_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        storage_location:: {
          local block = self,
          new(type):: (
            {}
            + block.with_type(type)
          ),
          with_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"type" expected to be of type "string"';
            {
              type: converted,
            }
          ),
          s3_location:: {
            local block = self,
            new(uri):: (
              {}
              + block.with_uri(uri)
            ),
            with_uri(value):: (
              local converted = value;
              assert std.isString(converted) : '"uri" expected to be of type "string"';
              {
                uri: converted,
              }
            ),
          },
          with_s3_location(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              s3_location: value,
            }
          ),
          with_s3_location_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              s3_location+: converted,
            }
          ),
        },
        with_storage_location(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            storage_location: value,
          }
        ),
        with_storage_location_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            storage_location+: converted,
          }
        ),
      },
      with_embedding_model_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          embedding_model_configuration: value,
        }
      ),
      with_supplemental_data_storage_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          supplemental_data_storage_configuration: value,
        }
      ),
      with_embedding_model_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          embedding_model_configuration+: converted,
        }
      ),
      with_supplemental_data_storage_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          supplemental_data_storage_configuration+: converted,
        }
      ),
    },
    with_vector_knowledge_base_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vector_knowledge_base_configuration: value,
      }
    ),
    with_vector_knowledge_base_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vector_knowledge_base_configuration+: converted,
      }
    ),
  },
  storage_configuration:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    opensearch_serverless_configuration:: {
      local block = self,
      new(collection_arn, vector_index_name):: (
        {}
        + block.with_collection_arn(collection_arn)
        + block.with_vector_index_name(vector_index_name)
      ),
      with_collection_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"collection_arn" expected to be of type "string"';
        {
          collection_arn: converted,
        }
      ),
      with_vector_index_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"vector_index_name" expected to be of type "string"';
        {
          vector_index_name: converted,
        }
      ),
      field_mapping:: {
        local block = self,
        new():: (
          {}
        ),
        with_metadata_field(value):: (
          local converted = value;
          assert std.isString(converted) : '"metadata_field" expected to be of type "string"';
          {
            metadata_field: converted,
          }
        ),
        with_text_field(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_field" expected to be of type "string"';
          {
            text_field: converted,
          }
        ),
        with_vector_field(value):: (
          local converted = value;
          assert std.isString(converted) : '"vector_field" expected to be of type "string"';
          {
            vector_field: converted,
          }
        ),
      },
      with_field_mapping(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_mapping: value,
        }
      ),
      with_field_mapping_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_mapping+: converted,
        }
      ),
    },
    pinecone_configuration:: {
      local block = self,
      new(connection_string, credentials_secret_arn):: (
        {}
        + block.with_connection_string(connection_string)
        + block.with_credentials_secret_arn(credentials_secret_arn)
      ),
      with_connection_string(value):: (
        local converted = value;
        assert std.isString(converted) : '"connection_string" expected to be of type "string"';
        {
          connection_string: converted,
        }
      ),
      with_credentials_secret_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"credentials_secret_arn" expected to be of type "string"';
        {
          credentials_secret_arn: converted,
        }
      ),
      with_namespace(value):: (
        local converted = value;
        assert std.isString(converted) : '"namespace" expected to be of type "string"';
        {
          namespace: converted,
        }
      ),
      field_mapping:: {
        local block = self,
        new():: (
          {}
        ),
        with_metadata_field(value):: (
          local converted = value;
          assert std.isString(converted) : '"metadata_field" expected to be of type "string"';
          {
            metadata_field: converted,
          }
        ),
        with_text_field(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_field" expected to be of type "string"';
          {
            text_field: converted,
          }
        ),
      },
      with_field_mapping(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_mapping: value,
        }
      ),
      with_field_mapping_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_mapping+: converted,
        }
      ),
    },
    rds_configuration:: {
      local block = self,
      new(credentials_secret_arn, database_name, resource_arn, table_name):: (
        {}
        + block.with_credentials_secret_arn(credentials_secret_arn)
        + block.with_database_name(database_name)
        + block.with_resource_arn(resource_arn)
        + block.with_table_name(table_name)
      ),
      with_credentials_secret_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"credentials_secret_arn" expected to be of type "string"';
        {
          credentials_secret_arn: converted,
        }
      ),
      with_database_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"database_name" expected to be of type "string"';
        {
          database_name: converted,
        }
      ),
      with_resource_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
        }
      ),
      with_table_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"table_name" expected to be of type "string"';
        {
          table_name: converted,
        }
      ),
      field_mapping:: {
        local block = self,
        new(metadata_field, primary_key_field, text_field, vector_field):: (
          {}
          + block.with_metadata_field(metadata_field)
          + block.with_primary_key_field(primary_key_field)
          + block.with_text_field(text_field)
          + block.with_vector_field(vector_field)
        ),
        with_metadata_field(value):: (
          local converted = value;
          assert std.isString(converted) : '"metadata_field" expected to be of type "string"';
          {
            metadata_field: converted,
          }
        ),
        with_primary_key_field(value):: (
          local converted = value;
          assert std.isString(converted) : '"primary_key_field" expected to be of type "string"';
          {
            primary_key_field: converted,
          }
        ),
        with_text_field(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_field" expected to be of type "string"';
          {
            text_field: converted,
          }
        ),
        with_vector_field(value):: (
          local converted = value;
          assert std.isString(converted) : '"vector_field" expected to be of type "string"';
          {
            vector_field: converted,
          }
        ),
      },
      with_field_mapping(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_mapping: value,
        }
      ),
      with_field_mapping_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_mapping+: converted,
        }
      ),
    },
    redis_enterprise_cloud_configuration:: {
      local block = self,
      new(credentials_secret_arn, endpoint, vector_index_name):: (
        {}
        + block.with_credentials_secret_arn(credentials_secret_arn)
        + block.with_endpoint(endpoint)
        + block.with_vector_index_name(vector_index_name)
      ),
      with_credentials_secret_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"credentials_secret_arn" expected to be of type "string"';
        {
          credentials_secret_arn: converted,
        }
      ),
      with_endpoint(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint" expected to be of type "string"';
        {
          endpoint: converted,
        }
      ),
      with_vector_index_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"vector_index_name" expected to be of type "string"';
        {
          vector_index_name: converted,
        }
      ),
      field_mapping:: {
        local block = self,
        new():: (
          {}
        ),
        with_metadata_field(value):: (
          local converted = value;
          assert std.isString(converted) : '"metadata_field" expected to be of type "string"';
          {
            metadata_field: converted,
          }
        ),
        with_text_field(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_field" expected to be of type "string"';
          {
            text_field: converted,
          }
        ),
        with_vector_field(value):: (
          local converted = value;
          assert std.isString(converted) : '"vector_field" expected to be of type "string"';
          {
            vector_field: converted,
          }
        ),
      },
      with_field_mapping(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_mapping: value,
        }
      ),
      with_field_mapping_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_mapping+: converted,
        }
      ),
    },
    with_opensearch_serverless_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        opensearch_serverless_configuration: value,
      }
    ),
    with_pinecone_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pinecone_configuration: value,
      }
    ),
    with_rds_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rds_configuration: value,
      }
    ),
    with_redis_enterprise_cloud_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redis_enterprise_cloud_configuration: value,
      }
    ),
    with_opensearch_serverless_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        opensearch_serverless_configuration+: converted,
      }
    ),
    with_pinecone_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pinecone_configuration+: converted,
      }
    ),
    with_rds_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rds_configuration+: converted,
      }
    ),
    with_redis_enterprise_cloud_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redis_enterprise_cloud_configuration+: converted,
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
  with_knowledge_base_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      knowledge_base_configuration: value,
    }
  ),
  with_storage_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_knowledge_base_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      knowledge_base_configuration+: converted,
    }
  ),
  with_storage_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_configuration+: converted,
    }
  ),
}
