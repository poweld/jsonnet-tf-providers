{
  local block = self,
  new(authentication_type, name):: (
    {}
    + block.with_authentication_type(authentication_type)
    + block.with_name(name)
  ),
  with_api_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_type" expected to be of type "string"';
    {
      api_type: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_authentication_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_type" expected to be of type "string"';
    {
      authentication_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_introspection_config(value):: (
    local converted = value;
    assert std.isString(converted) : '"introspection_config" expected to be of type "string"';
    {
      introspection_config: converted,
    }
  ),
  with_merged_api_execution_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"merged_api_execution_role_arn" expected to be of type "string"';
    {
      merged_api_execution_role_arn: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_query_depth_limit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"query_depth_limit" expected to be of type "number"';
    {
      query_depth_limit: converted,
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
  with_resolver_count_limit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"resolver_count_limit" expected to be of type "number"';
    {
      resolver_count_limit: converted,
    }
  ),
  with_schema(value):: (
    local converted = value;
    assert std.isString(converted) : '"schema" expected to be of type "string"';
    {
      schema: converted,
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
  with_uris(value):: (
    local converted = value;
    assert std.isObject(converted) : '"uris" expected to be of type "map"';
    {
      uris: converted,
    }
  ),
  with_visibility(value):: (
    local converted = value;
    assert std.isString(converted) : '"visibility" expected to be of type "string"';
    {
      visibility: converted,
    }
  ),
  with_xray_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"xray_enabled" expected to be of type "bool"';
    {
      xray_enabled: converted,
    }
  ),
  additional_authentication_provider:: {
    local block = self,
    new(authentication_type):: (
      {}
      + block.with_authentication_type(authentication_type)
    ),
    with_authentication_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"authentication_type" expected to be of type "string"';
      {
        authentication_type: converted,
      }
    ),
    lambda_authorizer_config:: {
      local block = self,
      new(authorizer_uri):: (
        {}
        + block.with_authorizer_uri(authorizer_uri)
      ),
      with_authorizer_result_ttl_in_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"authorizer_result_ttl_in_seconds" expected to be of type "number"';
        {
          authorizer_result_ttl_in_seconds: converted,
        }
      ),
      with_authorizer_uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"authorizer_uri" expected to be of type "string"';
        {
          authorizer_uri: converted,
        }
      ),
      with_identity_validation_expression(value):: (
        local converted = value;
        assert std.isString(converted) : '"identity_validation_expression" expected to be of type "string"';
        {
          identity_validation_expression: converted,
        }
      ),
    },
    openid_connect_config:: {
      local block = self,
      new(issuer):: (
        {}
        + block.with_issuer(issuer)
      ),
      with_auth_ttl(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"auth_ttl" expected to be of type "number"';
        {
          auth_ttl: converted,
        }
      ),
      with_client_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"client_id" expected to be of type "string"';
        {
          client_id: converted,
        }
      ),
      with_iat_ttl(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"iat_ttl" expected to be of type "number"';
        {
          iat_ttl: converted,
        }
      ),
      with_issuer(value):: (
        local converted = value;
        assert std.isString(converted) : '"issuer" expected to be of type "string"';
        {
          issuer: converted,
        }
      ),
    },
    user_pool_config:: {
      local block = self,
      new(user_pool_id):: (
        {}
        + block.with_user_pool_id(user_pool_id)
      ),
      with_app_id_client_regex(value):: (
        local converted = value;
        assert std.isString(converted) : '"app_id_client_regex" expected to be of type "string"';
        {
          app_id_client_regex: converted,
        }
      ),
      with_aws_region(value):: (
        local converted = value;
        assert std.isString(converted) : '"aws_region" expected to be of type "string"';
        {
          aws_region: converted,
        }
      ),
      with_user_pool_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
        {
          user_pool_id: converted,
        }
      ),
    },
    with_lambda_authorizer_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_authorizer_config: value,
      }
    ),
    with_openid_connect_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        openid_connect_config: value,
      }
    ),
    with_user_pool_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_pool_config: value,
      }
    ),
    with_lambda_authorizer_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_authorizer_config+: converted,
      }
    ),
    with_openid_connect_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        openid_connect_config+: converted,
      }
    ),
    with_user_pool_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_pool_config+: converted,
      }
    ),
  },
  enhanced_metrics_config:: {
    local block = self,
    new(data_source_level_metrics_behavior, operation_level_metrics_config, resolver_level_metrics_behavior):: (
      {}
      + block.with_data_source_level_metrics_behavior(data_source_level_metrics_behavior)
      + block.with_operation_level_metrics_config(operation_level_metrics_config)
      + block.with_resolver_level_metrics_behavior(resolver_level_metrics_behavior)
    ),
    with_data_source_level_metrics_behavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_source_level_metrics_behavior" expected to be of type "string"';
      {
        data_source_level_metrics_behavior: converted,
      }
    ),
    with_operation_level_metrics_config(value):: (
      local converted = value;
      assert std.isString(converted) : '"operation_level_metrics_config" expected to be of type "string"';
      {
        operation_level_metrics_config: converted,
      }
    ),
    with_resolver_level_metrics_behavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"resolver_level_metrics_behavior" expected to be of type "string"';
      {
        resolver_level_metrics_behavior: converted,
      }
    ),
  },
  lambda_authorizer_config:: {
    local block = self,
    new(authorizer_uri):: (
      {}
      + block.with_authorizer_uri(authorizer_uri)
    ),
    with_authorizer_result_ttl_in_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"authorizer_result_ttl_in_seconds" expected to be of type "number"';
      {
        authorizer_result_ttl_in_seconds: converted,
      }
    ),
    with_authorizer_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"authorizer_uri" expected to be of type "string"';
      {
        authorizer_uri: converted,
      }
    ),
    with_identity_validation_expression(value):: (
      local converted = value;
      assert std.isString(converted) : '"identity_validation_expression" expected to be of type "string"';
      {
        identity_validation_expression: converted,
      }
    ),
  },
  log_config:: {
    local block = self,
    new(cloudwatch_logs_role_arn, field_log_level):: (
      {}
      + block.with_cloudwatch_logs_role_arn(cloudwatch_logs_role_arn)
      + block.with_field_log_level(field_log_level)
    ),
    with_cloudwatch_logs_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatch_logs_role_arn" expected to be of type "string"';
      {
        cloudwatch_logs_role_arn: converted,
      }
    ),
    with_exclude_verbose_content(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"exclude_verbose_content" expected to be of type "bool"';
      {
        exclude_verbose_content: converted,
      }
    ),
    with_field_log_level(value):: (
      local converted = value;
      assert std.isString(converted) : '"field_log_level" expected to be of type "string"';
      {
        field_log_level: converted,
      }
    ),
  },
  openid_connect_config:: {
    local block = self,
    new(issuer):: (
      {}
      + block.with_issuer(issuer)
    ),
    with_auth_ttl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"auth_ttl" expected to be of type "number"';
      {
        auth_ttl: converted,
      }
    ),
    with_client_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"client_id" expected to be of type "string"';
      {
        client_id: converted,
      }
    ),
    with_iat_ttl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"iat_ttl" expected to be of type "number"';
      {
        iat_ttl: converted,
      }
    ),
    with_issuer(value):: (
      local converted = value;
      assert std.isString(converted) : '"issuer" expected to be of type "string"';
      {
        issuer: converted,
      }
    ),
  },
  user_pool_config:: {
    local block = self,
    new(default_action, user_pool_id):: (
      {}
      + block.with_default_action(default_action)
      + block.with_user_pool_id(user_pool_id)
    ),
    with_app_id_client_regex(value):: (
      local converted = value;
      assert std.isString(converted) : '"app_id_client_regex" expected to be of type "string"';
      {
        app_id_client_regex: converted,
      }
    ),
    with_aws_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"aws_region" expected to be of type "string"';
      {
        aws_region: converted,
      }
    ),
    with_default_action(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_action" expected to be of type "string"';
      {
        default_action: converted,
      }
    ),
    with_user_pool_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
      {
        user_pool_id: converted,
      }
    ),
  },
  with_additional_authentication_provider(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      additional_authentication_provider: value,
    }
  ),
  with_enhanced_metrics_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enhanced_metrics_config: value,
    }
  ),
  with_lambda_authorizer_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_authorizer_config: value,
    }
  ),
  with_log_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_config: value,
    }
  ),
  with_openid_connect_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      openid_connect_config: value,
    }
  ),
  with_user_pool_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_pool_config: value,
    }
  ),
  with_additional_authentication_provider_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      additional_authentication_provider+: converted,
    }
  ),
  with_enhanced_metrics_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enhanced_metrics_config+: converted,
    }
  ),
  with_lambda_authorizer_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_authorizer_config+: converted,
    }
  ),
  with_log_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_config+: converted,
    }
  ),
  with_openid_connect_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      openid_connect_config+: converted,
    }
  ),
  with_user_pool_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_pool_config+: converted,
    }
  ),
}
