{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
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
  with_flow_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"flow_status" expected to be of type "string"';
    {
      flow_status: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_arn" expected to be of type "string"';
    {
      kms_arn: converted,
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
  destination_flow_config:: {
    local block = self,
    new(connector_type):: (
      {}
      + block.with_connector_type(connector_type)
    ),
    with_api_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"api_version" expected to be of type "string"';
      {
        api_version: converted,
      }
    ),
    with_connector_profile_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"connector_profile_name" expected to be of type "string"';
      {
        connector_profile_name: converted,
      }
    ),
    with_connector_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"connector_type" expected to be of type "string"';
      {
        connector_type: converted,
      }
    ),
    destination_connector_properties:: {
      local block = self,
      new():: (
        {}
      ),
      custom_connector:: {
        local block = self,
        new(entity_name):: (
          {}
          + block.with_entity_name(entity_name)
        ),
        with_custom_properties(value):: (
          local converted = value;
          assert std.isObject(converted) : '"custom_properties" expected to be of type "map"';
          {
            custom_properties: converted,
          }
        ),
        with_entity_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"entity_name" expected to be of type "string"';
          {
            entity_name: converted,
          }
        ),
        with_id_field_names(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"id_field_names" expected to be of type "list"';
          {
            id_field_names: converted,
          }
        ),
        with_id_field_names_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"id_field_names" expected to be of type "list"';
          {
            id_field_names+: converted,
          }
        ),
        with_write_operation_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"write_operation_type" expected to be of type "string"';
          {
            write_operation_type: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          with_bucket_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          with_bucket_prefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          with_fail_on_first_destination_error(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        with_error_handling_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        with_error_handling_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
      },
      customer_profiles:: {
        local block = self,
        new(domain_name):: (
          {}
          + block.with_domain_name(domain_name)
        ),
        with_domain_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"domain_name" expected to be of type "string"';
          {
            domain_name: converted,
          }
        ),
        with_object_type_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"object_type_name" expected to be of type "string"';
          {
            object_type_name: converted,
          }
        ),
      },
      event_bridge:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          with_bucket_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          with_bucket_prefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          with_fail_on_first_destination_error(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        with_error_handling_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        with_error_handling_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
      },
      honeycode:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          with_bucket_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          with_bucket_prefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          with_fail_on_first_destination_error(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        with_error_handling_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        with_error_handling_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
      },
      lookout_metrics:: {
        local block = self,
        new():: (
          {}
        ),
      },
      marketo:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          with_bucket_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          with_bucket_prefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          with_fail_on_first_destination_error(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        with_error_handling_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        with_error_handling_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
      },
      redshift:: {
        local block = self,
        new(intermediate_bucket_name, object):: (
          {}
          + block.with_intermediate_bucket_name(intermediate_bucket_name)
          + block.with_object(object)
        ),
        with_bucket_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
          {
            bucket_prefix: converted,
          }
        ),
        with_intermediate_bucket_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"intermediate_bucket_name" expected to be of type "string"';
          {
            intermediate_bucket_name: converted,
          }
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          with_bucket_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          with_bucket_prefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          with_fail_on_first_destination_error(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        with_error_handling_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        with_error_handling_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
      },
      s3:: {
        local block = self,
        new(bucket_name):: (
          {}
          + block.with_bucket_name(bucket_name)
        ),
        with_bucket_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
          {
            bucket_name: converted,
          }
        ),
        with_bucket_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
          {
            bucket_prefix: converted,
          }
        ),
        s3_output_format_config:: {
          local block = self,
          new():: (
            {}
          ),
          with_file_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"file_type" expected to be of type "string"';
            {
              file_type: converted,
            }
          ),
          with_preserve_source_data_typing(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"preserve_source_data_typing" expected to be of type "bool"';
            {
              preserve_source_data_typing: converted,
            }
          ),
          aggregation_config:: {
            local block = self,
            new():: (
              {}
            ),
            with_aggregation_type(value):: (
              local converted = value;
              assert std.isString(converted) : '"aggregation_type" expected to be of type "string"';
              {
                aggregation_type: converted,
              }
            ),
            with_target_file_size(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"target_file_size" expected to be of type "number"';
              {
                target_file_size: converted,
              }
            ),
          },
          prefix_config:: {
            local block = self,
            new():: (
              {}
            ),
            with_prefix_format(value):: (
              local converted = value;
              assert std.isString(converted) : '"prefix_format" expected to be of type "string"';
              {
                prefix_format: converted,
              }
            ),
            with_prefix_hierarchy(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"prefix_hierarchy" expected to be of type "list"';
              {
                prefix_hierarchy: converted,
              }
            ),
            with_prefix_hierarchy_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"prefix_hierarchy" expected to be of type "list"';
              {
                prefix_hierarchy+: converted,
              }
            ),
            with_prefix_type(value):: (
              local converted = value;
              assert std.isString(converted) : '"prefix_type" expected to be of type "string"';
              {
                prefix_type: converted,
              }
            ),
          },
          with_aggregation_config(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              aggregation_config: value,
            }
          ),
          with_prefix_config(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prefix_config: value,
            }
          ),
          with_aggregation_config_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              aggregation_config+: converted,
            }
          ),
          with_prefix_config_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prefix_config+: converted,
            }
          ),
        },
        with_s3_output_format_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_output_format_config: value,
          }
        ),
        with_s3_output_format_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_output_format_config+: converted,
          }
        ),
      },
      salesforce:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_data_transfer_api(value):: (
          local converted = value;
          assert std.isString(converted) : '"data_transfer_api" expected to be of type "string"';
          {
            data_transfer_api: converted,
          }
        ),
        with_id_field_names(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"id_field_names" expected to be of type "list"';
          {
            id_field_names: converted,
          }
        ),
        with_id_field_names_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"id_field_names" expected to be of type "list"';
          {
            id_field_names+: converted,
          }
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
        with_write_operation_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"write_operation_type" expected to be of type "string"';
          {
            write_operation_type: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          with_bucket_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          with_bucket_prefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          with_fail_on_first_destination_error(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        with_error_handling_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        with_error_handling_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
      },
      sapo_data:: {
        local block = self,
        new(object_path):: (
          {}
          + block.with_object_path(object_path)
        ),
        with_id_field_names(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"id_field_names" expected to be of type "list"';
          {
            id_field_names: converted,
          }
        ),
        with_id_field_names_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"id_field_names" expected to be of type "list"';
          {
            id_field_names+: converted,
          }
        ),
        with_object_path(value):: (
          local converted = value;
          assert std.isString(converted) : '"object_path" expected to be of type "string"';
          {
            object_path: converted,
          }
        ),
        with_write_operation_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"write_operation_type" expected to be of type "string"';
          {
            write_operation_type: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          with_bucket_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          with_bucket_prefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          with_fail_on_first_destination_error(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        success_response_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          with_bucket_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          with_bucket_prefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
        },
        with_error_handling_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        with_success_response_handling_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_response_handling_config: value,
          }
        ),
        with_error_handling_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
        with_success_response_handling_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_response_handling_config+: converted,
          }
        ),
      },
      snowflake:: {
        local block = self,
        new(intermediate_bucket_name, object):: (
          {}
          + block.with_intermediate_bucket_name(intermediate_bucket_name)
          + block.with_object(object)
        ),
        with_bucket_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
          {
            bucket_prefix: converted,
          }
        ),
        with_intermediate_bucket_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"intermediate_bucket_name" expected to be of type "string"';
          {
            intermediate_bucket_name: converted,
          }
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          with_bucket_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          with_bucket_prefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          with_fail_on_first_destination_error(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        with_error_handling_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        with_error_handling_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
      },
      upsolver:: {
        local block = self,
        new(bucket_name):: (
          {}
          + block.with_bucket_name(bucket_name)
        ),
        with_bucket_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
          {
            bucket_name: converted,
          }
        ),
        with_bucket_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
          {
            bucket_prefix: converted,
          }
        ),
        s3_output_format_config:: {
          local block = self,
          new():: (
            {}
          ),
          with_file_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"file_type" expected to be of type "string"';
            {
              file_type: converted,
            }
          ),
          aggregation_config:: {
            local block = self,
            new():: (
              {}
            ),
            with_aggregation_type(value):: (
              local converted = value;
              assert std.isString(converted) : '"aggregation_type" expected to be of type "string"';
              {
                aggregation_type: converted,
              }
            ),
          },
          prefix_config:: {
            local block = self,
            new(prefix_type):: (
              {}
              + block.with_prefix_type(prefix_type)
            ),
            with_prefix_format(value):: (
              local converted = value;
              assert std.isString(converted) : '"prefix_format" expected to be of type "string"';
              {
                prefix_format: converted,
              }
            ),
            with_prefix_hierarchy(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"prefix_hierarchy" expected to be of type "list"';
              {
                prefix_hierarchy: converted,
              }
            ),
            with_prefix_hierarchy_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"prefix_hierarchy" expected to be of type "list"';
              {
                prefix_hierarchy+: converted,
              }
            ),
            with_prefix_type(value):: (
              local converted = value;
              assert std.isString(converted) : '"prefix_type" expected to be of type "string"';
              {
                prefix_type: converted,
              }
            ),
          },
          with_aggregation_config(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              aggregation_config: value,
            }
          ),
          with_prefix_config(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prefix_config: value,
            }
          ),
          with_aggregation_config_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              aggregation_config+: converted,
            }
          ),
          with_prefix_config_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prefix_config+: converted,
            }
          ),
        },
        with_s3_output_format_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_output_format_config: value,
          }
        ),
        with_s3_output_format_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_output_format_config+: converted,
          }
        ),
      },
      zendesk:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_id_field_names(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"id_field_names" expected to be of type "list"';
          {
            id_field_names: converted,
          }
        ),
        with_id_field_names_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"id_field_names" expected to be of type "list"';
          {
            id_field_names+: converted,
          }
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
        with_write_operation_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"write_operation_type" expected to be of type "string"';
          {
            write_operation_type: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          with_bucket_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          with_bucket_prefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          with_fail_on_first_destination_error(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        with_error_handling_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        with_error_handling_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
      },
      with_custom_connector(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_connector: value,
        }
      ),
      with_customer_profiles(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customer_profiles: value,
        }
      ),
      with_event_bridge(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          event_bridge: value,
        }
      ),
      with_honeycode(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          honeycode: value,
        }
      ),
      with_lookout_metrics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          lookout_metrics: value,
        }
      ),
      with_marketo(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          marketo: value,
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
      with_salesforce(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          salesforce: value,
        }
      ),
      with_sapo_data(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sapo_data: value,
        }
      ),
      with_snowflake(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          snowflake: value,
        }
      ),
      with_upsolver(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          upsolver: value,
        }
      ),
      with_zendesk(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          zendesk: value,
        }
      ),
      with_custom_connector_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_connector+: converted,
        }
      ),
      with_customer_profiles_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customer_profiles+: converted,
        }
      ),
      with_event_bridge_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          event_bridge+: converted,
        }
      ),
      with_honeycode_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          honeycode+: converted,
        }
      ),
      with_lookout_metrics_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          lookout_metrics+: converted,
        }
      ),
      with_marketo_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          marketo+: converted,
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
      with_salesforce_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          salesforce+: converted,
        }
      ),
      with_sapo_data_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sapo_data+: converted,
        }
      ),
      with_snowflake_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          snowflake+: converted,
        }
      ),
      with_upsolver_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          upsolver+: converted,
        }
      ),
      with_zendesk_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          zendesk+: converted,
        }
      ),
    },
    with_destination_connector_properties(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_connector_properties: value,
      }
    ),
    with_destination_connector_properties_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_connector_properties+: converted,
      }
    ),
  },
  metadata_catalog_config:: {
    local block = self,
    new():: (
      {}
    ),
    glue_data_catalog:: {
      local block = self,
      new(database_name, role_arn, table_prefix):: (
        {}
        + block.with_database_name(database_name)
        + block.with_role_arn(role_arn)
        + block.with_table_prefix(table_prefix)
      ),
      with_database_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"database_name" expected to be of type "string"';
        {
          database_name: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      with_table_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"table_prefix" expected to be of type "string"';
        {
          table_prefix: converted,
        }
      ),
    },
    with_glue_data_catalog(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        glue_data_catalog: value,
      }
    ),
    with_glue_data_catalog_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        glue_data_catalog+: converted,
      }
    ),
  },
  source_flow_config:: {
    local block = self,
    new(connector_type):: (
      {}
      + block.with_connector_type(connector_type)
    ),
    with_api_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"api_version" expected to be of type "string"';
      {
        api_version: converted,
      }
    ),
    with_connector_profile_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"connector_profile_name" expected to be of type "string"';
      {
        connector_profile_name: converted,
      }
    ),
    with_connector_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"connector_type" expected to be of type "string"';
      {
        connector_type: converted,
      }
    ),
    incremental_pull_config:: {
      local block = self,
      new():: (
        {}
      ),
      with_datetime_type_field_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"datetime_type_field_name" expected to be of type "string"';
        {
          datetime_type_field_name: converted,
        }
      ),
    },
    source_connector_properties:: {
      local block = self,
      new():: (
        {}
      ),
      amplitude:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      custom_connector:: {
        local block = self,
        new(entity_name):: (
          {}
          + block.with_entity_name(entity_name)
        ),
        with_custom_properties(value):: (
          local converted = value;
          assert std.isObject(converted) : '"custom_properties" expected to be of type "map"';
          {
            custom_properties: converted,
          }
        ),
        with_entity_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"entity_name" expected to be of type "string"';
          {
            entity_name: converted,
          }
        ),
      },
      datadog:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      dynatrace:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      google_analytics:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      infor_nexus:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      marketo:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      s3:: {
        local block = self,
        new(bucket_name, bucket_prefix):: (
          {}
          + block.with_bucket_name(bucket_name)
          + block.with_bucket_prefix(bucket_prefix)
        ),
        with_bucket_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
          {
            bucket_name: converted,
          }
        ),
        with_bucket_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
          {
            bucket_prefix: converted,
          }
        ),
        s3_input_format_config:: {
          local block = self,
          new():: (
            {}
          ),
          with_s3_input_file_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"s3_input_file_type" expected to be of type "string"';
            {
              s3_input_file_type: converted,
            }
          ),
        },
        with_s3_input_format_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_input_format_config: value,
          }
        ),
        with_s3_input_format_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_input_format_config+: converted,
          }
        ),
      },
      salesforce:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_data_transfer_api(value):: (
          local converted = value;
          assert std.isString(converted) : '"data_transfer_api" expected to be of type "string"';
          {
            data_transfer_api: converted,
          }
        ),
        with_enable_dynamic_field_update(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enable_dynamic_field_update" expected to be of type "bool"';
          {
            enable_dynamic_field_update: converted,
          }
        ),
        with_include_deleted_records(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"include_deleted_records" expected to be of type "bool"';
          {
            include_deleted_records: converted,
          }
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      sapo_data:: {
        local block = self,
        new(object_path):: (
          {}
          + block.with_object_path(object_path)
        ),
        with_object_path(value):: (
          local converted = value;
          assert std.isString(converted) : '"object_path" expected to be of type "string"';
          {
            object_path: converted,
          }
        ),
        pagination_config:: {
          local block = self,
          new(max_page_size):: (
            {}
            + block.with_max_page_size(max_page_size)
          ),
          with_max_page_size(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_page_size" expected to be of type "number"';
            {
              max_page_size: converted,
            }
          ),
        },
        parallelism_config:: {
          local block = self,
          new(max_page_size):: (
            {}
            + block.with_max_page_size(max_page_size)
          ),
          with_max_page_size(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_page_size" expected to be of type "number"';
            {
              max_page_size: converted,
            }
          ),
        },
        with_pagination_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            pagination_config: value,
          }
        ),
        with_parallelism_config(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parallelism_config: value,
          }
        ),
        with_pagination_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            pagination_config+: converted,
          }
        ),
        with_parallelism_config_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parallelism_config+: converted,
          }
        ),
      },
      service_now:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      singular:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      slack:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      trendmicro:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      veeva:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_document_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"document_type" expected to be of type "string"';
          {
            document_type: converted,
          }
        ),
        with_include_all_versions(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"include_all_versions" expected to be of type "bool"';
          {
            include_all_versions: converted,
          }
        ),
        with_include_renditions(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"include_renditions" expected to be of type "bool"';
          {
            include_renditions: converted,
          }
        ),
        with_include_source_files(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"include_source_files" expected to be of type "bool"';
          {
            include_source_files: converted,
          }
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      zendesk:: {
        local block = self,
        new(object):: (
          {}
          + block.with_object(object)
        ),
        with_object(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      with_amplitude(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          amplitude: value,
        }
      ),
      with_custom_connector(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_connector: value,
        }
      ),
      with_datadog(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          datadog: value,
        }
      ),
      with_dynatrace(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dynatrace: value,
        }
      ),
      with_google_analytics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          google_analytics: value,
        }
      ),
      with_infor_nexus(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          infor_nexus: value,
        }
      ),
      with_marketo(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          marketo: value,
        }
      ),
      with_s3(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3: value,
        }
      ),
      with_salesforce(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          salesforce: value,
        }
      ),
      with_sapo_data(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sapo_data: value,
        }
      ),
      with_service_now(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          service_now: value,
        }
      ),
      with_singular(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          singular: value,
        }
      ),
      with_slack(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          slack: value,
        }
      ),
      with_trendmicro(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          trendmicro: value,
        }
      ),
      with_veeva(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          veeva: value,
        }
      ),
      with_zendesk(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          zendesk: value,
        }
      ),
      with_amplitude_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          amplitude+: converted,
        }
      ),
      with_custom_connector_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_connector+: converted,
        }
      ),
      with_datadog_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          datadog+: converted,
        }
      ),
      with_dynatrace_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dynatrace+: converted,
        }
      ),
      with_google_analytics_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          google_analytics+: converted,
        }
      ),
      with_infor_nexus_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          infor_nexus+: converted,
        }
      ),
      with_marketo_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          marketo+: converted,
        }
      ),
      with_s3_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3+: converted,
        }
      ),
      with_salesforce_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          salesforce+: converted,
        }
      ),
      with_sapo_data_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sapo_data+: converted,
        }
      ),
      with_service_now_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          service_now+: converted,
        }
      ),
      with_singular_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          singular+: converted,
        }
      ),
      with_slack_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          slack+: converted,
        }
      ),
      with_trendmicro_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          trendmicro+: converted,
        }
      ),
      with_veeva_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          veeva+: converted,
        }
      ),
      with_zendesk_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          zendesk+: converted,
        }
      ),
    },
    with_incremental_pull_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        incremental_pull_config: value,
      }
    ),
    with_source_connector_properties(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_connector_properties: value,
      }
    ),
    with_incremental_pull_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        incremental_pull_config+: converted,
      }
    ),
    with_source_connector_properties_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_connector_properties+: converted,
      }
    ),
  },
  task:: {
    local block = self,
    new(task_type):: (
      {}
      + block.with_task_type(task_type)
    ),
    with_destination_field(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_field" expected to be of type "string"';
      {
        destination_field: converted,
      }
    ),
    with_source_fields(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"source_fields" expected to be of type "list"';
      {
        source_fields: converted,
      }
    ),
    with_source_fields_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"source_fields" expected to be of type "list"';
      {
        source_fields+: converted,
      }
    ),
    with_task_properties(value):: (
      local converted = value;
      assert std.isObject(converted) : '"task_properties" expected to be of type "map"';
      {
        task_properties: converted,
      }
    ),
    with_task_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"task_type" expected to be of type "string"';
      {
        task_type: converted,
      }
    ),
    connector_operator:: {
      local block = self,
      new():: (
        {}
      ),
      with_amplitude(value):: (
        local converted = value;
        assert std.isString(converted) : '"amplitude" expected to be of type "string"';
        {
          amplitude: converted,
        }
      ),
      with_custom_connector(value):: (
        local converted = value;
        assert std.isString(converted) : '"custom_connector" expected to be of type "string"';
        {
          custom_connector: converted,
        }
      ),
      with_datadog(value):: (
        local converted = value;
        assert std.isString(converted) : '"datadog" expected to be of type "string"';
        {
          datadog: converted,
        }
      ),
      with_dynatrace(value):: (
        local converted = value;
        assert std.isString(converted) : '"dynatrace" expected to be of type "string"';
        {
          dynatrace: converted,
        }
      ),
      with_google_analytics(value):: (
        local converted = value;
        assert std.isString(converted) : '"google_analytics" expected to be of type "string"';
        {
          google_analytics: converted,
        }
      ),
      with_infor_nexus(value):: (
        local converted = value;
        assert std.isString(converted) : '"infor_nexus" expected to be of type "string"';
        {
          infor_nexus: converted,
        }
      ),
      with_marketo(value):: (
        local converted = value;
        assert std.isString(converted) : '"marketo" expected to be of type "string"';
        {
          marketo: converted,
        }
      ),
      with_s3(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3" expected to be of type "string"';
        {
          s3: converted,
        }
      ),
      with_salesforce(value):: (
        local converted = value;
        assert std.isString(converted) : '"salesforce" expected to be of type "string"';
        {
          salesforce: converted,
        }
      ),
      with_sapo_data(value):: (
        local converted = value;
        assert std.isString(converted) : '"sapo_data" expected to be of type "string"';
        {
          sapo_data: converted,
        }
      ),
      with_service_now(value):: (
        local converted = value;
        assert std.isString(converted) : '"service_now" expected to be of type "string"';
        {
          service_now: converted,
        }
      ),
      with_singular(value):: (
        local converted = value;
        assert std.isString(converted) : '"singular" expected to be of type "string"';
        {
          singular: converted,
        }
      ),
      with_slack(value):: (
        local converted = value;
        assert std.isString(converted) : '"slack" expected to be of type "string"';
        {
          slack: converted,
        }
      ),
      with_trendmicro(value):: (
        local converted = value;
        assert std.isString(converted) : '"trendmicro" expected to be of type "string"';
        {
          trendmicro: converted,
        }
      ),
      with_veeva(value):: (
        local converted = value;
        assert std.isString(converted) : '"veeva" expected to be of type "string"';
        {
          veeva: converted,
        }
      ),
      with_zendesk(value):: (
        local converted = value;
        assert std.isString(converted) : '"zendesk" expected to be of type "string"';
        {
          zendesk: converted,
        }
      ),
    },
    with_connector_operator(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connector_operator: value,
      }
    ),
    with_connector_operator_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connector_operator+: converted,
      }
    ),
  },
  trigger_config:: {
    local block = self,
    new(trigger_type):: (
      {}
      + block.with_trigger_type(trigger_type)
    ),
    with_trigger_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"trigger_type" expected to be of type "string"';
      {
        trigger_type: converted,
      }
    ),
    trigger_properties:: {
      local block = self,
      new():: (
        {}
      ),
      scheduled:: {
        local block = self,
        new(schedule_expression):: (
          {}
          + block.with_schedule_expression(schedule_expression)
        ),
        with_data_pull_mode(value):: (
          local converted = value;
          assert std.isString(converted) : '"data_pull_mode" expected to be of type "string"';
          {
            data_pull_mode: converted,
          }
        ),
        with_first_execution_from(value):: (
          local converted = value;
          assert std.isString(converted) : '"first_execution_from" expected to be of type "string"';
          {
            first_execution_from: converted,
          }
        ),
        with_schedule_end_time(value):: (
          local converted = value;
          assert std.isString(converted) : '"schedule_end_time" expected to be of type "string"';
          {
            schedule_end_time: converted,
          }
        ),
        with_schedule_expression(value):: (
          local converted = value;
          assert std.isString(converted) : '"schedule_expression" expected to be of type "string"';
          {
            schedule_expression: converted,
          }
        ),
        with_schedule_offset(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"schedule_offset" expected to be of type "number"';
          {
            schedule_offset: converted,
          }
        ),
        with_schedule_start_time(value):: (
          local converted = value;
          assert std.isString(converted) : '"schedule_start_time" expected to be of type "string"';
          {
            schedule_start_time: converted,
          }
        ),
        with_timezone(value):: (
          local converted = value;
          assert std.isString(converted) : '"timezone" expected to be of type "string"';
          {
            timezone: converted,
          }
        ),
      },
      with_scheduled(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scheduled: value,
        }
      ),
      with_scheduled_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scheduled+: converted,
        }
      ),
    },
    with_trigger_properties(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        trigger_properties: value,
      }
    ),
    with_trigger_properties_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        trigger_properties+: converted,
      }
    ),
  },
  with_destination_flow_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_flow_config: value,
    }
  ),
  with_metadata_catalog_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_catalog_config: value,
    }
  ),
  with_source_flow_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_flow_config: value,
    }
  ),
  with_task(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      task: value,
    }
  ),
  with_trigger_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trigger_config: value,
    }
  ),
  with_destination_flow_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_flow_config+: converted,
    }
  ),
  with_metadata_catalog_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_catalog_config+: converted,
    }
  ),
  with_source_flow_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_flow_config+: converted,
    }
  ),
  with_task_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      task+: converted,
    }
  ),
  with_trigger_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trigger_config+: converted,
    }
  ),
}
