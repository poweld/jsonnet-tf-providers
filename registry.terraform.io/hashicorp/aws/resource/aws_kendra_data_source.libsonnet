{
  local block = self,
  new(index_id, name, type):: (
    {}
    + block.with_index_id(index_id)
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
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_data_source_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_source_id" expected to be of type "string"';
    {
      data_source_id: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  with_index_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"index_id" expected to be of type "string"';
    {
      index_id: converted,
    }
  ),
  with_language_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"language_code" expected to be of type "string"';
    {
      language_code: converted,
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
  with_schedule(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule" expected to be of type "string"';
    {
      schedule: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  with_updated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"updated_at" expected to be of type "string"';
    {
      updated_at: converted,
    }
  ),
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    s3_configuration:: {
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
      with_exclusion_patterns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_patterns" expected to be of type "set"';
        {
          exclusion_patterns: converted,
        }
      ),
      with_exclusion_patterns_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_patterns" expected to be of type "set"';
        {
          exclusion_patterns+: converted,
        }
      ),
      with_inclusion_patterns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_patterns" expected to be of type "set"';
        {
          inclusion_patterns: converted,
        }
      ),
      with_inclusion_patterns_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_patterns" expected to be of type "set"';
        {
          inclusion_patterns+: converted,
        }
      ),
      with_inclusion_prefixes(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_prefixes" expected to be of type "set"';
        {
          inclusion_prefixes: converted,
        }
      ),
      with_inclusion_prefixes_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_prefixes" expected to be of type "set"';
        {
          inclusion_prefixes+: converted,
        }
      ),
      access_control_list_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        with_key_path(value):: (
          local converted = value;
          assert std.isString(converted) : '"key_path" expected to be of type "string"';
          {
            key_path: converted,
          }
        ),
      },
      documents_metadata_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        with_s3_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_prefix" expected to be of type "string"';
          {
            s3_prefix: converted,
          }
        ),
      },
      with_access_control_list_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          access_control_list_configuration: value,
        }
      ),
      with_documents_metadata_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          documents_metadata_configuration: value,
        }
      ),
      with_access_control_list_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          access_control_list_configuration+: converted,
        }
      ),
      with_documents_metadata_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          documents_metadata_configuration+: converted,
        }
      ),
    },
    template_configuration:: {
      local block = self,
      new(template):: (
        {}
        + block.with_template(template)
      ),
      with_template(value):: (
        local converted = value;
        assert std.isString(converted) : '"template" expected to be of type "string"';
        {
          template: converted,
        }
      ),
    },
    web_crawler_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_crawl_depth(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"crawl_depth" expected to be of type "number"';
        {
          crawl_depth: converted,
        }
      ),
      with_max_content_size_per_page_in_mega_bytes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_content_size_per_page_in_mega_bytes" expected to be of type "number"';
        {
          max_content_size_per_page_in_mega_bytes: converted,
        }
      ),
      with_max_links_per_page(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_links_per_page" expected to be of type "number"';
        {
          max_links_per_page: converted,
        }
      ),
      with_max_urls_per_minute_crawl_rate(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_urls_per_minute_crawl_rate" expected to be of type "number"';
        {
          max_urls_per_minute_crawl_rate: converted,
        }
      ),
      with_url_exclusion_patterns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"url_exclusion_patterns" expected to be of type "set"';
        {
          url_exclusion_patterns: converted,
        }
      ),
      with_url_exclusion_patterns_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"url_exclusion_patterns" expected to be of type "set"';
        {
          url_exclusion_patterns+: converted,
        }
      ),
      with_url_inclusion_patterns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"url_inclusion_patterns" expected to be of type "set"';
        {
          url_inclusion_patterns: converted,
        }
      ),
      with_url_inclusion_patterns_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"url_inclusion_patterns" expected to be of type "set"';
        {
          url_inclusion_patterns+: converted,
        }
      ),
      authentication_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        basic_authentication:: {
          local block = self,
          new(credentials, host, port):: (
            {}
            + block.with_credentials(credentials)
            + block.with_host(host)
            + block.with_port(port)
          ),
          with_credentials(value):: (
            local converted = value;
            assert std.isString(converted) : '"credentials" expected to be of type "string"';
            {
              credentials: converted,
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
        with_basic_authentication(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            basic_authentication: value,
          }
        ),
        with_basic_authentication_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            basic_authentication+: converted,
          }
        ),
      },
      proxy_configuration:: {
        local block = self,
        new(host, port):: (
          {}
          + block.with_host(host)
          + block.with_port(port)
        ),
        with_credentials(value):: (
          local converted = value;
          assert std.isString(converted) : '"credentials" expected to be of type "string"';
          {
            credentials: converted,
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
      urls:: {
        local block = self,
        new():: (
          {}
        ),
        seed_url_configuration:: {
          local block = self,
          new(seed_urls):: (
            {}
            + block.with_seed_urls(seed_urls)
          ),
          with_seed_urls(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"seed_urls" expected to be of type "set"';
            {
              seed_urls: converted,
            }
          ),
          with_seed_urls_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"seed_urls" expected to be of type "set"';
            {
              seed_urls+: converted,
            }
          ),
          with_web_crawler_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"web_crawler_mode" expected to be of type "string"';
            {
              web_crawler_mode: converted,
            }
          ),
        },
        site_maps_configuration:: {
          local block = self,
          new(site_maps):: (
            {}
            + block.with_site_maps(site_maps)
          ),
          with_site_maps(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"site_maps" expected to be of type "set"';
            {
              site_maps: converted,
            }
          ),
          with_site_maps_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"site_maps" expected to be of type "set"';
            {
              site_maps+: converted,
            }
          ),
        },
        with_seed_url_configuration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            seed_url_configuration: value,
          }
        ),
        with_site_maps_configuration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            site_maps_configuration: value,
          }
        ),
        with_seed_url_configuration_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            seed_url_configuration+: converted,
          }
        ),
        with_site_maps_configuration_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            site_maps_configuration+: converted,
          }
        ),
      },
      with_authentication_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          authentication_configuration: value,
        }
      ),
      with_proxy_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          proxy_configuration: value,
        }
      ),
      with_urls(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          urls: value,
        }
      ),
      with_authentication_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          authentication_configuration+: converted,
        }
      ),
      with_proxy_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          proxy_configuration+: converted,
        }
      ),
      with_urls_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          urls+: converted,
        }
      ),
    },
    with_s3_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    with_template_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        template_configuration: value,
      }
    ),
    with_web_crawler_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        web_crawler_configuration: value,
      }
    ),
    with_s3_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    with_template_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        template_configuration+: converted,
      }
    ),
    with_web_crawler_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        web_crawler_configuration+: converted,
      }
    ),
  },
  custom_document_enrichment_configuration:: {
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
    inline_configurations:: {
      local block = self,
      new():: (
        {}
      ),
      with_document_content_deletion(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"document_content_deletion" expected to be of type "bool"';
        {
          document_content_deletion: converted,
        }
      ),
      condition:: {
        local block = self,
        new(condition_document_attribute_key, operator):: (
          {}
          + block.with_condition_document_attribute_key(condition_document_attribute_key)
          + block.with_operator(operator)
        ),
        with_condition_document_attribute_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"condition_document_attribute_key" expected to be of type "string"';
          {
            condition_document_attribute_key: converted,
          }
        ),
        with_operator(value):: (
          local converted = value;
          assert std.isString(converted) : '"operator" expected to be of type "string"';
          {
            operator: converted,
          }
        ),
        condition_on_value:: {
          local block = self,
          new():: (
            {}
          ),
          with_date_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"date_value" expected to be of type "string"';
            {
              date_value: converted,
            }
          ),
          with_long_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"long_value" expected to be of type "number"';
            {
              long_value: converted,
            }
          ),
          with_string_list_value(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"string_list_value" expected to be of type "set"';
            {
              string_list_value: converted,
            }
          ),
          with_string_list_value_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"string_list_value" expected to be of type "set"';
            {
              string_list_value+: converted,
            }
          ),
          with_string_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"string_value" expected to be of type "string"';
            {
              string_value: converted,
            }
          ),
        },
        with_condition_on_value(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition_on_value: value,
          }
        ),
        with_condition_on_value_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition_on_value+: converted,
          }
        ),
      },
      target:: {
        local block = self,
        new():: (
          {}
        ),
        with_target_document_attribute_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"target_document_attribute_key" expected to be of type "string"';
          {
            target_document_attribute_key: converted,
          }
        ),
        with_target_document_attribute_value_deletion(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"target_document_attribute_value_deletion" expected to be of type "bool"';
          {
            target_document_attribute_value_deletion: converted,
          }
        ),
        target_document_attribute_value:: {
          local block = self,
          new():: (
            {}
          ),
          with_date_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"date_value" expected to be of type "string"';
            {
              date_value: converted,
            }
          ),
          with_long_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"long_value" expected to be of type "number"';
            {
              long_value: converted,
            }
          ),
          with_string_list_value(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"string_list_value" expected to be of type "set"';
            {
              string_list_value: converted,
            }
          ),
          with_string_list_value_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"string_list_value" expected to be of type "set"';
            {
              string_list_value+: converted,
            }
          ),
          with_string_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"string_value" expected to be of type "string"';
            {
              string_value: converted,
            }
          ),
        },
        with_target_document_attribute_value(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            target_document_attribute_value: value,
          }
        ),
        with_target_document_attribute_value_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            target_document_attribute_value+: converted,
          }
        ),
      },
      with_condition(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          condition: value,
        }
      ),
      with_target(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target: value,
        }
      ),
      with_condition_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          condition+: converted,
        }
      ),
      with_target_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target+: converted,
        }
      ),
    },
    post_extraction_hook_configuration:: {
      local block = self,
      new(lambda_arn, s3_bucket):: (
        {}
        + block.with_lambda_arn(lambda_arn)
        + block.with_s3_bucket(s3_bucket)
      ),
      with_lambda_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
        {
          lambda_arn: converted,
        }
      ),
      with_s3_bucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
        {
          s3_bucket: converted,
        }
      ),
      invocation_condition:: {
        local block = self,
        new(condition_document_attribute_key, operator):: (
          {}
          + block.with_condition_document_attribute_key(condition_document_attribute_key)
          + block.with_operator(operator)
        ),
        with_condition_document_attribute_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"condition_document_attribute_key" expected to be of type "string"';
          {
            condition_document_attribute_key: converted,
          }
        ),
        with_operator(value):: (
          local converted = value;
          assert std.isString(converted) : '"operator" expected to be of type "string"';
          {
            operator: converted,
          }
        ),
        condition_on_value:: {
          local block = self,
          new():: (
            {}
          ),
          with_date_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"date_value" expected to be of type "string"';
            {
              date_value: converted,
            }
          ),
          with_long_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"long_value" expected to be of type "number"';
            {
              long_value: converted,
            }
          ),
          with_string_list_value(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"string_list_value" expected to be of type "set"';
            {
              string_list_value: converted,
            }
          ),
          with_string_list_value_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"string_list_value" expected to be of type "set"';
            {
              string_list_value+: converted,
            }
          ),
          with_string_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"string_value" expected to be of type "string"';
            {
              string_value: converted,
            }
          ),
        },
        with_condition_on_value(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition_on_value: value,
          }
        ),
        with_condition_on_value_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition_on_value+: converted,
          }
        ),
      },
      with_invocation_condition(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          invocation_condition: value,
        }
      ),
      with_invocation_condition_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          invocation_condition+: converted,
        }
      ),
    },
    pre_extraction_hook_configuration:: {
      local block = self,
      new(lambda_arn, s3_bucket):: (
        {}
        + block.with_lambda_arn(lambda_arn)
        + block.with_s3_bucket(s3_bucket)
      ),
      with_lambda_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
        {
          lambda_arn: converted,
        }
      ),
      with_s3_bucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
        {
          s3_bucket: converted,
        }
      ),
      invocation_condition:: {
        local block = self,
        new(condition_document_attribute_key, operator):: (
          {}
          + block.with_condition_document_attribute_key(condition_document_attribute_key)
          + block.with_operator(operator)
        ),
        with_condition_document_attribute_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"condition_document_attribute_key" expected to be of type "string"';
          {
            condition_document_attribute_key: converted,
          }
        ),
        with_operator(value):: (
          local converted = value;
          assert std.isString(converted) : '"operator" expected to be of type "string"';
          {
            operator: converted,
          }
        ),
        condition_on_value:: {
          local block = self,
          new():: (
            {}
          ),
          with_date_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"date_value" expected to be of type "string"';
            {
              date_value: converted,
            }
          ),
          with_long_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"long_value" expected to be of type "number"';
            {
              long_value: converted,
            }
          ),
          with_string_list_value(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"string_list_value" expected to be of type "set"';
            {
              string_list_value: converted,
            }
          ),
          with_string_list_value_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"string_list_value" expected to be of type "set"';
            {
              string_list_value+: converted,
            }
          ),
          with_string_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"string_value" expected to be of type "string"';
            {
              string_value: converted,
            }
          ),
        },
        with_condition_on_value(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition_on_value: value,
          }
        ),
        with_condition_on_value_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition_on_value+: converted,
          }
        ),
      },
      with_invocation_condition(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          invocation_condition: value,
        }
      ),
      with_invocation_condition_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          invocation_condition+: converted,
        }
      ),
    },
    with_inline_configurations(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inline_configurations: value,
      }
    ),
    with_post_extraction_hook_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        post_extraction_hook_configuration: value,
      }
    ),
    with_pre_extraction_hook_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pre_extraction_hook_configuration: value,
      }
    ),
    with_inline_configurations_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inline_configurations+: converted,
      }
    ),
    with_post_extraction_hook_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        post_extraction_hook_configuration+: converted,
      }
    ),
    with_pre_extraction_hook_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pre_extraction_hook_configuration+: converted,
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
  with_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  with_custom_document_enrichment_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_document_enrichment_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
  with_custom_document_enrichment_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_document_enrichment_configuration+: converted,
    }
  ),
}
