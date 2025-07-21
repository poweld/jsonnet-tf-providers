{
  local block = self,
  new(config_id):: (
    {}
    + block.with_config_id(config_id)
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_config_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"config_id" expected to be of type "string"';
    {
      config_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  storage_lens_configuration:: {
    local block = self,
    new(enabled):: (
      {}
      + block.with_enabled(enabled)
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    account_level:: {
      local block = self,
      new():: (
        {}
      ),
      activity_metrics:: {
        local block = self,
        new():: (
          {}
        ),
        with_enabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
      },
      advanced_cost_optimization_metrics:: {
        local block = self,
        new():: (
          {}
        ),
        with_enabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
      },
      advanced_data_protection_metrics:: {
        local block = self,
        new():: (
          {}
        ),
        with_enabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
      },
      bucket_level:: {
        local block = self,
        new():: (
          {}
        ),
        activity_metrics:: {
          local block = self,
          new():: (
            {}
          ),
          with_enabled(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
            {
              enabled: converted,
            }
          ),
        },
        advanced_cost_optimization_metrics:: {
          local block = self,
          new():: (
            {}
          ),
          with_enabled(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
            {
              enabled: converted,
            }
          ),
        },
        advanced_data_protection_metrics:: {
          local block = self,
          new():: (
            {}
          ),
          with_enabled(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
            {
              enabled: converted,
            }
          ),
        },
        detailed_status_code_metrics:: {
          local block = self,
          new():: (
            {}
          ),
          with_enabled(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
            {
              enabled: converted,
            }
          ),
        },
        prefix_level:: {
          local block = self,
          new():: (
            {}
          ),
          storage_metrics:: {
            local block = self,
            new():: (
              {}
            ),
            with_enabled(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
              {
                enabled: converted,
              }
            ),
            selection_criteria:: {
              local block = self,
              new():: (
                {}
              ),
              with_delimiter(value):: (
                local converted = value;
                assert std.isString(converted) : '"delimiter" expected to be of type "string"';
                {
                  delimiter: converted,
                }
              ),
              with_max_depth(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"max_depth" expected to be of type "number"';
                {
                  max_depth: converted,
                }
              ),
              with_min_storage_bytes_percentage(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"min_storage_bytes_percentage" expected to be of type "number"';
                {
                  min_storage_bytes_percentage: converted,
                }
              ),
            },
            with_selection_criteria(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                selection_criteria: value,
              }
            ),
            with_selection_criteria_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                selection_criteria+: converted,
              }
            ),
          },
          with_storage_metrics(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              storage_metrics: value,
            }
          ),
          with_storage_metrics_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              storage_metrics+: converted,
            }
          ),
        },
        with_activity_metrics(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            activity_metrics: value,
          }
        ),
        with_advanced_cost_optimization_metrics(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            advanced_cost_optimization_metrics: value,
          }
        ),
        with_advanced_data_protection_metrics(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            advanced_data_protection_metrics: value,
          }
        ),
        with_detailed_status_code_metrics(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            detailed_status_code_metrics: value,
          }
        ),
        with_prefix_level(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            prefix_level: value,
          }
        ),
        with_activity_metrics_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            activity_metrics+: converted,
          }
        ),
        with_advanced_cost_optimization_metrics_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            advanced_cost_optimization_metrics+: converted,
          }
        ),
        with_advanced_data_protection_metrics_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            advanced_data_protection_metrics+: converted,
          }
        ),
        with_detailed_status_code_metrics_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            detailed_status_code_metrics+: converted,
          }
        ),
        with_prefix_level_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            prefix_level+: converted,
          }
        ),
      },
      detailed_status_code_metrics:: {
        local block = self,
        new():: (
          {}
        ),
        with_enabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
      },
      with_activity_metrics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          activity_metrics: value,
        }
      ),
      with_advanced_cost_optimization_metrics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          advanced_cost_optimization_metrics: value,
        }
      ),
      with_advanced_data_protection_metrics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          advanced_data_protection_metrics: value,
        }
      ),
      with_bucket_level(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          bucket_level: value,
        }
      ),
      with_detailed_status_code_metrics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          detailed_status_code_metrics: value,
        }
      ),
      with_activity_metrics_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          activity_metrics+: converted,
        }
      ),
      with_advanced_cost_optimization_metrics_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          advanced_cost_optimization_metrics+: converted,
        }
      ),
      with_advanced_data_protection_metrics_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          advanced_data_protection_metrics+: converted,
        }
      ),
      with_bucket_level_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          bucket_level+: converted,
        }
      ),
      with_detailed_status_code_metrics_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          detailed_status_code_metrics+: converted,
        }
      ),
    },
    aws_org:: {
      local block = self,
      new(arn):: (
        {}
        + block.with_arn(arn)
      ),
      with_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"arn" expected to be of type "string"';
        {
          arn: converted,
        }
      ),
    },
    data_export:: {
      local block = self,
      new():: (
        {}
      ),
      cloud_watch_metrics:: {
        local block = self,
        new(enabled):: (
          {}
          + block.with_enabled(enabled)
        ),
        with_enabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
      },
      s3_bucket_destination:: {
        local block = self,
        new(account_id, arn, format, output_schema_version):: (
          {}
          + block.with_account_id(account_id)
          + block.with_arn(arn)
          + block.with_format(format)
          + block.with_output_schema_version(output_schema_version)
        ),
        with_account_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"account_id" expected to be of type "string"';
          {
            account_id: converted,
          }
        ),
        with_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"arn" expected to be of type "string"';
          {
            arn: converted,
          }
        ),
        with_format(value):: (
          local converted = value;
          assert std.isString(converted) : '"format" expected to be of type "string"';
          {
            format: converted,
          }
        ),
        with_output_schema_version(value):: (
          local converted = value;
          assert std.isString(converted) : '"output_schema_version" expected to be of type "string"';
          {
            output_schema_version: converted,
          }
        ),
        with_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"prefix" expected to be of type "string"';
          {
            prefix: converted,
          }
        ),
        encryption:: {
          local block = self,
          new():: (
            {}
          ),
          sse_kms:: {
            local block = self,
            new(key_id):: (
              {}
              + block.with_key_id(key_id)
            ),
            with_key_id(value):: (
              local converted = value;
              assert std.isString(converted) : '"key_id" expected to be of type "string"';
              {
                key_id: converted,
              }
            ),
          },
          sse_s3:: {
            local block = self,
            new():: (
              {}
            ),
          },
          with_sse_kms(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              sse_kms: value,
            }
          ),
          with_sse_s3(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              sse_s3: value,
            }
          ),
          with_sse_kms_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              sse_kms+: converted,
            }
          ),
          with_sse_s3_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              sse_s3+: converted,
            }
          ),
        },
        with_encryption(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            encryption: value,
          }
        ),
        with_encryption_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            encryption+: converted,
          }
        ),
      },
      with_cloud_watch_metrics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloud_watch_metrics: value,
        }
      ),
      with_s3_bucket_destination(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_bucket_destination: value,
        }
      ),
      with_cloud_watch_metrics_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloud_watch_metrics+: converted,
        }
      ),
      with_s3_bucket_destination_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_bucket_destination+: converted,
        }
      ),
    },
    exclude:: {
      local block = self,
      new():: (
        {}
      ),
      with_buckets(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"buckets" expected to be of type "set"';
        {
          buckets: converted,
        }
      ),
      with_buckets_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"buckets" expected to be of type "set"';
        {
          buckets+: converted,
        }
      ),
      with_regions(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
        {
          regions: converted,
        }
      ),
      with_regions_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
        {
          regions+: converted,
        }
      ),
    },
    include:: {
      local block = self,
      new():: (
        {}
      ),
      with_buckets(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"buckets" expected to be of type "set"';
        {
          buckets: converted,
        }
      ),
      with_buckets_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"buckets" expected to be of type "set"';
        {
          buckets+: converted,
        }
      ),
      with_regions(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
        {
          regions: converted,
        }
      ),
      with_regions_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
        {
          regions+: converted,
        }
      ),
    },
    with_account_level(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        account_level: value,
      }
    ),
    with_aws_org(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_org: value,
      }
    ),
    with_data_export(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_export: value,
      }
    ),
    with_exclude(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exclude: value,
      }
    ),
    with_include(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        include: value,
      }
    ),
    with_account_level_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        account_level+: converted,
      }
    ),
    with_aws_org_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_org+: converted,
      }
    ),
    with_data_export_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_export+: converted,
      }
    ),
    with_exclude_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exclude+: converted,
      }
    ),
    with_include_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        include+: converted,
      }
    ),
  },
  with_storage_lens_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_lens_configuration: value,
    }
  ),
  with_storage_lens_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_lens_configuration+: converted,
    }
  ),
}
