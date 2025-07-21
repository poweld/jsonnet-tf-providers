{
  local block = self,
  new(data_source_id, name, type):: (
    {}
    + block.with_data_source_id(data_source_id)
    + block.with_name(name)
    + block.with_type(type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_aws_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  with_data_source_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_source_id" expected to be of type "string"';
    {
      data_source_id: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  credentials:: {
    local block = self,
    new():: (
      {}
    ),
    with_copy_source_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"copy_source_arn" expected to be of type "string"';
      {
        copy_source_arn: converted,
      }
    ),
    with_secret_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
      {
        secret_arn: converted,
      }
    ),
    credential_pair:: {
      local block = self,
      new(password, username):: (
        {}
        + block.with_password(password)
        + block.with_username(username)
      ),
      with_password(value):: (
        local converted = value;
        assert std.isString(converted) : '"password" expected to be of type "string"';
        {
          password: converted,
        }
      ),
      with_username(value):: (
        local converted = value;
        assert std.isString(converted) : '"username" expected to be of type "string"';
        {
          username: converted,
        }
      ),
    },
    with_credential_pair(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        credential_pair: value,
      }
    ),
    with_credential_pair_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        credential_pair+: converted,
      }
    ),
  },
  parameters:: {
    local block = self,
    new():: (
      {}
    ),
    amazon_elasticsearch:: {
      local block = self,
      new(domain):: (
        {}
        + block.with_domain(domain)
      ),
      with_domain(value):: (
        local converted = value;
        assert std.isString(converted) : '"domain" expected to be of type "string"';
        {
          domain: converted,
        }
      ),
    },
    athena:: {
      local block = self,
      new():: (
        {}
      ),
      with_work_group(value):: (
        local converted = value;
        assert std.isString(converted) : '"work_group" expected to be of type "string"';
        {
          work_group: converted,
        }
      ),
    },
    aurora:: {
      local block = self,
      new(database, host, port):: (
        {}
        + block.with_database(database)
        + block.with_host(host)
        + block.with_port(port)
      ),
      with_database(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      with_host(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      with_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    aurora_postgresql:: {
      local block = self,
      new(database, host, port):: (
        {}
        + block.with_database(database)
        + block.with_host(host)
        + block.with_port(port)
      ),
      with_database(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      with_host(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      with_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    aws_iot_analytics:: {
      local block = self,
      new(data_set_name):: (
        {}
        + block.with_data_set_name(data_set_name)
      ),
      with_data_set_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_set_name" expected to be of type "string"';
        {
          data_set_name: converted,
        }
      ),
    },
    databricks:: {
      local block = self,
      new(host, port, sql_endpoint_path):: (
        {}
        + block.with_host(host)
        + block.with_port(port)
        + block.with_sql_endpoint_path(sql_endpoint_path)
      ),
      with_host(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      with_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
      with_sql_endpoint_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"sql_endpoint_path" expected to be of type "string"';
        {
          sql_endpoint_path: converted,
        }
      ),
    },
    jira:: {
      local block = self,
      new(site_base_url):: (
        {}
        + block.with_site_base_url(site_base_url)
      ),
      with_site_base_url(value):: (
        local converted = value;
        assert std.isString(converted) : '"site_base_url" expected to be of type "string"';
        {
          site_base_url: converted,
        }
      ),
    },
    maria_db:: {
      local block = self,
      new(database, host, port):: (
        {}
        + block.with_database(database)
        + block.with_host(host)
        + block.with_port(port)
      ),
      with_database(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      with_host(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      with_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    mysql:: {
      local block = self,
      new(database, host, port):: (
        {}
        + block.with_database(database)
        + block.with_host(host)
        + block.with_port(port)
      ),
      with_database(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      with_host(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      with_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    oracle:: {
      local block = self,
      new(database, host, port):: (
        {}
        + block.with_database(database)
        + block.with_host(host)
        + block.with_port(port)
      ),
      with_database(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      with_host(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      with_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    postgresql:: {
      local block = self,
      new(database, host, port):: (
        {}
        + block.with_database(database)
        + block.with_host(host)
        + block.with_port(port)
      ),
      with_database(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      with_host(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      with_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    presto:: {
      local block = self,
      new(catalog, host, port):: (
        {}
        + block.with_catalog(catalog)
        + block.with_host(host)
        + block.with_port(port)
      ),
      with_catalog(value):: (
        local converted = value;
        assert std.isString(converted) : '"catalog" expected to be of type "string"';
        {
          catalog: converted,
        }
      ),
      with_host(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      with_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    rds:: {
      local block = self,
      new(database, instance_id):: (
        {}
        + block.with_database(database)
        + block.with_instance_id(instance_id)
      ),
      with_database(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      with_instance_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"instance_id" expected to be of type "string"';
        {
          instance_id: converted,
        }
      ),
    },
    redshift:: {
      local block = self,
      new(database):: (
        {}
        + block.with_database(database)
      ),
      with_cluster_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"cluster_id" expected to be of type "string"';
        {
          cluster_id: converted,
        }
      ),
      with_database(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      with_host(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      with_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    s3:: {
      local block = self,
      new():: (
        {}
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      manifest_file_location:: {
        local block = self,
        new(bucket, key):: (
          {}
          + block.with_bucket(bucket)
          + block.with_key(key)
        ),
        with_bucket(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket" expected to be of type "string"';
          {
            bucket: converted,
          }
        ),
        with_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
      },
      with_manifest_file_location(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          manifest_file_location: value,
        }
      ),
      with_manifest_file_location_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          manifest_file_location+: converted,
        }
      ),
    },
    service_now:: {
      local block = self,
      new(site_base_url):: (
        {}
        + block.with_site_base_url(site_base_url)
      ),
      with_site_base_url(value):: (
        local converted = value;
        assert std.isString(converted) : '"site_base_url" expected to be of type "string"';
        {
          site_base_url: converted,
        }
      ),
    },
    snowflake:: {
      local block = self,
      new(database, host, warehouse):: (
        {}
        + block.with_database(database)
        + block.with_host(host)
        + block.with_warehouse(warehouse)
      ),
      with_database(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      with_host(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      with_warehouse(value):: (
        local converted = value;
        assert std.isString(converted) : '"warehouse" expected to be of type "string"';
        {
          warehouse: converted,
        }
      ),
    },
    spark:: {
      local block = self,
      new(host, port):: (
        {}
        + block.with_host(host)
        + block.with_port(port)
      ),
      with_host(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      with_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    sql_server:: {
      local block = self,
      new(database, host, port):: (
        {}
        + block.with_database(database)
        + block.with_host(host)
        + block.with_port(port)
      ),
      with_database(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      with_host(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      with_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    teradata:: {
      local block = self,
      new(database, host, port):: (
        {}
        + block.with_database(database)
        + block.with_host(host)
        + block.with_port(port)
      ),
      with_database(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      with_host(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      with_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    twitter:: {
      local block = self,
      new(max_rows, query):: (
        {}
        + block.with_max_rows(max_rows)
        + block.with_query(query)
      ),
      with_max_rows(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_rows" expected to be of type "number"';
        {
          max_rows: converted,
        }
      ),
      with_query(value):: (
        local converted = value;
        assert std.isString(converted) : '"query" expected to be of type "string"';
        {
          query: converted,
        }
      ),
    },
    with_amazon_elasticsearch(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_elasticsearch: value,
      }
    ),
    with_athena(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        athena: value,
      }
    ),
    with_aurora(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aurora: value,
      }
    ),
    with_aurora_postgresql(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aurora_postgresql: value,
      }
    ),
    with_aws_iot_analytics(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_iot_analytics: value,
      }
    ),
    with_databricks(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        databricks: value,
      }
    ),
    with_jira(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        jira: value,
      }
    ),
    with_maria_db(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        maria_db: value,
      }
    ),
    with_mysql(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        mysql: value,
      }
    ),
    with_oracle(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oracle: value,
      }
    ),
    with_postgresql(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        postgresql: value,
      }
    ),
    with_presto(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        presto: value,
      }
    ),
    with_rds(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rds: value,
      }
    ),
    with_redshift(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redshift: value,
      }
    ),
    with_s3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3: value,
      }
    ),
    with_service_now(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service_now: value,
      }
    ),
    with_snowflake(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        snowflake: value,
      }
    ),
    with_spark(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        spark: value,
      }
    ),
    with_sql_server(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sql_server: value,
      }
    ),
    with_teradata(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        teradata: value,
      }
    ),
    with_twitter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        twitter: value,
      }
    ),
    with_amazon_elasticsearch_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_elasticsearch+: converted,
      }
    ),
    with_athena_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        athena+: converted,
      }
    ),
    with_aurora_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aurora+: converted,
      }
    ),
    with_aurora_postgresql_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aurora_postgresql+: converted,
      }
    ),
    with_aws_iot_analytics_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_iot_analytics+: converted,
      }
    ),
    with_databricks_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        databricks+: converted,
      }
    ),
    with_jira_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        jira+: converted,
      }
    ),
    with_maria_db_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        maria_db+: converted,
      }
    ),
    with_mysql_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        mysql+: converted,
      }
    ),
    with_oracle_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oracle+: converted,
      }
    ),
    with_postgresql_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        postgresql+: converted,
      }
    ),
    with_presto_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        presto+: converted,
      }
    ),
    with_rds_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rds+: converted,
      }
    ),
    with_redshift_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redshift+: converted,
      }
    ),
    with_s3_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3+: converted,
      }
    ),
    with_service_now_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service_now+: converted,
      }
    ),
    with_snowflake_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        snowflake+: converted,
      }
    ),
    with_spark_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        spark+: converted,
      }
    ),
    with_sql_server_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sql_server+: converted,
      }
    ),
    with_teradata_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        teradata+: converted,
      }
    ),
    with_twitter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        twitter+: converted,
      }
    ),
  },
  permission:: {
    local block = self,
    new(actions, principal):: (
      {}
      + block.with_actions(actions)
      + block.with_principal(principal)
    ),
    with_actions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
      {
        actions: converted,
      }
    ),
    with_actions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
      {
        actions+: converted,
      }
    ),
    with_principal(value):: (
      local converted = value;
      assert std.isString(converted) : '"principal" expected to be of type "string"';
      {
        principal: converted,
      }
    ),
  },
  ssl_properties:: {
    local block = self,
    new(disable_ssl):: (
      {}
      + block.with_disable_ssl(disable_ssl)
    ),
    with_disable_ssl(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disable_ssl" expected to be of type "bool"';
      {
        disable_ssl: converted,
      }
    ),
  },
  vpc_connection_properties:: {
    local block = self,
    new(vpc_connection_arn):: (
      {}
      + block.with_vpc_connection_arn(vpc_connection_arn)
    ),
    with_vpc_connection_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_connection_arn" expected to be of type "string"';
      {
        vpc_connection_arn: converted,
      }
    ),
  },
  with_credentials(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credentials: value,
    }
  ),
  with_parameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameters: value,
    }
  ),
  with_permission(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permission: value,
    }
  ),
  with_ssl_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ssl_properties: value,
    }
  ),
  with_vpc_connection_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_connection_properties: value,
    }
  ),
  with_credentials_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credentials+: converted,
    }
  ),
  with_parameters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameters+: converted,
    }
  ),
  with_permission_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permission+: converted,
    }
  ),
  with_ssl_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ssl_properties+: converted,
    }
  ),
  with_vpc_connection_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_connection_properties+: converted,
    }
  ),
}
