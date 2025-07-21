{
  local block = self,
  new():: (
    {}
  ),
  with_acceleration_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"acceleration_status" expected to be of type "string"';
    {
      acceleration_status: converted,
    }
  ),
  with_acl(value):: (
    local converted = value;
    assert std.isString(converted) : '"acl" expected to be of type "string"';
    {
      acl: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  with_bucket_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_domain_name" expected to be of type "string"';
    {
      bucket_domain_name: converted,
    }
  ),
  with_bucket_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
    {
      bucket_prefix: converted,
    }
  ),
  with_bucket_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_region" expected to be of type "string"';
    {
      bucket_region: converted,
    }
  ),
  with_bucket_regional_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_regional_domain_name" expected to be of type "string"';
    {
      bucket_regional_domain_name: converted,
    }
  ),
  with_force_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
    }
  ),
  with_hosted_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"hosted_zone_id" expected to be of type "string"';
    {
      hosted_zone_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_object_lock_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"object_lock_enabled" expected to be of type "bool"';
    {
      object_lock_enabled: converted,
    }
  ),
  with_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
  with_request_payer(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_payer" expected to be of type "string"';
    {
      request_payer: converted,
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
  with_website_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"website_domain" expected to be of type "string"';
    {
      website_domain: converted,
    }
  ),
  with_website_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"website_endpoint" expected to be of type "string"';
    {
      website_endpoint: converted,
    }
  ),
  cors_rule:: {
    local block = self,
    new(allowed_methods, allowed_origins):: (
      {}
      + block.with_allowed_methods(allowed_methods)
      + block.with_allowed_origins(allowed_origins)
    ),
    with_allowed_headers(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"allowed_headers" expected to be of type "list"';
      {
        allowed_headers: converted,
      }
    ),
    with_allowed_headers_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"allowed_headers" expected to be of type "list"';
      {
        allowed_headers+: converted,
      }
    ),
    with_allowed_methods(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"allowed_methods" expected to be of type "list"';
      {
        allowed_methods: converted,
      }
    ),
    with_allowed_methods_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"allowed_methods" expected to be of type "list"';
      {
        allowed_methods+: converted,
      }
    ),
    with_allowed_origins(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"allowed_origins" expected to be of type "list"';
      {
        allowed_origins: converted,
      }
    ),
    with_allowed_origins_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"allowed_origins" expected to be of type "list"';
      {
        allowed_origins+: converted,
      }
    ),
    with_expose_headers(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"expose_headers" expected to be of type "list"';
      {
        expose_headers: converted,
      }
    ),
    with_expose_headers_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"expose_headers" expected to be of type "list"';
      {
        expose_headers+: converted,
      }
    ),
    with_max_age_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_age_seconds" expected to be of type "number"';
      {
        max_age_seconds: converted,
      }
    ),
  },
  grant:: {
    local block = self,
    new(permissions, type):: (
      {}
      + block.with_permissions(permissions)
      + block.with_type(type)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_permissions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions" expected to be of type "set"';
      {
        permissions: converted,
      }
    ),
    with_permissions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions" expected to be of type "set"';
      {
        permissions+: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    with_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"uri" expected to be of type "string"';
      {
        uri: converted,
      }
    ),
  },
  lifecycle_rule:: {
    local block = self,
    new(enabled):: (
      {}
      + block.with_enabled(enabled)
    ),
    with_abort_incomplete_multipart_upload_days(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"abort_incomplete_multipart_upload_days" expected to be of type "number"';
      {
        abort_incomplete_multipart_upload_days: converted,
      }
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
    with_tags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tags" expected to be of type "map"';
      {
        tags: converted,
      }
    ),
    expiration:: {
      local block = self,
      new():: (
        {}
      ),
      with_date(value):: (
        local converted = value;
        assert std.isString(converted) : '"date" expected to be of type "string"';
        {
          date: converted,
        }
      ),
      with_days(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"days" expected to be of type "number"';
        {
          days: converted,
        }
      ),
      with_expired_object_delete_marker(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"expired_object_delete_marker" expected to be of type "bool"';
        {
          expired_object_delete_marker: converted,
        }
      ),
    },
    noncurrent_version_expiration:: {
      local block = self,
      new():: (
        {}
      ),
      with_days(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"days" expected to be of type "number"';
        {
          days: converted,
        }
      ),
    },
    noncurrent_version_transition:: {
      local block = self,
      new(storage_class):: (
        {}
        + block.with_storage_class(storage_class)
      ),
      with_days(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"days" expected to be of type "number"';
        {
          days: converted,
        }
      ),
      with_storage_class(value):: (
        local converted = value;
        assert std.isString(converted) : '"storage_class" expected to be of type "string"';
        {
          storage_class: converted,
        }
      ),
    },
    transition:: {
      local block = self,
      new(storage_class):: (
        {}
        + block.with_storage_class(storage_class)
      ),
      with_date(value):: (
        local converted = value;
        assert std.isString(converted) : '"date" expected to be of type "string"';
        {
          date: converted,
        }
      ),
      with_days(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"days" expected to be of type "number"';
        {
          days: converted,
        }
      ),
      with_storage_class(value):: (
        local converted = value;
        assert std.isString(converted) : '"storage_class" expected to be of type "string"';
        {
          storage_class: converted,
        }
      ),
    },
    with_expiration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        expiration: value,
      }
    ),
    with_noncurrent_version_expiration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        noncurrent_version_expiration: value,
      }
    ),
    with_noncurrent_version_transition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        noncurrent_version_transition: value,
      }
    ),
    with_transition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        transition: value,
      }
    ),
    with_expiration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        expiration+: converted,
      }
    ),
    with_noncurrent_version_expiration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        noncurrent_version_expiration+: converted,
      }
    ),
    with_noncurrent_version_transition_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        noncurrent_version_transition+: converted,
      }
    ),
    with_transition_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        transition+: converted,
      }
    ),
  },
  logging:: {
    local block = self,
    new(target_bucket):: (
      {}
      + block.with_target_bucket(target_bucket)
    ),
    with_target_bucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_bucket" expected to be of type "string"';
      {
        target_bucket: converted,
      }
    ),
    with_target_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_prefix" expected to be of type "string"';
      {
        target_prefix: converted,
      }
    ),
  },
  object_lock_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_object_lock_enabled(value):: (
      local converted = value;
      assert std.isString(converted) : '"object_lock_enabled" expected to be of type "string"';
      {
        object_lock_enabled: converted,
      }
    ),
    rule:: {
      local block = self,
      new():: (
        {}
      ),
      default_retention:: {
        local block = self,
        new(mode):: (
          {}
          + block.with_mode(mode)
        ),
        with_days(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"days" expected to be of type "number"';
          {
            days: converted,
          }
        ),
        with_mode(value):: (
          local converted = value;
          assert std.isString(converted) : '"mode" expected to be of type "string"';
          {
            mode: converted,
          }
        ),
        with_years(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"years" expected to be of type "number"';
          {
            years: converted,
          }
        ),
      },
      with_default_retention(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_retention: value,
        }
      ),
      with_default_retention_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_retention+: converted,
        }
      ),
    },
    with_rule(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule: value,
      }
    ),
    with_rule_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule+: converted,
      }
    ),
  },
  replication_configuration:: {
    local block = self,
    new(role):: (
      {}
      + block.with_role(role)
    ),
    with_role(value):: (
      local converted = value;
      assert std.isString(converted) : '"role" expected to be of type "string"';
      {
        role: converted,
      }
    ),
    rules:: {
      local block = self,
      new(status):: (
        {}
        + block.with_status(status)
      ),
      with_delete_marker_replication_status(value):: (
        local converted = value;
        assert std.isString(converted) : '"delete_marker_replication_status" expected to be of type "string"';
        {
          delete_marker_replication_status: converted,
        }
      ),
      with_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"id" expected to be of type "string"';
        {
          id: converted,
        }
      ),
      with_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      with_priority(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"priority" expected to be of type "number"';
        {
          priority: converted,
        }
      ),
      with_status(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
        }
      ),
      destination:: {
        local block = self,
        new(bucket):: (
          {}
          + block.with_bucket(bucket)
        ),
        with_account_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"account_id" expected to be of type "string"';
          {
            account_id: converted,
          }
        ),
        with_bucket(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket" expected to be of type "string"';
          {
            bucket: converted,
          }
        ),
        with_replica_kms_key_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"replica_kms_key_id" expected to be of type "string"';
          {
            replica_kms_key_id: converted,
          }
        ),
        with_storage_class(value):: (
          local converted = value;
          assert std.isString(converted) : '"storage_class" expected to be of type "string"';
          {
            storage_class: converted,
          }
        ),
        access_control_translation:: {
          local block = self,
          new(owner):: (
            {}
            + block.with_owner(owner)
          ),
          with_owner(value):: (
            local converted = value;
            assert std.isString(converted) : '"owner" expected to be of type "string"';
            {
              owner: converted,
            }
          ),
        },
        metrics:: {
          local block = self,
          new():: (
            {}
          ),
          with_minutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"minutes" expected to be of type "number"';
            {
              minutes: converted,
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
        replication_time:: {
          local block = self,
          new():: (
            {}
          ),
          with_minutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"minutes" expected to be of type "number"';
            {
              minutes: converted,
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
        with_access_control_translation(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            access_control_translation: value,
          }
        ),
        with_metrics(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metrics: value,
          }
        ),
        with_replication_time(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            replication_time: value,
          }
        ),
        with_access_control_translation_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            access_control_translation+: converted,
          }
        ),
        with_metrics_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metrics+: converted,
          }
        ),
        with_replication_time_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            replication_time+: converted,
          }
        ),
      },
      filter:: {
        local block = self,
        new():: (
          {}
        ),
        with_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"prefix" expected to be of type "string"';
          {
            prefix: converted,
          }
        ),
        with_tags(value):: (
          local converted = value;
          assert std.isObject(converted) : '"tags" expected to be of type "map"';
          {
            tags: converted,
          }
        ),
      },
      source_selection_criteria:: {
        local block = self,
        new():: (
          {}
        ),
        sse_kms_encrypted_objects:: {
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
        with_sse_kms_encrypted_objects(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            sse_kms_encrypted_objects: value,
          }
        ),
        with_sse_kms_encrypted_objects_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            sse_kms_encrypted_objects+: converted,
          }
        ),
      },
      with_destination(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination: value,
        }
      ),
      with_filter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          filter: value,
        }
      ),
      with_source_selection_criteria(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_selection_criteria: value,
        }
      ),
      with_destination_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination+: converted,
        }
      ),
      with_filter_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          filter+: converted,
        }
      ),
      with_source_selection_criteria_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_selection_criteria+: converted,
        }
      ),
    },
    with_rules(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rules: value,
      }
    ),
    with_rules_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rules+: converted,
      }
    ),
  },
  server_side_encryption_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    rule:: {
      local block = self,
      new():: (
        {}
      ),
      with_bucket_key_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"bucket_key_enabled" expected to be of type "bool"';
        {
          bucket_key_enabled: converted,
        }
      ),
      apply_server_side_encryption_by_default:: {
        local block = self,
        new(sse_algorithm):: (
          {}
          + block.with_sse_algorithm(sse_algorithm)
        ),
        with_kms_master_key_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"kms_master_key_id" expected to be of type "string"';
          {
            kms_master_key_id: converted,
          }
        ),
        with_sse_algorithm(value):: (
          local converted = value;
          assert std.isString(converted) : '"sse_algorithm" expected to be of type "string"';
          {
            sse_algorithm: converted,
          }
        ),
      },
      with_apply_server_side_encryption_by_default(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          apply_server_side_encryption_by_default: value,
        }
      ),
      with_apply_server_side_encryption_by_default_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          apply_server_side_encryption_by_default+: converted,
        }
      ),
    },
    with_rule(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule: value,
      }
    ),
    with_rule_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule+: converted,
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
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
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
  versioning:: {
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
    with_mfa_delete(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"mfa_delete" expected to be of type "bool"';
      {
        mfa_delete: converted,
      }
    ),
  },
  website:: {
    local block = self,
    new():: (
      {}
    ),
    with_error_document(value):: (
      local converted = value;
      assert std.isString(converted) : '"error_document" expected to be of type "string"';
      {
        error_document: converted,
      }
    ),
    with_index_document(value):: (
      local converted = value;
      assert std.isString(converted) : '"index_document" expected to be of type "string"';
      {
        index_document: converted,
      }
    ),
    with_redirect_all_requests_to(value):: (
      local converted = value;
      assert std.isString(converted) : '"redirect_all_requests_to" expected to be of type "string"';
      {
        redirect_all_requests_to: converted,
      }
    ),
    with_routing_rules(value):: (
      local converted = value;
      assert std.isString(converted) : '"routing_rules" expected to be of type "string"';
      {
        routing_rules: converted,
      }
    ),
  },
  with_cors_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors_rule: value,
    }
  ),
  with_grant(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      grant: value,
    }
  ),
  with_lifecycle_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lifecycle_rule: value,
    }
  ),
  with_logging(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging: value,
    }
  ),
  with_object_lock_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      object_lock_configuration: value,
    }
  ),
  with_replication_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replication_configuration: value,
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
  with_versioning(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      versioning: value,
    }
  ),
  with_website(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      website: value,
    }
  ),
  with_cors_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors_rule+: converted,
    }
  ),
  with_grant_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      grant+: converted,
    }
  ),
  with_lifecycle_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lifecycle_rule+: converted,
    }
  ),
  with_logging_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging+: converted,
    }
  ),
  with_object_lock_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      object_lock_configuration+: converted,
    }
  ),
  with_replication_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replication_configuration+: converted,
    }
  ),
  with_server_side_encryption_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption_configuration+: converted,
    }
  ),
  with_versioning_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      versioning+: converted,
    }
  ),
  with_website_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      website+: converted,
    }
  ),
}
