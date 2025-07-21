{
  local block = self,
  new(api_id, name, type):: (
    {}
    + block.with_api_id(api_id)
    + block.with_name(name)
    + block.with_type(type)
  ),
  with_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
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
  with_service_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_role_arn" expected to be of type "string"';
    {
      service_role_arn: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  dynamodb_config:: {
    local block = self,
    new(table_name):: (
      {}
      + block.with_table_name(table_name)
    ),
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
    with_use_caller_credentials(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_caller_credentials" expected to be of type "bool"';
      {
        use_caller_credentials: converted,
      }
    ),
    with_versioned(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"versioned" expected to be of type "bool"';
      {
        versioned: converted,
      }
    ),
    delta_sync_config:: {
      local block = self,
      new(delta_sync_table_name):: (
        {}
        + block.with_delta_sync_table_name(delta_sync_table_name)
      ),
      with_base_table_ttl(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"base_table_ttl" expected to be of type "number"';
        {
          base_table_ttl: converted,
        }
      ),
      with_delta_sync_table_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"delta_sync_table_name" expected to be of type "string"';
        {
          delta_sync_table_name: converted,
        }
      ),
      with_delta_sync_table_ttl(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"delta_sync_table_ttl" expected to be of type "number"';
        {
          delta_sync_table_ttl: converted,
        }
      ),
    },
    with_delta_sync_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        delta_sync_config: value,
      }
    ),
    with_delta_sync_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        delta_sync_config+: converted,
      }
    ),
  },
  elasticsearch_config:: {
    local block = self,
    new(endpoint):: (
      {}
      + block.with_endpoint(endpoint)
    ),
    with_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint" expected to be of type "string"';
      {
        endpoint: converted,
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
  event_bridge_config:: {
    local block = self,
    new(event_bus_arn):: (
      {}
      + block.with_event_bus_arn(event_bus_arn)
    ),
    with_event_bus_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"event_bus_arn" expected to be of type "string"';
      {
        event_bus_arn: converted,
      }
    ),
  },
  http_config:: {
    local block = self,
    new(endpoint):: (
      {}
      + block.with_endpoint(endpoint)
    ),
    with_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint" expected to be of type "string"';
      {
        endpoint: converted,
      }
    ),
    authorization_config:: {
      local block = self,
      new():: (
        {}
      ),
      with_authorization_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"authorization_type" expected to be of type "string"';
        {
          authorization_type: converted,
        }
      ),
      aws_iam_config:: {
        local block = self,
        new():: (
          {}
        ),
        with_signing_region(value):: (
          local converted = value;
          assert std.isString(converted) : '"signing_region" expected to be of type "string"';
          {
            signing_region: converted,
          }
        ),
        with_signing_service_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"signing_service_name" expected to be of type "string"';
          {
            signing_service_name: converted,
          }
        ),
      },
      with_aws_iam_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          aws_iam_config: value,
        }
      ),
      with_aws_iam_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          aws_iam_config+: converted,
        }
      ),
    },
    with_authorization_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authorization_config: value,
      }
    ),
    with_authorization_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authorization_config+: converted,
      }
    ),
  },
  lambda_config:: {
    local block = self,
    new(function_arn):: (
      {}
      + block.with_function_arn(function_arn)
    ),
    with_function_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"function_arn" expected to be of type "string"';
      {
        function_arn: converted,
      }
    ),
  },
  opensearchservice_config:: {
    local block = self,
    new(endpoint):: (
      {}
      + block.with_endpoint(endpoint)
    ),
    with_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint" expected to be of type "string"';
      {
        endpoint: converted,
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
  relational_database_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_source_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_type" expected to be of type "string"';
      {
        source_type: converted,
      }
    ),
    http_endpoint_config:: {
      local block = self,
      new(aws_secret_store_arn, db_cluster_identifier):: (
        {}
        + block.with_aws_secret_store_arn(aws_secret_store_arn)
        + block.with_db_cluster_identifier(db_cluster_identifier)
      ),
      with_aws_secret_store_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"aws_secret_store_arn" expected to be of type "string"';
        {
          aws_secret_store_arn: converted,
        }
      ),
      with_database_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"database_name" expected to be of type "string"';
        {
          database_name: converted,
        }
      ),
      with_db_cluster_identifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"db_cluster_identifier" expected to be of type "string"';
        {
          db_cluster_identifier: converted,
        }
      ),
      with_region(value):: (
        local converted = value;
        assert std.isString(converted) : '"region" expected to be of type "string"';
        {
          region: converted,
        }
      ),
      with_schema(value):: (
        local converted = value;
        assert std.isString(converted) : '"schema" expected to be of type "string"';
        {
          schema: converted,
        }
      ),
    },
    with_http_endpoint_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_endpoint_config: value,
      }
    ),
    with_http_endpoint_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_endpoint_config+: converted,
      }
    ),
  },
  with_dynamodb_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dynamodb_config: value,
    }
  ),
  with_elasticsearch_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elasticsearch_config: value,
    }
  ),
  with_event_bridge_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_bridge_config: value,
    }
  ),
  with_http_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      http_config: value,
    }
  ),
  with_lambda_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_config: value,
    }
  ),
  with_opensearchservice_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      opensearchservice_config: value,
    }
  ),
  with_relational_database_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      relational_database_config: value,
    }
  ),
  with_dynamodb_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dynamodb_config+: converted,
    }
  ),
  with_elasticsearch_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elasticsearch_config+: converted,
    }
  ),
  with_event_bridge_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_bridge_config+: converted,
    }
  ),
  with_http_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      http_config+: converted,
    }
  ),
  with_lambda_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_config+: converted,
    }
  ),
  with_opensearchservice_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      opensearchservice_config+: converted,
    }
  ),
  with_relational_database_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      relational_database_config+: converted,
    }
  ),
}
