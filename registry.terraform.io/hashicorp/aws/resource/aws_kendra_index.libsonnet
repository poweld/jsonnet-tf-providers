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
  with_edition(value):: (
    local converted = value;
    assert std.isString(converted) : '"edition" expected to be of type "string"';
    {
      edition: converted,
    }
  ),
  with_error_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"error_message" expected to be of type "string"';
    {
      error_message: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_index_statistics(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"index_statistics" expected to be of type "list"';
    {
      index_statistics: converted,
    }
  ),
  with_index_statistics_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"index_statistics" expected to be of type "list"';
    {
      index_statistics+: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  with_user_context_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_context_policy" expected to be of type "string"';
    {
      user_context_policy: converted,
    }
  ),
  capacity_units:: {
    local block = self,
    new():: (
      {}
    ),
    with_query_capacity_units(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"query_capacity_units" expected to be of type "number"';
      {
        query_capacity_units: converted,
      }
    ),
    with_storage_capacity_units(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"storage_capacity_units" expected to be of type "number"';
      {
        storage_capacity_units: converted,
      }
    ),
  },
  document_metadata_configuration_updates:: {
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
    relevance:: {
      local block = self,
      new():: (
        {}
      ),
      with_duration(value):: (
        local converted = value;
        assert std.isString(converted) : '"duration" expected to be of type "string"';
        {
          duration: converted,
        }
      ),
      with_freshness(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"freshness" expected to be of type "bool"';
        {
          freshness: converted,
        }
      ),
      with_importance(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"importance" expected to be of type "number"';
        {
          importance: converted,
        }
      ),
      with_rank_order(value):: (
        local converted = value;
        assert std.isString(converted) : '"rank_order" expected to be of type "string"';
        {
          rank_order: converted,
        }
      ),
      with_values_importance_map(value):: (
        local converted = value;
        assert std.isObject(converted) : '"values_importance_map" expected to be of type "map"';
        {
          values_importance_map: converted,
        }
      ),
    },
    search:: {
      local block = self,
      new():: (
        {}
      ),
      with_displayable(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"displayable" expected to be of type "bool"';
        {
          displayable: converted,
        }
      ),
      with_facetable(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"facetable" expected to be of type "bool"';
        {
          facetable: converted,
        }
      ),
      with_searchable(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"searchable" expected to be of type "bool"';
        {
          searchable: converted,
        }
      ),
      with_sortable(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"sortable" expected to be of type "bool"';
        {
          sortable: converted,
        }
      ),
    },
    with_relevance(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        relevance: value,
      }
    ),
    with_search(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        search: value,
      }
    ),
    with_relevance_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        relevance+: converted,
      }
    ),
    with_search_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        search+: converted,
      }
    ),
  },
  server_side_encryption_configuration:: {
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
  user_group_resolution_configuration:: {
    local block = self,
    new(user_group_resolution_mode):: (
      {}
      + block.with_user_group_resolution_mode(user_group_resolution_mode)
    ),
    with_user_group_resolution_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_group_resolution_mode" expected to be of type "string"';
      {
        user_group_resolution_mode: converted,
      }
    ),
  },
  user_token_configurations:: {
    local block = self,
    new():: (
      {}
    ),
    json_token_type_configuration:: {
      local block = self,
      new(group_attribute_field, user_name_attribute_field):: (
        {}
        + block.with_group_attribute_field(group_attribute_field)
        + block.with_user_name_attribute_field(user_name_attribute_field)
      ),
      with_group_attribute_field(value):: (
        local converted = value;
        assert std.isString(converted) : '"group_attribute_field" expected to be of type "string"';
        {
          group_attribute_field: converted,
        }
      ),
      with_user_name_attribute_field(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_name_attribute_field" expected to be of type "string"';
        {
          user_name_attribute_field: converted,
        }
      ),
    },
    jwt_token_type_configuration:: {
      local block = self,
      new(key_location):: (
        {}
        + block.with_key_location(key_location)
      ),
      with_claim_regex(value):: (
        local converted = value;
        assert std.isString(converted) : '"claim_regex" expected to be of type "string"';
        {
          claim_regex: converted,
        }
      ),
      with_group_attribute_field(value):: (
        local converted = value;
        assert std.isString(converted) : '"group_attribute_field" expected to be of type "string"';
        {
          group_attribute_field: converted,
        }
      ),
      with_issuer(value):: (
        local converted = value;
        assert std.isString(converted) : '"issuer" expected to be of type "string"';
        {
          issuer: converted,
        }
      ),
      with_key_location(value):: (
        local converted = value;
        assert std.isString(converted) : '"key_location" expected to be of type "string"';
        {
          key_location: converted,
        }
      ),
      with_secrets_manager_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"secrets_manager_arn" expected to be of type "string"';
        {
          secrets_manager_arn: converted,
        }
      ),
      with_url(value):: (
        local converted = value;
        assert std.isString(converted) : '"url" expected to be of type "string"';
        {
          url: converted,
        }
      ),
      with_user_name_attribute_field(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_name_attribute_field" expected to be of type "string"';
        {
          user_name_attribute_field: converted,
        }
      ),
    },
    with_json_token_type_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        json_token_type_configuration: value,
      }
    ),
    with_jwt_token_type_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        jwt_token_type_configuration: value,
      }
    ),
    with_json_token_type_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        json_token_type_configuration+: converted,
      }
    ),
    with_jwt_token_type_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        jwt_token_type_configuration+: converted,
      }
    ),
  },
  with_capacity_units(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_units: value,
    }
  ),
  with_document_metadata_configuration_updates(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      document_metadata_configuration_updates: value,
    }
  ),
  with_server_side_encryption_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_user_group_resolution_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_group_resolution_configuration: value,
    }
  ),
  with_user_token_configurations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_token_configurations: value,
    }
  ),
  with_capacity_units_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_units+: converted,
    }
  ),
  with_document_metadata_configuration_updates_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      document_metadata_configuration_updates+: converted,
    }
  ),
  with_server_side_encryption_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption_configuration+: converted,
    }
  ),
  with_user_group_resolution_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_group_resolution_configuration+: converted,
    }
  ),
  with_user_token_configurations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_token_configurations+: converted,
    }
  ),
}
