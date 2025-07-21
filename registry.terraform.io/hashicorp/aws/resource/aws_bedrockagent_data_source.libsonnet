{
  local block = self,
  new(knowledge_base_id, name):: (
    {}
    + block.with_knowledge_base_id(knowledge_base_id)
    + block.with_name(name)
  ),
  with_data_deletion_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_deletion_policy" expected to be of type "string"';
    {
      data_deletion_policy: converted,
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
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_knowledge_base_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"knowledge_base_id" expected to be of type "string"';
    {
      knowledge_base_id: converted,
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
  data_source_configuration:: {
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
    confluence_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      crawler_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        filter_configuration:: {
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
          pattern_object_filter:: {
            local block = self,
            new():: (
              {}
            ),
            filters:: {
              local block = self,
              new(object_type):: (
                {}
                + block.with_object_type(object_type)
              ),
              with_exclusion_filters(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_filters" expected to be of type "set"';
                {
                  exclusion_filters: converted,
                }
              ),
              with_exclusion_filters_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_filters" expected to be of type "set"';
                {
                  exclusion_filters+: converted,
                }
              ),
              with_inclusion_filters(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_filters" expected to be of type "set"';
                {
                  inclusion_filters: converted,
                }
              ),
              with_inclusion_filters_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_filters" expected to be of type "set"';
                {
                  inclusion_filters+: converted,
                }
              ),
              with_object_type(value):: (
                local converted = value;
                assert std.isString(converted) : '"object_type" expected to be of type "string"';
                {
                  object_type: converted,
                }
              ),
            },
            with_filters(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                filters: value,
              }
            ),
            with_filters_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                filters+: converted,
              }
            ),
          },
          with_pattern_object_filter(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              pattern_object_filter: value,
            }
          ),
          with_pattern_object_filter_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              pattern_object_filter+: converted,
            }
          ),
        },
        with_filter_configuration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            filter_configuration: value,
          }
        ),
        with_filter_configuration_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            filter_configuration+: converted,
          }
        ),
      },
      source_configuration:: {
        local block = self,
        new(auth_type, credentials_secret_arn, host_type, host_url):: (
          {}
          + block.with_auth_type(auth_type)
          + block.with_credentials_secret_arn(credentials_secret_arn)
          + block.with_host_type(host_type)
          + block.with_host_url(host_url)
        ),
        with_auth_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"auth_type" expected to be of type "string"';
          {
            auth_type: converted,
          }
        ),
        with_credentials_secret_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"credentials_secret_arn" expected to be of type "string"';
          {
            credentials_secret_arn: converted,
          }
        ),
        with_host_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"host_type" expected to be of type "string"';
          {
            host_type: converted,
          }
        ),
        with_host_url(value):: (
          local converted = value;
          assert std.isString(converted) : '"host_url" expected to be of type "string"';
          {
            host_url: converted,
          }
        ),
      },
      with_crawler_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          crawler_configuration: value,
        }
      ),
      with_source_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_configuration: value,
        }
      ),
      with_crawler_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          crawler_configuration+: converted,
        }
      ),
      with_source_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_configuration+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucket_arn):: (
        {}
        + block.with_bucket_arn(bucket_arn)
      ),
      with_bucket_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      with_bucket_owner_account_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_owner_account_id" expected to be of type "string"';
        {
          bucket_owner_account_id: converted,
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
    },
    salesforce_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      crawler_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        filter_configuration:: {
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
          pattern_object_filter:: {
            local block = self,
            new():: (
              {}
            ),
            filters:: {
              local block = self,
              new(object_type):: (
                {}
                + block.with_object_type(object_type)
              ),
              with_exclusion_filters(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_filters" expected to be of type "set"';
                {
                  exclusion_filters: converted,
                }
              ),
              with_exclusion_filters_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_filters" expected to be of type "set"';
                {
                  exclusion_filters+: converted,
                }
              ),
              with_inclusion_filters(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_filters" expected to be of type "set"';
                {
                  inclusion_filters: converted,
                }
              ),
              with_inclusion_filters_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_filters" expected to be of type "set"';
                {
                  inclusion_filters+: converted,
                }
              ),
              with_object_type(value):: (
                local converted = value;
                assert std.isString(converted) : '"object_type" expected to be of type "string"';
                {
                  object_type: converted,
                }
              ),
            },
            with_filters(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                filters: value,
              }
            ),
            with_filters_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                filters+: converted,
              }
            ),
          },
          with_pattern_object_filter(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              pattern_object_filter: value,
            }
          ),
          with_pattern_object_filter_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              pattern_object_filter+: converted,
            }
          ),
        },
        with_filter_configuration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            filter_configuration: value,
          }
        ),
        with_filter_configuration_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            filter_configuration+: converted,
          }
        ),
      },
      source_configuration:: {
        local block = self,
        new(auth_type, credentials_secret_arn, host_url):: (
          {}
          + block.with_auth_type(auth_type)
          + block.with_credentials_secret_arn(credentials_secret_arn)
          + block.with_host_url(host_url)
        ),
        with_auth_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"auth_type" expected to be of type "string"';
          {
            auth_type: converted,
          }
        ),
        with_credentials_secret_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"credentials_secret_arn" expected to be of type "string"';
          {
            credentials_secret_arn: converted,
          }
        ),
        with_host_url(value):: (
          local converted = value;
          assert std.isString(converted) : '"host_url" expected to be of type "string"';
          {
            host_url: converted,
          }
        ),
      },
      with_crawler_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          crawler_configuration: value,
        }
      ),
      with_source_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_configuration: value,
        }
      ),
      with_crawler_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          crawler_configuration+: converted,
        }
      ),
      with_source_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_configuration+: converted,
        }
      ),
    },
    share_point_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      crawler_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        filter_configuration:: {
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
          pattern_object_filter:: {
            local block = self,
            new():: (
              {}
            ),
            filters:: {
              local block = self,
              new(object_type):: (
                {}
                + block.with_object_type(object_type)
              ),
              with_exclusion_filters(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_filters" expected to be of type "set"';
                {
                  exclusion_filters: converted,
                }
              ),
              with_exclusion_filters_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_filters" expected to be of type "set"';
                {
                  exclusion_filters+: converted,
                }
              ),
              with_inclusion_filters(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_filters" expected to be of type "set"';
                {
                  inclusion_filters: converted,
                }
              ),
              with_inclusion_filters_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_filters" expected to be of type "set"';
                {
                  inclusion_filters+: converted,
                }
              ),
              with_object_type(value):: (
                local converted = value;
                assert std.isString(converted) : '"object_type" expected to be of type "string"';
                {
                  object_type: converted,
                }
              ),
            },
            with_filters(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                filters: value,
              }
            ),
            with_filters_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                filters+: converted,
              }
            ),
          },
          with_pattern_object_filter(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              pattern_object_filter: value,
            }
          ),
          with_pattern_object_filter_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              pattern_object_filter+: converted,
            }
          ),
        },
        with_filter_configuration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            filter_configuration: value,
          }
        ),
        with_filter_configuration_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            filter_configuration+: converted,
          }
        ),
      },
      source_configuration:: {
        local block = self,
        new(auth_type, credentials_secret_arn, domain, host_type, site_urls):: (
          {}
          + block.with_auth_type(auth_type)
          + block.with_credentials_secret_arn(credentials_secret_arn)
          + block.with_domain(domain)
          + block.with_host_type(host_type)
          + block.with_site_urls(site_urls)
        ),
        with_auth_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"auth_type" expected to be of type "string"';
          {
            auth_type: converted,
          }
        ),
        with_credentials_secret_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"credentials_secret_arn" expected to be of type "string"';
          {
            credentials_secret_arn: converted,
          }
        ),
        with_domain(value):: (
          local converted = value;
          assert std.isString(converted) : '"domain" expected to be of type "string"';
          {
            domain: converted,
          }
        ),
        with_host_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"host_type" expected to be of type "string"';
          {
            host_type: converted,
          }
        ),
        with_site_urls(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"site_urls" expected to be of type "set"';
          {
            site_urls: converted,
          }
        ),
        with_site_urls_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"site_urls" expected to be of type "set"';
          {
            site_urls+: converted,
          }
        ),
        with_tenant_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"tenant_id" expected to be of type "string"';
          {
            tenant_id: converted,
          }
        ),
      },
      with_crawler_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          crawler_configuration: value,
        }
      ),
      with_source_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_configuration: value,
        }
      ),
      with_crawler_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          crawler_configuration+: converted,
        }
      ),
      with_source_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_configuration+: converted,
        }
      ),
    },
    web_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      crawler_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        with_exclusion_filters(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_filters" expected to be of type "set"';
          {
            exclusion_filters: converted,
          }
        ),
        with_exclusion_filters_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_filters" expected to be of type "set"';
          {
            exclusion_filters+: converted,
          }
        ),
        with_inclusion_filters(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_filters" expected to be of type "set"';
          {
            inclusion_filters: converted,
          }
        ),
        with_inclusion_filters_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_filters" expected to be of type "set"';
          {
            inclusion_filters+: converted,
          }
        ),
        with_scope(value):: (
          local converted = value;
          assert std.isString(converted) : '"scope" expected to be of type "string"';
          {
            scope: converted,
          }
        ),
        with_user_agent(value):: (
          local converted = value;
          assert std.isString(converted) : '"user_agent" expected to be of type "string"';
          {
            user_agent: converted,
          }
        ),
        crawler_limits:: {
          local block = self,
          new():: (
            {}
          ),
          with_max_pages(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_pages" expected to be of type "number"';
            {
              max_pages: converted,
            }
          ),
          with_rate_limit(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"rate_limit" expected to be of type "number"';
            {
              rate_limit: converted,
            }
          ),
        },
        with_crawler_limits(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            crawler_limits: value,
          }
        ),
        with_crawler_limits_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            crawler_limits+: converted,
          }
        ),
      },
      source_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        url_configuration:: {
          local block = self,
          new():: (
            {}
          ),
          seed_urls:: {
            local block = self,
            new():: (
              {}
            ),
            with_url(value):: (
              local converted = value;
              assert std.isString(converted) : '"url" expected to be of type "string"';
              {
                url: converted,
              }
            ),
          },
          with_seed_urls(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              seed_urls: value,
            }
          ),
          with_seed_urls_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              seed_urls+: converted,
            }
          ),
        },
        with_url_configuration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            url_configuration: value,
          }
        ),
        with_url_configuration_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            url_configuration+: converted,
          }
        ),
      },
      with_crawler_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          crawler_configuration: value,
        }
      ),
      with_source_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_configuration: value,
        }
      ),
      with_crawler_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          crawler_configuration+: converted,
        }
      ),
      with_source_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_configuration+: converted,
        }
      ),
    },
    with_confluence_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confluence_configuration: value,
      }
    ),
    with_s3_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    with_salesforce_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        salesforce_configuration: value,
      }
    ),
    with_share_point_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        share_point_configuration: value,
      }
    ),
    with_web_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        web_configuration: value,
      }
    ),
    with_confluence_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confluence_configuration+: converted,
      }
    ),
    with_s3_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    with_salesforce_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        salesforce_configuration+: converted,
      }
    ),
    with_share_point_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        share_point_configuration+: converted,
      }
    ),
    with_web_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        web_configuration+: converted,
      }
    ),
  },
  server_side_encryption_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_kms_key_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
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
  },
  vector_ingestion_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    chunking_configuration:: {
      local block = self,
      new(chunking_strategy):: (
        {}
        + block.with_chunking_strategy(chunking_strategy)
      ),
      with_chunking_strategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"chunking_strategy" expected to be of type "string"';
        {
          chunking_strategy: converted,
        }
      ),
      fixed_size_chunking_configuration:: {
        local block = self,
        new(max_tokens, overlap_percentage):: (
          {}
          + block.with_max_tokens(max_tokens)
          + block.with_overlap_percentage(overlap_percentage)
        ),
        with_max_tokens(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"max_tokens" expected to be of type "number"';
          {
            max_tokens: converted,
          }
        ),
        with_overlap_percentage(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"overlap_percentage" expected to be of type "number"';
          {
            overlap_percentage: converted,
          }
        ),
      },
      hierarchical_chunking_configuration:: {
        local block = self,
        new(overlap_tokens):: (
          {}
          + block.with_overlap_tokens(overlap_tokens)
        ),
        with_overlap_tokens(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"overlap_tokens" expected to be of type "number"';
          {
            overlap_tokens: converted,
          }
        ),
        level_configuration:: {
          local block = self,
          new(max_tokens):: (
            {}
            + block.with_max_tokens(max_tokens)
          ),
          with_max_tokens(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_tokens" expected to be of type "number"';
            {
              max_tokens: converted,
            }
          ),
        },
        with_level_configuration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            level_configuration: value,
          }
        ),
        with_level_configuration_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            level_configuration+: converted,
          }
        ),
      },
      semantic_chunking_configuration:: {
        local block = self,
        new(breakpoint_percentile_threshold, buffer_size, max_token):: (
          {}
          + block.with_breakpoint_percentile_threshold(breakpoint_percentile_threshold)
          + block.with_buffer_size(buffer_size)
          + block.with_max_token(max_token)
        ),
        with_breakpoint_percentile_threshold(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"breakpoint_percentile_threshold" expected to be of type "number"';
          {
            breakpoint_percentile_threshold: converted,
          }
        ),
        with_buffer_size(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"buffer_size" expected to be of type "number"';
          {
            buffer_size: converted,
          }
        ),
        with_max_token(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"max_token" expected to be of type "number"';
          {
            max_token: converted,
          }
        ),
      },
      with_fixed_size_chunking_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          fixed_size_chunking_configuration: value,
        }
      ),
      with_hierarchical_chunking_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          hierarchical_chunking_configuration: value,
        }
      ),
      with_semantic_chunking_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          semantic_chunking_configuration: value,
        }
      ),
      with_fixed_size_chunking_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          fixed_size_chunking_configuration+: converted,
        }
      ),
      with_hierarchical_chunking_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          hierarchical_chunking_configuration+: converted,
        }
      ),
      with_semantic_chunking_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          semantic_chunking_configuration+: converted,
        }
      ),
    },
    custom_transformation_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      intermediate_storage:: {
        local block = self,
        new():: (
          {}
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
      transformation:: {
        local block = self,
        new(step_to_apply):: (
          {}
          + block.with_step_to_apply(step_to_apply)
        ),
        with_step_to_apply(value):: (
          local converted = value;
          assert std.isString(converted) : '"step_to_apply" expected to be of type "string"';
          {
            step_to_apply: converted,
          }
        ),
        transformation_function:: {
          local block = self,
          new():: (
            {}
          ),
          transformation_lambda_configuration:: {
            local block = self,
            new(lambda_arn):: (
              {}
              + block.with_lambda_arn(lambda_arn)
            ),
            with_lambda_arn(value):: (
              local converted = value;
              assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
              {
                lambda_arn: converted,
              }
            ),
          },
          with_transformation_lambda_configuration(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              transformation_lambda_configuration: value,
            }
          ),
          with_transformation_lambda_configuration_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              transformation_lambda_configuration+: converted,
            }
          ),
        },
        with_transformation_function(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            transformation_function: value,
          }
        ),
        with_transformation_function_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            transformation_function+: converted,
          }
        ),
      },
      with_intermediate_storage(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intermediate_storage: value,
        }
      ),
      with_transformation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          transformation: value,
        }
      ),
      with_intermediate_storage_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intermediate_storage+: converted,
        }
      ),
      with_transformation_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          transformation+: converted,
        }
      ),
    },
    parsing_configuration:: {
      local block = self,
      new(parsing_strategy):: (
        {}
        + block.with_parsing_strategy(parsing_strategy)
      ),
      with_parsing_strategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"parsing_strategy" expected to be of type "string"';
        {
          parsing_strategy: converted,
        }
      ),
      bedrock_foundation_model_configuration:: {
        local block = self,
        new(model_arn):: (
          {}
          + block.with_model_arn(model_arn)
        ),
        with_model_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"model_arn" expected to be of type "string"';
          {
            model_arn: converted,
          }
        ),
        parsing_prompt:: {
          local block = self,
          new(parsing_prompt_string):: (
            {}
            + block.with_parsing_prompt_string(parsing_prompt_string)
          ),
          with_parsing_prompt_string(value):: (
            local converted = value;
            assert std.isString(converted) : '"parsing_prompt_string" expected to be of type "string"';
            {
              parsing_prompt_string: converted,
            }
          ),
        },
        with_parsing_prompt(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parsing_prompt: value,
          }
        ),
        with_parsing_prompt_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parsing_prompt+: converted,
          }
        ),
      },
      with_bedrock_foundation_model_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          bedrock_foundation_model_configuration: value,
        }
      ),
      with_bedrock_foundation_model_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          bedrock_foundation_model_configuration+: converted,
        }
      ),
    },
    with_chunking_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        chunking_configuration: value,
      }
    ),
    with_custom_transformation_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_transformation_configuration: value,
      }
    ),
    with_parsing_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parsing_configuration: value,
      }
    ),
    with_chunking_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        chunking_configuration+: converted,
      }
    ),
    with_custom_transformation_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_transformation_configuration+: converted,
      }
    ),
    with_parsing_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parsing_configuration+: converted,
      }
    ),
  },
  with_data_source_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_source_configuration: value,
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
  with_vector_ingestion_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vector_ingestion_configuration: value,
    }
  ),
  with_data_source_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_source_configuration+: converted,
    }
  ),
  with_server_side_encryption_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption_configuration+: converted,
    }
  ),
  with_vector_ingestion_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vector_ingestion_configuration+: converted,
    }
  ),
}
