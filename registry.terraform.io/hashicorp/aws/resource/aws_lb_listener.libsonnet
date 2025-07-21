{
  local block = self,
  new(load_balancer_arn):: (
    {}
    + block.with_load_balancer_arn(load_balancer_arn)
  ),
  with_alpn_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"alpn_policy" expected to be of type "string"';
    {
      alpn_policy: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_certificate_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
    {
      certificate_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_load_balancer_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancer_arn" expected to be of type "string"';
    {
      load_balancer_arn: converted,
    }
  ),
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_routing_http_request_x_amzn_mtls_clientcert_header_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_request_x_amzn_mtls_clientcert_header_name" expected to be of type "string"';
    {
      routing_http_request_x_amzn_mtls_clientcert_header_name: converted,
    }
  ),
  with_routing_http_request_x_amzn_mtls_clientcert_issuer_header_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_request_x_amzn_mtls_clientcert_issuer_header_name" expected to be of type "string"';
    {
      routing_http_request_x_amzn_mtls_clientcert_issuer_header_name: converted,
    }
  ),
  with_routing_http_request_x_amzn_mtls_clientcert_leaf_header_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_request_x_amzn_mtls_clientcert_leaf_header_name" expected to be of type "string"';
    {
      routing_http_request_x_amzn_mtls_clientcert_leaf_header_name: converted,
    }
  ),
  with_routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name" expected to be of type "string"';
    {
      routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name: converted,
    }
  ),
  with_routing_http_request_x_amzn_mtls_clientcert_subject_header_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_request_x_amzn_mtls_clientcert_subject_header_name" expected to be of type "string"';
    {
      routing_http_request_x_amzn_mtls_clientcert_subject_header_name: converted,
    }
  ),
  with_routing_http_request_x_amzn_mtls_clientcert_validity_header_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_request_x_amzn_mtls_clientcert_validity_header_name" expected to be of type "string"';
    {
      routing_http_request_x_amzn_mtls_clientcert_validity_header_name: converted,
    }
  ),
  with_routing_http_request_x_amzn_tls_cipher_suite_header_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_request_x_amzn_tls_cipher_suite_header_name" expected to be of type "string"';
    {
      routing_http_request_x_amzn_tls_cipher_suite_header_name: converted,
    }
  ),
  with_routing_http_request_x_amzn_tls_version_header_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_request_x_amzn_tls_version_header_name" expected to be of type "string"';
    {
      routing_http_request_x_amzn_tls_version_header_name: converted,
    }
  ),
  with_routing_http_response_access_control_allow_credentials_header_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_access_control_allow_credentials_header_value" expected to be of type "string"';
    {
      routing_http_response_access_control_allow_credentials_header_value: converted,
    }
  ),
  with_routing_http_response_access_control_allow_headers_header_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_access_control_allow_headers_header_value" expected to be of type "string"';
    {
      routing_http_response_access_control_allow_headers_header_value: converted,
    }
  ),
  with_routing_http_response_access_control_allow_methods_header_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_access_control_allow_methods_header_value" expected to be of type "string"';
    {
      routing_http_response_access_control_allow_methods_header_value: converted,
    }
  ),
  with_routing_http_response_access_control_allow_origin_header_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_access_control_allow_origin_header_value" expected to be of type "string"';
    {
      routing_http_response_access_control_allow_origin_header_value: converted,
    }
  ),
  with_routing_http_response_access_control_expose_headers_header_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_access_control_expose_headers_header_value" expected to be of type "string"';
    {
      routing_http_response_access_control_expose_headers_header_value: converted,
    }
  ),
  with_routing_http_response_access_control_max_age_header_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_access_control_max_age_header_value" expected to be of type "string"';
    {
      routing_http_response_access_control_max_age_header_value: converted,
    }
  ),
  with_routing_http_response_content_security_policy_header_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_content_security_policy_header_value" expected to be of type "string"';
    {
      routing_http_response_content_security_policy_header_value: converted,
    }
  ),
  with_routing_http_response_server_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"routing_http_response_server_enabled" expected to be of type "bool"';
    {
      routing_http_response_server_enabled: converted,
    }
  ),
  with_routing_http_response_strict_transport_security_header_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_strict_transport_security_header_value" expected to be of type "string"';
    {
      routing_http_response_strict_transport_security_header_value: converted,
    }
  ),
  with_routing_http_response_x_content_type_options_header_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_x_content_type_options_header_value" expected to be of type "string"';
    {
      routing_http_response_x_content_type_options_header_value: converted,
    }
  ),
  with_routing_http_response_x_frame_options_header_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_x_frame_options_header_value" expected to be of type "string"';
    {
      routing_http_response_x_frame_options_header_value: converted,
    }
  ),
  with_ssl_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"ssl_policy" expected to be of type "string"';
    {
      ssl_policy: converted,
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
  with_tcp_idle_timeout_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tcp_idle_timeout_seconds" expected to be of type "number"';
    {
      tcp_idle_timeout_seconds: converted,
    }
  ),
  default_action:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_order(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"order" expected to be of type "number"';
      {
        order: converted,
      }
    ),
    with_target_group_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_group_arn" expected to be of type "string"';
      {
        target_group_arn: converted,
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
      new(user_pool_arn, user_pool_client_id, user_pool_domain):: (
        {}
        + block.with_user_pool_arn(user_pool_arn)
        + block.with_user_pool_client_id(user_pool_client_id)
        + block.with_user_pool_domain(user_pool_domain)
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
      new(authorization_endpoint, client_id, client_secret, issuer, token_endpoint, user_info_endpoint):: (
        {}
        + block.with_authorization_endpoint(authorization_endpoint)
        + block.with_client_id(client_id)
        + block.with_client_secret(client_secret)
        + block.with_issuer(issuer)
        + block.with_token_endpoint(token_endpoint)
        + block.with_user_info_endpoint(user_info_endpoint)
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
      with_client_secret(value):: (
        local converted = value;
        assert std.isString(converted) : '"client_secret" expected to be of type "string"';
        {
          client_secret: converted,
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
      new(content_type):: (
        {}
        + block.with_content_type(content_type)
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
        new(duration):: (
          {}
          + block.with_duration(duration)
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
      new(status_code):: (
        {}
        + block.with_status_code(status_code)
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
  mutual_authentication:: {
    local block = self,
    new(mode):: (
      {}
      + block.with_mode(mode)
    ),
    with_advertise_trust_store_ca_names(value):: (
      local converted = value;
      assert std.isString(converted) : '"advertise_trust_store_ca_names" expected to be of type "string"';
      {
        advertise_trust_store_ca_names: converted,
      }
    ),
    with_ignore_client_certificate_expiry(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"ignore_client_certificate_expiry" expected to be of type "bool"';
      {
        ignore_client_certificate_expiry: converted,
      }
    ),
    with_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
    with_trust_store_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"trust_store_arn" expected to be of type "string"';
      {
        trust_store_arn: converted,
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
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_default_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_action: value,
    }
  ),
  with_mutual_authentication(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mutual_authentication: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_default_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_action+: converted,
    }
  ),
  with_mutual_authentication_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mutual_authentication+: converted,
    }
  ),
}
