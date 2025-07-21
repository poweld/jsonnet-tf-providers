{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_listener_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"listener_arn" expected to be of type "string"';
    {
      listener_arn: converted,
    }
  ),
  with_priority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
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
  action:: {
    local block = self,
    new():: (
      {}
    ),
    with_order(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"order" expected to be of type "number"';
      {
        order: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    authenticate_cognito:: {
      local block = self,
      new():: (
        {}
      ),
      with_authentication_request_extra_params(value):: (
        local converted = value;
        assert std.isObject(converted) : '"authentication_request_extra_params" expected to be of type "map"';
        {
          authentication_request_extra_params: converted,
        }
      ),
      with_on_unauthenticated_request(value):: (
        local converted = value;
        assert std.isString(converted) : '"on_unauthenticated_request" expected to be of type "string"';
        {
          on_unauthenticated_request: converted,
        }
      ),
      with_scope(value):: (
        local converted = value;
        assert std.isString(converted) : '"scope" expected to be of type "string"';
        {
          scope: converted,
        }
      ),
      with_session_cookie_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"session_cookie_name" expected to be of type "string"';
        {
          session_cookie_name: converted,
        }
      ),
      with_session_timeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"session_timeout" expected to be of type "number"';
        {
          session_timeout: converted,
        }
      ),
      with_user_pool_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_pool_arn" expected to be of type "string"';
        {
          user_pool_arn: converted,
        }
      ),
      with_user_pool_client_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_pool_client_id" expected to be of type "string"';
        {
          user_pool_client_id: converted,
        }
      ),
      with_user_pool_domain(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_pool_domain" expected to be of type "string"';
        {
          user_pool_domain: converted,
        }
      ),
    },
    authenticate_oidc:: {
      local block = self,
      new():: (
        {}
      ),
      with_authentication_request_extra_params(value):: (
        local converted = value;
        assert std.isObject(converted) : '"authentication_request_extra_params" expected to be of type "map"';
        {
          authentication_request_extra_params: converted,
        }
      ),
      with_authorization_endpoint(value):: (
        local converted = value;
        assert std.isString(converted) : '"authorization_endpoint" expected to be of type "string"';
        {
          authorization_endpoint: converted,
        }
      ),
      with_client_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"client_id" expected to be of type "string"';
        {
          client_id: converted,
        }
      ),
      with_issuer(value):: (
        local converted = value;
        assert std.isString(converted) : '"issuer" expected to be of type "string"';
        {
          issuer: converted,
        }
      ),
      with_on_unauthenticated_request(value):: (
        local converted = value;
        assert std.isString(converted) : '"on_unauthenticated_request" expected to be of type "string"';
        {
          on_unauthenticated_request: converted,
        }
      ),
      with_scope(value):: (
        local converted = value;
        assert std.isString(converted) : '"scope" expected to be of type "string"';
        {
          scope: converted,
        }
      ),
      with_session_cookie_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"session_cookie_name" expected to be of type "string"';
        {
          session_cookie_name: converted,
        }
      ),
      with_session_timeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"session_timeout" expected to be of type "number"';
        {
          session_timeout: converted,
        }
      ),
      with_token_endpoint(value):: (
        local converted = value;
        assert std.isString(converted) : '"token_endpoint" expected to be of type "string"';
        {
          token_endpoint: converted,
        }
      ),
      with_user_info_endpoint(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_info_endpoint" expected to be of type "string"';
        {
          user_info_endpoint: converted,
        }
      ),
    },
    fixed_response:: {
      local block = self,
      new():: (
        {}
      ),
      with_content_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_type" expected to be of type "string"';
        {
          content_type: converted,
        }
      ),
      with_message_body(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_body" expected to be of type "string"';
        {
          message_body: converted,
        }
      ),
      with_status_code(value):: (
        local converted = value;
        assert std.isString(converted) : '"status_code" expected to be of type "string"';
        {
          status_code: converted,
        }
      ),
    },
    forward:: {
      local block = self,
      new():: (
        {}
      ),
      stickiness:: {
        local block = self,
        new():: (
          {}
        ),
        with_duration(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"duration" expected to be of type "number"';
          {
            duration: converted,
          }
        ),
        with_enabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
      },
      target_group:: {
        local block = self,
        new():: (
          {}
        ),
        with_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"arn" expected to be of type "string"';
          {
            arn: converted,
          }
        ),
        with_weight(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"weight" expected to be of type "number"';
          {
            weight: converted,
          }
        ),
      },
      with_stickiness(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          stickiness: value,
        }
      ),
      with_target_group(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_group: value,
        }
      ),
      with_stickiness_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          stickiness+: converted,
        }
      ),
      with_target_group_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_group+: converted,
        }
      ),
    },
    redirect:: {
      local block = self,
      new():: (
        {}
      ),
      with_host(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      with_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"path" expected to be of type "string"';
        {
          path: converted,
        }
      ),
      with_port(value):: (
        local converted = value;
        assert std.isString(converted) : '"port" expected to be of type "string"';
        {
          port: converted,
        }
      ),
      with_protocol(value):: (
        local converted = value;
        assert std.isString(converted) : '"protocol" expected to be of type "string"';
        {
          protocol: converted,
        }
      ),
      with_query(value):: (
        local converted = value;
        assert std.isString(converted) : '"query" expected to be of type "string"';
        {
          query: converted,
        }
      ),
      with_status_code(value):: (
        local converted = value;
        assert std.isString(converted) : '"status_code" expected to be of type "string"';
        {
          status_code: converted,
        }
      ),
    },
    with_authenticate_cognito(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authenticate_cognito: value,
      }
    ),
    with_authenticate_oidc(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authenticate_oidc: value,
      }
    ),
    with_fixed_response(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fixed_response: value,
      }
    ),
    with_forward(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forward: value,
      }
    ),
    with_redirect(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redirect: value,
      }
    ),
    with_authenticate_cognito_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authenticate_cognito+: converted,
      }
    ),
    with_authenticate_oidc_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authenticate_oidc+: converted,
      }
    ),
    with_fixed_response_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fixed_response+: converted,
      }
    ),
    with_forward_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forward+: converted,
      }
    ),
    with_redirect_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redirect+: converted,
      }
    ),
  },
  condition:: {
    local block = self,
    new():: (
      {}
    ),
    host_header:: {
      local block = self,
      new():: (
        {}
      ),
      with_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      with_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    http_header:: {
      local block = self,
      new():: (
        {}
      ),
      with_http_header_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"http_header_name" expected to be of type "string"';
        {
          http_header_name: converted,
        }
      ),
      with_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      with_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    http_request_method:: {
      local block = self,
      new():: (
        {}
      ),
      with_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      with_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    path_pattern:: {
      local block = self,
      new():: (
        {}
      ),
      with_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      with_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    query_string:: {
      local block = self,
      new():: (
        {}
      ),
      values:: {
        local block = self,
        new():: (
          {}
        ),
        with_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
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
      with_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          values: value,
        }
      ),
      with_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          values+: converted,
        }
      ),
    },
    source_ip:: {
      local block = self,
      new():: (
        {}
      ),
      with_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      with_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    with_host_header(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        host_header: value,
      }
    ),
    with_http_header(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_header: value,
      }
    ),
    with_http_request_method(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_request_method: value,
      }
    ),
    with_path_pattern(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        path_pattern: value,
      }
    ),
    with_query_string(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_string: value,
      }
    ),
    with_source_ip(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_ip: value,
      }
    ),
    with_host_header_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        host_header+: converted,
      }
    ),
    with_http_header_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_header+: converted,
      }
    ),
    with_http_request_method_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_request_method+: converted,
      }
    ),
    with_path_pattern_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        path_pattern+: converted,
      }
    ),
    with_query_string_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_string+: converted,
      }
    ),
    with_source_ip_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_ip+: converted,
      }
    ),
  },
  with_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action: value,
    }
  ),
  with_condition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      condition: value,
    }
  ),
  with_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action+: converted,
    }
  ),
  with_condition_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      condition+: converted,
    }
  ),
}
