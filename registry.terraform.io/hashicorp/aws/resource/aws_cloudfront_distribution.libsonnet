{
  local block = self,
  new(enabled):: (
    {}
    + block.with_enabled(enabled)
  ),
  with_aliases(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aliases" expected to be of type "set"';
    {
      aliases: converted,
    }
  ),
  with_aliases_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aliases" expected to be of type "set"';
    {
      aliases+: converted,
    }
  ),
  with_anycast_ip_list_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"anycast_ip_list_id" expected to be of type "string"';
    {
      anycast_ip_list_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_caller_reference(value):: (
    local converted = value;
    assert std.isString(converted) : '"caller_reference" expected to be of type "string"';
    {
      caller_reference: converted,
    }
  ),
  with_comment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  with_continuous_deployment_policy_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"continuous_deployment_policy_id" expected to be of type "string"';
    {
      continuous_deployment_policy_id: converted,
    }
  ),
  with_default_root_object(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_root_object" expected to be of type "string"';
    {
      default_root_object: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_etag(value):: (
    local converted = value;
    assert std.isString(converted) : '"etag" expected to be of type "string"';
    {
      etag: converted,
    }
  ),
  with_hosted_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"hosted_zone_id" expected to be of type "string"';
    {
      hosted_zone_id: converted,
    }
  ),
  with_http_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_version" expected to be of type "string"';
    {
      http_version: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_in_progress_validation_batches(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"in_progress_validation_batches" expected to be of type "number"';
    {
      in_progress_validation_batches: converted,
    }
  ),
  with_is_ipv6_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_ipv6_enabled" expected to be of type "bool"';
    {
      is_ipv6_enabled: converted,
    }
  ),
  with_last_modified_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_time" expected to be of type "string"';
    {
      last_modified_time: converted,
    }
  ),
  with_price_class(value):: (
    local converted = value;
    assert std.isString(converted) : '"price_class" expected to be of type "string"';
    {
      price_class: converted,
    }
  ),
  with_retain_on_delete(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"retain_on_delete" expected to be of type "bool"';
    {
      retain_on_delete: converted,
    }
  ),
  with_staging(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"staging" expected to be of type "bool"';
    {
      staging: converted,
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
  with_trusted_key_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"trusted_key_groups" expected to be of type "list"';
    {
      trusted_key_groups: converted,
    }
  ),
  with_trusted_key_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"trusted_key_groups" expected to be of type "list"';
    {
      trusted_key_groups+: converted,
    }
  ),
  with_trusted_signers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"trusted_signers" expected to be of type "list"';
    {
      trusted_signers: converted,
    }
  ),
  with_trusted_signers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"trusted_signers" expected to be of type "list"';
    {
      trusted_signers+: converted,
    }
  ),
  with_wait_for_deployment(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"wait_for_deployment" expected to be of type "bool"';
    {
      wait_for_deployment: converted,
    }
  ),
  with_web_acl_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"web_acl_id" expected to be of type "string"';
    {
      web_acl_id: converted,
    }
  ),
  custom_error_response:: {
    local block = self,
    new(error_code):: (
      {}
      + block.with_error_code(error_code)
    ),
    with_error_caching_min_ttl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"error_caching_min_ttl" expected to be of type "number"';
      {
        error_caching_min_ttl: converted,
      }
    ),
    with_error_code(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"error_code" expected to be of type "number"';
      {
        error_code: converted,
      }
    ),
    with_response_code(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"response_code" expected to be of type "number"';
      {
        response_code: converted,
      }
    ),
    with_response_page_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"response_page_path" expected to be of type "string"';
      {
        response_page_path: converted,
      }
    ),
  },
  default_cache_behavior:: {
    local block = self,
    new(allowed_methods, cached_methods, target_origin_id, viewer_protocol_policy):: (
      {}
      + block.with_allowed_methods(allowed_methods)
      + block.with_cached_methods(cached_methods)
      + block.with_target_origin_id(target_origin_id)
      + block.with_viewer_protocol_policy(viewer_protocol_policy)
    ),
    with_allowed_methods(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_methods" expected to be of type "set"';
      {
        allowed_methods: converted,
      }
    ),
    with_allowed_methods_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_methods" expected to be of type "set"';
      {
        allowed_methods+: converted,
      }
    ),
    with_cache_policy_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"cache_policy_id" expected to be of type "string"';
      {
        cache_policy_id: converted,
      }
    ),
    with_cached_methods(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cached_methods" expected to be of type "set"';
      {
        cached_methods: converted,
      }
    ),
    with_cached_methods_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cached_methods" expected to be of type "set"';
      {
        cached_methods+: converted,
      }
    ),
    with_compress(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"compress" expected to be of type "bool"';
      {
        compress: converted,
      }
    ),
    with_default_ttl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"default_ttl" expected to be of type "number"';
      {
        default_ttl: converted,
      }
    ),
    with_field_level_encryption_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"field_level_encryption_id" expected to be of type "string"';
      {
        field_level_encryption_id: converted,
      }
    ),
    with_max_ttl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_ttl" expected to be of type "number"';
      {
        max_ttl: converted,
      }
    ),
    with_min_ttl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_ttl" expected to be of type "number"';
      {
        min_ttl: converted,
      }
    ),
    with_origin_request_policy_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"origin_request_policy_id" expected to be of type "string"';
      {
        origin_request_policy_id: converted,
      }
    ),
    with_realtime_log_config_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"realtime_log_config_arn" expected to be of type "string"';
      {
        realtime_log_config_arn: converted,
      }
    ),
    with_response_headers_policy_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"response_headers_policy_id" expected to be of type "string"';
      {
        response_headers_policy_id: converted,
      }
    ),
    with_smooth_streaming(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"smooth_streaming" expected to be of type "bool"';
      {
        smooth_streaming: converted,
      }
    ),
    with_target_origin_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_origin_id" expected to be of type "string"';
      {
        target_origin_id: converted,
      }
    ),
    with_trusted_key_groups(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"trusted_key_groups" expected to be of type "list"';
      {
        trusted_key_groups: converted,
      }
    ),
    with_trusted_key_groups_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"trusted_key_groups" expected to be of type "list"';
      {
        trusted_key_groups+: converted,
      }
    ),
    with_trusted_signers(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"trusted_signers" expected to be of type "list"';
      {
        trusted_signers: converted,
      }
    ),
    with_trusted_signers_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"trusted_signers" expected to be of type "list"';
      {
        trusted_signers+: converted,
      }
    ),
    with_viewer_protocol_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"viewer_protocol_policy" expected to be of type "string"';
      {
        viewer_protocol_policy: converted,
      }
    ),
    forwarded_values:: {
      local block = self,
      new(query_string):: (
        {}
        + block.with_query_string(query_string)
      ),
      with_headers(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"headers" expected to be of type "set"';
        {
          headers: converted,
        }
      ),
      with_headers_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"headers" expected to be of type "set"';
        {
          headers+: converted,
        }
      ),
      with_query_string(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"query_string" expected to be of type "bool"';
        {
          query_string: converted,
        }
      ),
      with_query_string_cache_keys(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"query_string_cache_keys" expected to be of type "list"';
        {
          query_string_cache_keys: converted,
        }
      ),
      with_query_string_cache_keys_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"query_string_cache_keys" expected to be of type "list"';
        {
          query_string_cache_keys+: converted,
        }
      ),
      cookies:: {
        local block = self,
        new(forward):: (
          {}
          + block.with_forward(forward)
        ),
        with_forward(value):: (
          local converted = value;
          assert std.isString(converted) : '"forward" expected to be of type "string"';
          {
            forward: converted,
          }
        ),
        with_whitelisted_names(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"whitelisted_names" expected to be of type "set"';
          {
            whitelisted_names: converted,
          }
        ),
        with_whitelisted_names_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"whitelisted_names" expected to be of type "set"';
          {
            whitelisted_names+: converted,
          }
        ),
      },
      with_cookies(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cookies: value,
        }
      ),
      with_cookies_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cookies+: converted,
        }
      ),
    },
    function_association:: {
      local block = self,
      new(event_type, function_arn):: (
        {}
        + block.with_event_type(event_type)
        + block.with_function_arn(function_arn)
      ),
      with_event_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"event_type" expected to be of type "string"';
        {
          event_type: converted,
        }
      ),
      with_function_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"function_arn" expected to be of type "string"';
        {
          function_arn: converted,
        }
      ),
    },
    grpc_config:: {
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
    lambda_function_association:: {
      local block = self,
      new(event_type, lambda_arn):: (
        {}
        + block.with_event_type(event_type)
        + block.with_lambda_arn(lambda_arn)
      ),
      with_event_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"event_type" expected to be of type "string"';
        {
          event_type: converted,
        }
      ),
      with_include_body(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"include_body" expected to be of type "bool"';
        {
          include_body: converted,
        }
      ),
      with_lambda_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
        {
          lambda_arn: converted,
        }
      ),
    },
    with_forwarded_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_values: value,
      }
    ),
    with_function_association(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        function_association: value,
      }
    ),
    with_grpc_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grpc_config: value,
      }
    ),
    with_lambda_function_association(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_association: value,
      }
    ),
    with_forwarded_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_values+: converted,
      }
    ),
    with_function_association_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        function_association+: converted,
      }
    ),
    with_grpc_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grpc_config+: converted,
      }
    ),
    with_lambda_function_association_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_association+: converted,
      }
    ),
  },
  logging_config:: {
    local block = self,
    new(bucket):: (
      {}
      + block.with_bucket(bucket)
    ),
    with_bucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket" expected to be of type "string"';
      {
        bucket: converted,
      }
    ),
    with_include_cookies(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_cookies" expected to be of type "bool"';
      {
        include_cookies: converted,
      }
    ),
    with_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
  },
  ordered_cache_behavior:: {
    local block = self,
    new(allowed_methods, cached_methods, path_pattern, target_origin_id, viewer_protocol_policy):: (
      {}
      + block.with_allowed_methods(allowed_methods)
      + block.with_cached_methods(cached_methods)
      + block.with_path_pattern(path_pattern)
      + block.with_target_origin_id(target_origin_id)
      + block.with_viewer_protocol_policy(viewer_protocol_policy)
    ),
    with_allowed_methods(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_methods" expected to be of type "set"';
      {
        allowed_methods: converted,
      }
    ),
    with_allowed_methods_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_methods" expected to be of type "set"';
      {
        allowed_methods+: converted,
      }
    ),
    with_cache_policy_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"cache_policy_id" expected to be of type "string"';
      {
        cache_policy_id: converted,
      }
    ),
    with_cached_methods(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cached_methods" expected to be of type "set"';
      {
        cached_methods: converted,
      }
    ),
    with_cached_methods_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cached_methods" expected to be of type "set"';
      {
        cached_methods+: converted,
      }
    ),
    with_compress(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"compress" expected to be of type "bool"';
      {
        compress: converted,
      }
    ),
    with_default_ttl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"default_ttl" expected to be of type "number"';
      {
        default_ttl: converted,
      }
    ),
    with_field_level_encryption_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"field_level_encryption_id" expected to be of type "string"';
      {
        field_level_encryption_id: converted,
      }
    ),
    with_max_ttl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_ttl" expected to be of type "number"';
      {
        max_ttl: converted,
      }
    ),
    with_min_ttl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_ttl" expected to be of type "number"';
      {
        min_ttl: converted,
      }
    ),
    with_origin_request_policy_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"origin_request_policy_id" expected to be of type "string"';
      {
        origin_request_policy_id: converted,
      }
    ),
    with_path_pattern(value):: (
      local converted = value;
      assert std.isString(converted) : '"path_pattern" expected to be of type "string"';
      {
        path_pattern: converted,
      }
    ),
    with_realtime_log_config_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"realtime_log_config_arn" expected to be of type "string"';
      {
        realtime_log_config_arn: converted,
      }
    ),
    with_response_headers_policy_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"response_headers_policy_id" expected to be of type "string"';
      {
        response_headers_policy_id: converted,
      }
    ),
    with_smooth_streaming(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"smooth_streaming" expected to be of type "bool"';
      {
        smooth_streaming: converted,
      }
    ),
    with_target_origin_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_origin_id" expected to be of type "string"';
      {
        target_origin_id: converted,
      }
    ),
    with_trusted_key_groups(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"trusted_key_groups" expected to be of type "list"';
      {
        trusted_key_groups: converted,
      }
    ),
    with_trusted_key_groups_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"trusted_key_groups" expected to be of type "list"';
      {
        trusted_key_groups+: converted,
      }
    ),
    with_trusted_signers(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"trusted_signers" expected to be of type "list"';
      {
        trusted_signers: converted,
      }
    ),
    with_trusted_signers_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"trusted_signers" expected to be of type "list"';
      {
        trusted_signers+: converted,
      }
    ),
    with_viewer_protocol_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"viewer_protocol_policy" expected to be of type "string"';
      {
        viewer_protocol_policy: converted,
      }
    ),
    forwarded_values:: {
      local block = self,
      new(query_string):: (
        {}
        + block.with_query_string(query_string)
      ),
      with_headers(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"headers" expected to be of type "set"';
        {
          headers: converted,
        }
      ),
      with_headers_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"headers" expected to be of type "set"';
        {
          headers+: converted,
        }
      ),
      with_query_string(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"query_string" expected to be of type "bool"';
        {
          query_string: converted,
        }
      ),
      with_query_string_cache_keys(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"query_string_cache_keys" expected to be of type "list"';
        {
          query_string_cache_keys: converted,
        }
      ),
      with_query_string_cache_keys_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"query_string_cache_keys" expected to be of type "list"';
        {
          query_string_cache_keys+: converted,
        }
      ),
      cookies:: {
        local block = self,
        new(forward):: (
          {}
          + block.with_forward(forward)
        ),
        with_forward(value):: (
          local converted = value;
          assert std.isString(converted) : '"forward" expected to be of type "string"';
          {
            forward: converted,
          }
        ),
        with_whitelisted_names(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"whitelisted_names" expected to be of type "set"';
          {
            whitelisted_names: converted,
          }
        ),
        with_whitelisted_names_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"whitelisted_names" expected to be of type "set"';
          {
            whitelisted_names+: converted,
          }
        ),
      },
      with_cookies(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cookies: value,
        }
      ),
      with_cookies_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cookies+: converted,
        }
      ),
    },
    function_association:: {
      local block = self,
      new(event_type, function_arn):: (
        {}
        + block.with_event_type(event_type)
        + block.with_function_arn(function_arn)
      ),
      with_event_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"event_type" expected to be of type "string"';
        {
          event_type: converted,
        }
      ),
      with_function_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"function_arn" expected to be of type "string"';
        {
          function_arn: converted,
        }
      ),
    },
    grpc_config:: {
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
    lambda_function_association:: {
      local block = self,
      new(event_type, lambda_arn):: (
        {}
        + block.with_event_type(event_type)
        + block.with_lambda_arn(lambda_arn)
      ),
      with_event_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"event_type" expected to be of type "string"';
        {
          event_type: converted,
        }
      ),
      with_include_body(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"include_body" expected to be of type "bool"';
        {
          include_body: converted,
        }
      ),
      with_lambda_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
        {
          lambda_arn: converted,
        }
      ),
    },
    with_forwarded_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_values: value,
      }
    ),
    with_function_association(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        function_association: value,
      }
    ),
    with_grpc_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grpc_config: value,
      }
    ),
    with_lambda_function_association(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_association: value,
      }
    ),
    with_forwarded_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_values+: converted,
      }
    ),
    with_function_association_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        function_association+: converted,
      }
    ),
    with_grpc_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grpc_config+: converted,
      }
    ),
    with_lambda_function_association_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_association+: converted,
      }
    ),
  },
  origin:: {
    local block = self,
    new(domain_name, origin_id):: (
      {}
      + block.with_domain_name(domain_name)
      + block.with_origin_id(origin_id)
    ),
    with_connection_attempts(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"connection_attempts" expected to be of type "number"';
      {
        connection_attempts: converted,
      }
    ),
    with_connection_timeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"connection_timeout" expected to be of type "number"';
      {
        connection_timeout: converted,
      }
    ),
    with_domain_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_name" expected to be of type "string"';
      {
        domain_name: converted,
      }
    ),
    with_origin_access_control_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"origin_access_control_id" expected to be of type "string"';
      {
        origin_access_control_id: converted,
      }
    ),
    with_origin_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"origin_id" expected to be of type "string"';
      {
        origin_id: converted,
      }
    ),
    with_origin_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"origin_path" expected to be of type "string"';
      {
        origin_path: converted,
      }
    ),
    custom_header:: {
      local block = self,
      new(name, value):: (
        {}
        + block.with_name(name)
        + block.with_value(value)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    custom_origin_config:: {
      local block = self,
      new(http_port, https_port, origin_protocol_policy, origin_ssl_protocols):: (
        {}
        + block.with_http_port(http_port)
        + block.with_https_port(https_port)
        + block.with_origin_protocol_policy(origin_protocol_policy)
        + block.with_origin_ssl_protocols(origin_ssl_protocols)
      ),
      with_http_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"http_port" expected to be of type "number"';
        {
          http_port: converted,
        }
      ),
      with_https_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"https_port" expected to be of type "number"';
        {
          https_port: converted,
        }
      ),
      with_origin_keepalive_timeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"origin_keepalive_timeout" expected to be of type "number"';
        {
          origin_keepalive_timeout: converted,
        }
      ),
      with_origin_protocol_policy(value):: (
        local converted = value;
        assert std.isString(converted) : '"origin_protocol_policy" expected to be of type "string"';
        {
          origin_protocol_policy: converted,
        }
      ),
      with_origin_read_timeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"origin_read_timeout" expected to be of type "number"';
        {
          origin_read_timeout: converted,
        }
      ),
      with_origin_ssl_protocols(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"origin_ssl_protocols" expected to be of type "set"';
        {
          origin_ssl_protocols: converted,
        }
      ),
      with_origin_ssl_protocols_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"origin_ssl_protocols" expected to be of type "set"';
        {
          origin_ssl_protocols+: converted,
        }
      ),
    },
    origin_shield:: {
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
      with_origin_shield_region(value):: (
        local converted = value;
        assert std.isString(converted) : '"origin_shield_region" expected to be of type "string"';
        {
          origin_shield_region: converted,
        }
      ),
    },
    s3_origin_config:: {
      local block = self,
      new(origin_access_identity):: (
        {}
        + block.with_origin_access_identity(origin_access_identity)
      ),
      with_origin_access_identity(value):: (
        local converted = value;
        assert std.isString(converted) : '"origin_access_identity" expected to be of type "string"';
        {
          origin_access_identity: converted,
        }
      ),
    },
    vpc_origin_config:: {
      local block = self,
      new(vpc_origin_id):: (
        {}
        + block.with_vpc_origin_id(vpc_origin_id)
      ),
      with_origin_keepalive_timeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"origin_keepalive_timeout" expected to be of type "number"';
        {
          origin_keepalive_timeout: converted,
        }
      ),
      with_origin_read_timeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"origin_read_timeout" expected to be of type "number"';
        {
          origin_read_timeout: converted,
        }
      ),
      with_vpc_origin_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"vpc_origin_id" expected to be of type "string"';
        {
          vpc_origin_id: converted,
        }
      ),
    },
    with_custom_header(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_header: value,
      }
    ),
    with_custom_origin_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_origin_config: value,
      }
    ),
    with_origin_shield(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        origin_shield: value,
      }
    ),
    with_s3_origin_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_origin_config: value,
      }
    ),
    with_vpc_origin_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_origin_config: value,
      }
    ),
    with_custom_header_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_header+: converted,
      }
    ),
    with_custom_origin_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_origin_config+: converted,
      }
    ),
    with_origin_shield_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        origin_shield+: converted,
      }
    ),
    with_s3_origin_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_origin_config+: converted,
      }
    ),
    with_vpc_origin_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_origin_config+: converted,
      }
    ),
  },
  origin_group:: {
    local block = self,
    new(origin_id):: (
      {}
      + block.with_origin_id(origin_id)
    ),
    with_origin_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"origin_id" expected to be of type "string"';
      {
        origin_id: converted,
      }
    ),
    failover_criteria:: {
      local block = self,
      new(status_codes):: (
        {}
        + block.with_status_codes(status_codes)
      ),
      with_status_codes(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"status_codes" expected to be of type "set"';
        {
          status_codes: converted,
        }
      ),
      with_status_codes_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"status_codes" expected to be of type "set"';
        {
          status_codes+: converted,
        }
      ),
    },
    member:: {
      local block = self,
      new(origin_id):: (
        {}
        + block.with_origin_id(origin_id)
      ),
      with_origin_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"origin_id" expected to be of type "string"';
        {
          origin_id: converted,
        }
      ),
    },
    with_failover_criteria(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failover_criteria: value,
      }
    ),
    with_member(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        member: value,
      }
    ),
    with_failover_criteria_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failover_criteria+: converted,
      }
    ),
    with_member_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        member+: converted,
      }
    ),
  },
  restrictions:: {
    local block = self,
    new():: (
      {}
    ),
    geo_restriction:: {
      local block = self,
      new(restriction_type):: (
        {}
        + block.with_restriction_type(restriction_type)
      ),
      with_locations(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"locations" expected to be of type "set"';
        {
          locations: converted,
        }
      ),
      with_locations_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"locations" expected to be of type "set"';
        {
          locations+: converted,
        }
      ),
      with_restriction_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"restriction_type" expected to be of type "string"';
        {
          restriction_type: converted,
        }
      ),
    },
    with_geo_restriction(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geo_restriction: value,
      }
    ),
    with_geo_restriction_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geo_restriction+: converted,
      }
    ),
  },
  viewer_certificate:: {
    local block = self,
    new():: (
      {}
    ),
    with_acm_certificate_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"acm_certificate_arn" expected to be of type "string"';
      {
        acm_certificate_arn: converted,
      }
    ),
    with_cloudfront_default_certificate(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"cloudfront_default_certificate" expected to be of type "bool"';
      {
        cloudfront_default_certificate: converted,
      }
    ),
    with_iam_certificate_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"iam_certificate_id" expected to be of type "string"';
      {
        iam_certificate_id: converted,
      }
    ),
    with_minimum_protocol_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"minimum_protocol_version" expected to be of type "string"';
      {
        minimum_protocol_version: converted,
      }
    ),
    with_ssl_support_method(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssl_support_method" expected to be of type "string"';
      {
        ssl_support_method: converted,
      }
    ),
  },
  with_custom_error_response(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_error_response: value,
    }
  ),
  with_default_cache_behavior(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_cache_behavior: value,
    }
  ),
  with_logging_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_config: value,
    }
  ),
  with_ordered_cache_behavior(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ordered_cache_behavior: value,
    }
  ),
  with_origin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      origin: value,
    }
  ),
  with_origin_group(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      origin_group: value,
    }
  ),
  with_restrictions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      restrictions: value,
    }
  ),
  with_viewer_certificate(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      viewer_certificate: value,
    }
  ),
  with_custom_error_response_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_error_response+: converted,
    }
  ),
  with_default_cache_behavior_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_cache_behavior+: converted,
    }
  ),
  with_logging_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_config+: converted,
    }
  ),
  with_ordered_cache_behavior_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ordered_cache_behavior+: converted,
    }
  ),
  with_origin_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      origin+: converted,
    }
  ),
  with_origin_group_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      origin_group+: converted,
    }
  ),
  with_restrictions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      restrictions+: converted,
    }
  ),
  with_viewer_certificate_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      viewer_certificate+: converted,
    }
  ),
}
