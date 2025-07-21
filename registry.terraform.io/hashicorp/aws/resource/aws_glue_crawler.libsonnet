{
  local block = self,
  new(database_name, name, role):: (
    {}
    + block.with_database_name(database_name)
    + block.with_name(name)
    + block.with_role(role)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_classifiers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"classifiers" expected to be of type "list"';
    {
      classifiers: converted,
    }
  ),
  with_classifiers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"classifiers" expected to be of type "list"';
    {
      classifiers+: converted,
    }
  ),
  with_configuration(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration" expected to be of type "string"';
    {
      configuration: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"role" expected to be of type "string"';
    {
      role: converted,
    }
  ),
  with_schedule(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule" expected to be of type "string"';
    {
      schedule: converted,
    }
  ),
  with_security_configuration(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_configuration" expected to be of type "string"';
    {
      security_configuration: converted,
    }
  ),
  with_table_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_prefix" expected to be of type "string"';
    {
      table_prefix: converted,
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
  catalog_target:: {
    local block = self,
    new(database_name, tables):: (
      {}
      + block.with_database_name(database_name)
      + block.with_tables(tables)
    ),
    with_connection_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"connection_name" expected to be of type "string"';
      {
        connection_name: converted,
      }
    ),
    with_database_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_name" expected to be of type "string"';
      {
        database_name: converted,
      }
    ),
    with_dlq_event_queue_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"dlq_event_queue_arn" expected to be of type "string"';
      {
        dlq_event_queue_arn: converted,
      }
    ),
    with_event_queue_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"event_queue_arn" expected to be of type "string"';
      {
        event_queue_arn: converted,
      }
    ),
    with_tables(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"tables" expected to be of type "list"';
      {
        tables: converted,
      }
    ),
    with_tables_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"tables" expected to be of type "list"';
      {
        tables+: converted,
      }
    ),
  },
  delta_target:: {
    local block = self,
    new(delta_tables, write_manifest):: (
      {}
      + block.with_delta_tables(delta_tables)
      + block.with_write_manifest(write_manifest)
    ),
    with_connection_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"connection_name" expected to be of type "string"';
      {
        connection_name: converted,
      }
    ),
    with_create_native_delta_table(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"create_native_delta_table" expected to be of type "bool"';
      {
        create_native_delta_table: converted,
      }
    ),
    with_delta_tables(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"delta_tables" expected to be of type "set"';
      {
        delta_tables: converted,
      }
    ),
    with_delta_tables_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"delta_tables" expected to be of type "set"';
      {
        delta_tables+: converted,
      }
    ),
    with_write_manifest(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"write_manifest" expected to be of type "bool"';
      {
        write_manifest: converted,
      }
    ),
  },
  dynamodb_target:: {
    local block = self,
    new(path):: (
      {}
      + block.with_path(path)
    ),
    with_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    with_scan_all(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"scan_all" expected to be of type "bool"';
      {
        scan_all: converted,
      }
    ),
    with_scan_rate(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"scan_rate" expected to be of type "number"';
      {
        scan_rate: converted,
      }
    ),
  },
  hudi_target:: {
    local block = self,
    new(maximum_traversal_depth, paths):: (
      {}
      + block.with_maximum_traversal_depth(maximum_traversal_depth)
      + block.with_paths(paths)
    ),
    with_connection_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"connection_name" expected to be of type "string"';
      {
        connection_name: converted,
      }
    ),
    with_exclusions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclusions" expected to be of type "list"';
      {
        exclusions: converted,
      }
    ),
    with_exclusions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclusions" expected to be of type "list"';
      {
        exclusions+: converted,
      }
    ),
    with_maximum_traversal_depth(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_traversal_depth" expected to be of type "number"';
      {
        maximum_traversal_depth: converted,
      }
    ),
    with_paths(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"paths" expected to be of type "set"';
      {
        paths: converted,
      }
    ),
    with_paths_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"paths" expected to be of type "set"';
      {
        paths+: converted,
      }
    ),
  },
  iceberg_target:: {
    local block = self,
    new(maximum_traversal_depth, paths):: (
      {}
      + block.with_maximum_traversal_depth(maximum_traversal_depth)
      + block.with_paths(paths)
    ),
    with_connection_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"connection_name" expected to be of type "string"';
      {
        connection_name: converted,
      }
    ),
    with_exclusions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclusions" expected to be of type "list"';
      {
        exclusions: converted,
      }
    ),
    with_exclusions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclusions" expected to be of type "list"';
      {
        exclusions+: converted,
      }
    ),
    with_maximum_traversal_depth(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_traversal_depth" expected to be of type "number"';
      {
        maximum_traversal_depth: converted,
      }
    ),
    with_paths(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"paths" expected to be of type "set"';
      {
        paths: converted,
      }
    ),
    with_paths_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"paths" expected to be of type "set"';
      {
        paths+: converted,
      }
    ),
  },
  jdbc_target:: {
    local block = self,
    new(connection_name, path):: (
      {}
      + block.with_connection_name(connection_name)
      + block.with_path(path)
    ),
    with_connection_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"connection_name" expected to be of type "string"';
      {
        connection_name: converted,
      }
    ),
    with_enable_additional_metadata(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"enable_additional_metadata" expected to be of type "list"';
      {
        enable_additional_metadata: converted,
      }
    ),
    with_enable_additional_metadata_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"enable_additional_metadata" expected to be of type "list"';
      {
        enable_additional_metadata+: converted,
      }
    ),
    with_exclusions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclusions" expected to be of type "list"';
      {
        exclusions: converted,
      }
    ),
    with_exclusions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclusions" expected to be of type "list"';
      {
        exclusions+: converted,
      }
    ),
    with_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
  },
  lake_formation_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_account_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_id" expected to be of type "string"';
      {
        account_id: converted,
      }
    ),
    with_use_lake_formation_credentials(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_lake_formation_credentials" expected to be of type "bool"';
      {
        use_lake_formation_credentials: converted,
      }
    ),
  },
  lineage_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_crawler_lineage_settings(value):: (
      local converted = value;
      assert std.isString(converted) : '"crawler_lineage_settings" expected to be of type "string"';
      {
        crawler_lineage_settings: converted,
      }
    ),
  },
  mongodb_target:: {
    local block = self,
    new(connection_name, path):: (
      {}
      + block.with_connection_name(connection_name)
      + block.with_path(path)
    ),
    with_connection_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"connection_name" expected to be of type "string"';
      {
        connection_name: converted,
      }
    ),
    with_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    with_scan_all(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"scan_all" expected to be of type "bool"';
      {
        scan_all: converted,
      }
    ),
  },
  recrawl_policy:: {
    local block = self,
    new():: (
      {}
    ),
    with_recrawl_behavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"recrawl_behavior" expected to be of type "string"';
      {
        recrawl_behavior: converted,
      }
    ),
  },
  s3_target:: {
    local block = self,
    new(path):: (
      {}
      + block.with_path(path)
    ),
    with_connection_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"connection_name" expected to be of type "string"';
      {
        connection_name: converted,
      }
    ),
    with_dlq_event_queue_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"dlq_event_queue_arn" expected to be of type "string"';
      {
        dlq_event_queue_arn: converted,
      }
    ),
    with_event_queue_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"event_queue_arn" expected to be of type "string"';
      {
        event_queue_arn: converted,
      }
    ),
    with_exclusions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclusions" expected to be of type "list"';
      {
        exclusions: converted,
      }
    ),
    with_exclusions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclusions" expected to be of type "list"';
      {
        exclusions+: converted,
      }
    ),
    with_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    with_sample_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"sample_size" expected to be of type "number"';
      {
        sample_size: converted,
      }
    ),
  },
  schema_change_policy:: {
    local block = self,
    new():: (
      {}
    ),
    with_delete_behavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete_behavior" expected to be of type "string"';
      {
        delete_behavior: converted,
      }
    ),
    with_update_behavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"update_behavior" expected to be of type "string"';
      {
        update_behavior: converted,
      }
    ),
  },
  with_catalog_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      catalog_target: value,
    }
  ),
  with_delta_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delta_target: value,
    }
  ),
  with_dynamodb_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dynamodb_target: value,
    }
  ),
  with_hudi_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      hudi_target: value,
    }
  ),
  with_iceberg_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iceberg_target: value,
    }
  ),
  with_jdbc_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      jdbc_target: value,
    }
  ),
  with_lake_formation_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lake_formation_configuration: value,
    }
  ),
  with_lineage_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lineage_configuration: value,
    }
  ),
  with_mongodb_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mongodb_target: value,
    }
  ),
  with_recrawl_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recrawl_policy: value,
    }
  ),
  with_s3_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_target: value,
    }
  ),
  with_schema_change_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schema_change_policy: value,
    }
  ),
  with_catalog_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      catalog_target+: converted,
    }
  ),
  with_delta_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delta_target+: converted,
    }
  ),
  with_dynamodb_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dynamodb_target+: converted,
    }
  ),
  with_hudi_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      hudi_target+: converted,
    }
  ),
  with_iceberg_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iceberg_target+: converted,
    }
  ),
  with_jdbc_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      jdbc_target+: converted,
    }
  ),
  with_lake_formation_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lake_formation_configuration+: converted,
    }
  ),
  with_lineage_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lineage_configuration+: converted,
    }
  ),
  with_mongodb_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mongodb_target+: converted,
    }
  ),
  with_recrawl_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recrawl_policy+: converted,
    }
  ),
  with_s3_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_target+: converted,
    }
  ),
  with_schema_change_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schema_change_policy+: converted,
    }
  ),
}
