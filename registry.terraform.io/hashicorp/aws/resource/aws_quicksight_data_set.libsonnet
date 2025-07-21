{
  local block = self,
  new(data_set_id, import_mode, name):: (
    {}
    + block.with_data_set_id(data_set_id)
    + block.with_import_mode(import_mode)
    + block.with_name(name)
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
  with_data_set_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_set_id" expected to be of type "string"';
    {
      data_set_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_import_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"import_mode" expected to be of type "string"';
    {
      import_mode: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_output_columns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"output_columns" expected to be of type "list"';
    {
      output_columns: converted,
    }
  ),
  with_output_columns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"output_columns" expected to be of type "list"';
    {
      output_columns+: converted,
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
  column_groups:: {
    local block = self,
    new():: (
      {}
    ),
    geo_spatial_column_group:: {
      local block = self,
      new(columns, country_code, name):: (
        {}
        + block.with_columns(columns)
        + block.with_country_code(country_code)
        + block.with_name(name)
      ),
      with_columns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"columns" expected to be of type "list"';
        {
          columns: converted,
        }
      ),
      with_columns_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"columns" expected to be of type "list"';
        {
          columns+: converted,
        }
      ),
      with_country_code(value):: (
        local converted = value;
        assert std.isString(converted) : '"country_code" expected to be of type "string"';
        {
          country_code: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    with_geo_spatial_column_group(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geo_spatial_column_group: value,
      }
    ),
    with_geo_spatial_column_group_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geo_spatial_column_group+: converted,
      }
    ),
  },
  column_level_permission_rules:: {
    local block = self,
    new():: (
      {}
    ),
    with_column_names(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"column_names" expected to be of type "list"';
      {
        column_names: converted,
      }
    ),
    with_column_names_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"column_names" expected to be of type "list"';
      {
        column_names+: converted,
      }
    ),
    with_principals(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"principals" expected to be of type "list"';
      {
        principals: converted,
      }
    ),
    with_principals_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"principals" expected to be of type "list"';
      {
        principals+: converted,
      }
    ),
  },
  data_set_usage_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_disable_use_as_direct_query_source(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disable_use_as_direct_query_source" expected to be of type "bool"';
      {
        disable_use_as_direct_query_source: converted,
      }
    ),
    with_disable_use_as_imported_source(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disable_use_as_imported_source" expected to be of type "bool"';
      {
        disable_use_as_imported_source: converted,
      }
    ),
  },
  field_folders:: {
    local block = self,
    new(field_folders_id):: (
      {}
      + block.with_field_folders_id(field_folders_id)
    ),
    with_columns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"columns" expected to be of type "list"';
      {
        columns: converted,
      }
    ),
    with_columns_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"columns" expected to be of type "list"';
      {
        columns+: converted,
      }
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_field_folders_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"field_folders_id" expected to be of type "string"';
      {
        field_folders_id: converted,
      }
    ),
  },
  logical_table_map:: {
    local block = self,
    new(alias, logical_table_map_id):: (
      {}
      + block.with_alias(alias)
      + block.with_logical_table_map_id(logical_table_map_id)
    ),
    with_alias(value):: (
      local converted = value;
      assert std.isString(converted) : '"alias" expected to be of type "string"';
      {
        alias: converted,
      }
    ),
    with_logical_table_map_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"logical_table_map_id" expected to be of type "string"';
      {
        logical_table_map_id: converted,
      }
    ),
    data_transforms:: {
      local block = self,
      new():: (
        {}
      ),
      cast_column_type_operation:: {
        local block = self,
        new(column_name, new_column_type):: (
          {}
          + block.with_column_name(column_name)
          + block.with_new_column_type(new_column_type)
        ),
        with_column_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"column_name" expected to be of type "string"';
          {
            column_name: converted,
          }
        ),
        with_format(value):: (
          local converted = value;
          assert std.isString(converted) : '"format" expected to be of type "string"';
          {
            format: converted,
          }
        ),
        with_new_column_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"new_column_type" expected to be of type "string"';
          {
            new_column_type: converted,
          }
        ),
      },
      create_columns_operation:: {
        local block = self,
        new():: (
          {}
        ),
        columns:: {
          local block = self,
          new(column_id, column_name, expression):: (
            {}
            + block.with_column_id(column_id)
            + block.with_column_name(column_name)
            + block.with_expression(expression)
          ),
          with_column_id(value):: (
            local converted = value;
            assert std.isString(converted) : '"column_id" expected to be of type "string"';
            {
              column_id: converted,
            }
          ),
          with_column_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"column_name" expected to be of type "string"';
            {
              column_name: converted,
            }
          ),
          with_expression(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression" expected to be of type "string"';
            {
              expression: converted,
            }
          ),
        },
        with_columns(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            columns: value,
          }
        ),
        with_columns_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            columns+: converted,
          }
        ),
      },
      filter_operation:: {
        local block = self,
        new(condition_expression):: (
          {}
          + block.with_condition_expression(condition_expression)
        ),
        with_condition_expression(value):: (
          local converted = value;
          assert std.isString(converted) : '"condition_expression" expected to be of type "string"';
          {
            condition_expression: converted,
          }
        ),
      },
      project_operation:: {
        local block = self,
        new(projected_columns):: (
          {}
          + block.with_projected_columns(projected_columns)
        ),
        with_projected_columns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"projected_columns" expected to be of type "list"';
          {
            projected_columns: converted,
          }
        ),
        with_projected_columns_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"projected_columns" expected to be of type "list"';
          {
            projected_columns+: converted,
          }
        ),
      },
      rename_column_operation:: {
        local block = self,
        new(column_name, new_column_name):: (
          {}
          + block.with_column_name(column_name)
          + block.with_new_column_name(new_column_name)
        ),
        with_column_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"column_name" expected to be of type "string"';
          {
            column_name: converted,
          }
        ),
        with_new_column_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"new_column_name" expected to be of type "string"';
          {
            new_column_name: converted,
          }
        ),
      },
      tag_column_operation:: {
        local block = self,
        new(column_name):: (
          {}
          + block.with_column_name(column_name)
        ),
        with_column_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"column_name" expected to be of type "string"';
          {
            column_name: converted,
          }
        ),
        tags:: {
          local block = self,
          new():: (
            {}
          ),
          with_column_geographic_role(value):: (
            local converted = value;
            assert std.isString(converted) : '"column_geographic_role" expected to be of type "string"';
            {
              column_geographic_role: converted,
            }
          ),
          column_description:: {
            local block = self,
            new():: (
              {}
            ),
            with_text(value):: (
              local converted = value;
              assert std.isString(converted) : '"text" expected to be of type "string"';
              {
                text: converted,
              }
            ),
          },
          with_column_description(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              column_description: value,
            }
          ),
          with_column_description_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              column_description+: converted,
            }
          ),
        },
        with_tags(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tags: value,
          }
        ),
        with_tags_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tags+: converted,
          }
        ),
      },
      untag_column_operation:: {
        local block = self,
        new(column_name, tag_names):: (
          {}
          + block.with_column_name(column_name)
          + block.with_tag_names(tag_names)
        ),
        with_column_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"column_name" expected to be of type "string"';
          {
            column_name: converted,
          }
        ),
        with_tag_names(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"tag_names" expected to be of type "list"';
          {
            tag_names: converted,
          }
        ),
        with_tag_names_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"tag_names" expected to be of type "list"';
          {
            tag_names+: converted,
          }
        ),
      },
      with_cast_column_type_operation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cast_column_type_operation: value,
        }
      ),
      with_create_columns_operation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          create_columns_operation: value,
        }
      ),
      with_filter_operation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          filter_operation: value,
        }
      ),
      with_project_operation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          project_operation: value,
        }
      ),
      with_rename_column_operation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          rename_column_operation: value,
        }
      ),
      with_tag_column_operation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tag_column_operation: value,
        }
      ),
      with_untag_column_operation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          untag_column_operation: value,
        }
      ),
      with_cast_column_type_operation_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cast_column_type_operation+: converted,
        }
      ),
      with_create_columns_operation_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          create_columns_operation+: converted,
        }
      ),
      with_filter_operation_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          filter_operation+: converted,
        }
      ),
      with_project_operation_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          project_operation+: converted,
        }
      ),
      with_rename_column_operation_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          rename_column_operation+: converted,
        }
      ),
      with_tag_column_operation_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tag_column_operation+: converted,
        }
      ),
      with_untag_column_operation_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          untag_column_operation+: converted,
        }
      ),
    },
    source:: {
      local block = self,
      new():: (
        {}
      ),
      with_data_set_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_set_arn" expected to be of type "string"';
        {
          data_set_arn: converted,
        }
      ),
      with_physical_table_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"physical_table_id" expected to be of type "string"';
        {
          physical_table_id: converted,
        }
      ),
      join_instruction:: {
        local block = self,
        new(left_operand, on_clause, right_operand, type):: (
          {}
          + block.with_left_operand(left_operand)
          + block.with_on_clause(on_clause)
          + block.with_right_operand(right_operand)
          + block.with_type(type)
        ),
        with_left_operand(value):: (
          local converted = value;
          assert std.isString(converted) : '"left_operand" expected to be of type "string"';
          {
            left_operand: converted,
          }
        ),
        with_on_clause(value):: (
          local converted = value;
          assert std.isString(converted) : '"on_clause" expected to be of type "string"';
          {
            on_clause: converted,
          }
        ),
        with_right_operand(value):: (
          local converted = value;
          assert std.isString(converted) : '"right_operand" expected to be of type "string"';
          {
            right_operand: converted,
          }
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        left_join_key_properties:: {
          local block = self,
          new():: (
            {}
          ),
          with_unique_key(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"unique_key" expected to be of type "bool"';
            {
              unique_key: converted,
            }
          ),
        },
        right_join_key_properties:: {
          local block = self,
          new():: (
            {}
          ),
          with_unique_key(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"unique_key" expected to be of type "bool"';
            {
              unique_key: converted,
            }
          ),
        },
        with_left_join_key_properties(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            left_join_key_properties: value,
          }
        ),
        with_right_join_key_properties(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            right_join_key_properties: value,
          }
        ),
        with_left_join_key_properties_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            left_join_key_properties+: converted,
          }
        ),
        with_right_join_key_properties_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            right_join_key_properties+: converted,
          }
        ),
      },
      with_join_instruction(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          join_instruction: value,
        }
      ),
      with_join_instruction_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          join_instruction+: converted,
        }
      ),
    },
    with_data_transforms(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_transforms: value,
      }
    ),
    with_source(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source: value,
      }
    ),
    with_data_transforms_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_transforms+: converted,
      }
    ),
    with_source_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source+: converted,
      }
    ),
  },
  permissions:: {
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
  physical_table_map:: {
    local block = self,
    new(physical_table_map_id):: (
      {}
      + block.with_physical_table_map_id(physical_table_map_id)
    ),
    with_physical_table_map_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"physical_table_map_id" expected to be of type "string"';
      {
        physical_table_map_id: converted,
      }
    ),
    custom_sql:: {
      local block = self,
      new(data_source_arn, name, sql_query):: (
        {}
        + block.with_data_source_arn(data_source_arn)
        + block.with_name(name)
        + block.with_sql_query(sql_query)
      ),
      with_data_source_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_source_arn" expected to be of type "string"';
        {
          data_source_arn: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_sql_query(value):: (
        local converted = value;
        assert std.isString(converted) : '"sql_query" expected to be of type "string"';
        {
          sql_query: converted,
        }
      ),
      columns:: {
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
      with_columns(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          columns: value,
        }
      ),
      with_columns_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          columns+: converted,
        }
      ),
    },
    relational_table:: {
      local block = self,
      new(data_source_arn, name):: (
        {}
        + block.with_data_source_arn(data_source_arn)
        + block.with_name(name)
      ),
      with_catalog(value):: (
        local converted = value;
        assert std.isString(converted) : '"catalog" expected to be of type "string"';
        {
          catalog: converted,
        }
      ),
      with_data_source_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_source_arn" expected to be of type "string"';
        {
          data_source_arn: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_schema(value):: (
        local converted = value;
        assert std.isString(converted) : '"schema" expected to be of type "string"';
        {
          schema: converted,
        }
      ),
      input_columns:: {
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
      with_input_columns(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input_columns: value,
        }
      ),
      with_input_columns_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input_columns+: converted,
        }
      ),
    },
    s3_source:: {
      local block = self,
      new(data_source_arn):: (
        {}
        + block.with_data_source_arn(data_source_arn)
      ),
      with_data_source_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_source_arn" expected to be of type "string"';
        {
          data_source_arn: converted,
        }
      ),
      input_columns:: {
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
      upload_settings:: {
        local block = self,
        new():: (
          {}
        ),
        with_contains_header(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"contains_header" expected to be of type "bool"';
          {
            contains_header: converted,
          }
        ),
        with_delimiter(value):: (
          local converted = value;
          assert std.isString(converted) : '"delimiter" expected to be of type "string"';
          {
            delimiter: converted,
          }
        ),
        with_format(value):: (
          local converted = value;
          assert std.isString(converted) : '"format" expected to be of type "string"';
          {
            format: converted,
          }
        ),
        with_start_from_row(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"start_from_row" expected to be of type "number"';
          {
            start_from_row: converted,
          }
        ),
        with_text_qualifier(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_qualifier" expected to be of type "string"';
          {
            text_qualifier: converted,
          }
        ),
      },
      with_input_columns(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input_columns: value,
        }
      ),
      with_upload_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          upload_settings: value,
        }
      ),
      with_input_columns_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input_columns+: converted,
        }
      ),
      with_upload_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          upload_settings+: converted,
        }
      ),
    },
    with_custom_sql(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_sql: value,
      }
    ),
    with_relational_table(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        relational_table: value,
      }
    ),
    with_s3_source(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_source: value,
      }
    ),
    with_custom_sql_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_sql+: converted,
      }
    ),
    with_relational_table_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        relational_table+: converted,
      }
    ),
    with_s3_source_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_source+: converted,
      }
    ),
  },
  refresh_properties:: {
    local block = self,
    new():: (
      {}
    ),
    refresh_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      incremental_refresh:: {
        local block = self,
        new():: (
          {}
        ),
        lookback_window:: {
          local block = self,
          new(column_name, size, size_unit):: (
            {}
            + block.with_column_name(column_name)
            + block.with_size(size)
            + block.with_size_unit(size_unit)
          ),
          with_column_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"column_name" expected to be of type "string"';
            {
              column_name: converted,
            }
          ),
          with_size(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"size" expected to be of type "number"';
            {
              size: converted,
            }
          ),
          with_size_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"size_unit" expected to be of type "string"';
            {
              size_unit: converted,
            }
          ),
        },
        with_lookback_window(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            lookback_window: value,
          }
        ),
        with_lookback_window_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            lookback_window+: converted,
          }
        ),
      },
      with_incremental_refresh(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          incremental_refresh: value,
        }
      ),
      with_incremental_refresh_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          incremental_refresh+: converted,
        }
      ),
    },
    with_refresh_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        refresh_configuration: value,
      }
    ),
    with_refresh_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        refresh_configuration+: converted,
      }
    ),
  },
  row_level_permission_data_set:: {
    local block = self,
    new(arn, permission_policy):: (
      {}
      + block.with_arn(arn)
      + block.with_permission_policy(permission_policy)
    ),
    with_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"arn" expected to be of type "string"';
      {
        arn: converted,
      }
    ),
    with_format_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"format_version" expected to be of type "string"';
      {
        format_version: converted,
      }
    ),
    with_namespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
    with_permission_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"permission_policy" expected to be of type "string"';
      {
        permission_policy: converted,
      }
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
  },
  row_level_permission_tag_configuration:: {
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
    tag_rules:: {
      local block = self,
      new(column_name, tag_key):: (
        {}
        + block.with_column_name(column_name)
        + block.with_tag_key(tag_key)
      ),
      with_column_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"column_name" expected to be of type "string"';
        {
          column_name: converted,
        }
      ),
      with_match_all_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"match_all_value" expected to be of type "string"';
        {
          match_all_value: converted,
        }
      ),
      with_tag_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"tag_key" expected to be of type "string"';
        {
          tag_key: converted,
        }
      ),
      with_tag_multi_value_delimiter(value):: (
        local converted = value;
        assert std.isString(converted) : '"tag_multi_value_delimiter" expected to be of type "string"';
        {
          tag_multi_value_delimiter: converted,
        }
      ),
    },
    with_tag_rules(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tag_rules: value,
      }
    ),
    with_tag_rules_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tag_rules+: converted,
      }
    ),
  },
  with_column_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      column_groups: value,
    }
  ),
  with_column_level_permission_rules(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      column_level_permission_rules: value,
    }
  ),
  with_data_set_usage_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_set_usage_configuration: value,
    }
  ),
  with_field_folders(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      field_folders: value,
    }
  ),
  with_logical_table_map(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logical_table_map: value,
    }
  ),
  with_permissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permissions: value,
    }
  ),
  with_physical_table_map(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      physical_table_map: value,
    }
  ),
  with_refresh_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      refresh_properties: value,
    }
  ),
  with_row_level_permission_data_set(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      row_level_permission_data_set: value,
    }
  ),
  with_row_level_permission_tag_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      row_level_permission_tag_configuration: value,
    }
  ),
  with_column_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      column_groups+: converted,
    }
  ),
  with_column_level_permission_rules_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      column_level_permission_rules+: converted,
    }
  ),
  with_data_set_usage_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_set_usage_configuration+: converted,
    }
  ),
  with_field_folders_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      field_folders+: converted,
    }
  ),
  with_logical_table_map_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logical_table_map+: converted,
    }
  ),
  with_permissions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permissions+: converted,
    }
  ),
  with_physical_table_map_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      physical_table_map+: converted,
    }
  ),
  with_refresh_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      refresh_properties+: converted,
    }
  ),
  with_row_level_permission_data_set_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      row_level_permission_data_set+: converted,
    }
  ),
  with_row_level_permission_tag_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      row_level_permission_tag_configuration+: converted,
    }
  ),
}
