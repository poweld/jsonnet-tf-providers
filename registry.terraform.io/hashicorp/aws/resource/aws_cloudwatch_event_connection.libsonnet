{
  local block = self,
  new(authorization_type, name):: (
    {}
    + block.with_authorization_type(authorization_type)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_authorization_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorization_type" expected to be of type "string"';
    {
      authorization_type: converted,
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
  with_kms_key_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_identifier" expected to be of type "string"';
    {
      kms_key_identifier: converted,
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
  with_secret_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
    {
      secret_arn: converted,
    }
  ),
  auth_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    api_key:: {
      local block = self,
      new(key, value):: (
        {}
        + block.with_key(key)
        + block.with_value(value)
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
    basic:: {
      local block = self,
      new(password, username):: (
        {}
        + block.with_password(password)
        + block.with_username(username)
      ),
      with_password(value):: (
        local converted = value;
        assert std.isString(converted) : '"password" expected to be of type "string"';
        {
          password: converted,
        }
      ),
      with_username(value):: (
        local converted = value;
        assert std.isString(converted) : '"username" expected to be of type "string"';
        {
          username: converted,
        }
      ),
    },
    invocation_http_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      body:: {
        local block = self,
        new():: (
          {}
        ),
        with_is_value_secret(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"is_value_secret" expected to be of type "bool"';
          {
            is_value_secret: converted,
          }
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
      header:: {
        local block = self,
        new():: (
          {}
        ),
        with_is_value_secret(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"is_value_secret" expected to be of type "bool"';
          {
            is_value_secret: converted,
          }
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
      query_string:: {
        local block = self,
        new():: (
          {}
        ),
        with_is_value_secret(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"is_value_secret" expected to be of type "bool"';
          {
            is_value_secret: converted,
          }
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
      with_body(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          body: value,
        }
      ),
      with_header(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          header: value,
        }
      ),
      with_query_string(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_string: value,
        }
      ),
      with_body_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          body+: converted,
        }
      ),
      with_header_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          header+: converted,
        }
      ),
      with_query_string_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_string+: converted,
        }
      ),
    },
    oauth:: {
      local block = self,
      new(authorization_endpoint, http_method):: (
        {}
        + block.with_authorization_endpoint(authorization_endpoint)
        + block.with_http_method(http_method)
      ),
      with_authorization_endpoint(value):: (
        local converted = value;
        assert std.isString(converted) : '"authorization_endpoint" expected to be of type "string"';
        {
          authorization_endpoint: converted,
        }
      ),
      with_http_method(value):: (
        local converted = value;
        assert std.isString(converted) : '"http_method" expected to be of type "string"';
        {
          http_method: converted,
        }
      ),
      client_parameters:: {
        local block = self,
        new(client_id, client_secret):: (
          {}
          + block.with_client_id(client_id)
          + block.with_client_secret(client_secret)
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
      },
      oauth_http_parameters:: {
        local block = self,
        new():: (
          {}
        ),
        body:: {
          local block = self,
          new():: (
            {}
          ),
          with_is_value_secret(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"is_value_secret" expected to be of type "bool"';
            {
              is_value_secret: converted,
            }
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
        header:: {
          local block = self,
          new():: (
            {}
          ),
          with_is_value_secret(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"is_value_secret" expected to be of type "bool"';
            {
              is_value_secret: converted,
            }
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
        query_string:: {
          local block = self,
          new():: (
            {}
          ),
          with_is_value_secret(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"is_value_secret" expected to be of type "bool"';
            {
              is_value_secret: converted,
            }
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
        with_body(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            body: value,
          }
        ),
        with_header(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            header: value,
          }
        ),
        with_query_string(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            query_string: value,
          }
        ),
        with_body_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            body+: converted,
          }
        ),
        with_header_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            header+: converted,
          }
        ),
        with_query_string_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            query_string+: converted,
          }
        ),
      },
      with_client_parameters(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          client_parameters: value,
        }
      ),
      with_oauth_http_parameters(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          oauth_http_parameters: value,
        }
      ),
      with_client_parameters_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          client_parameters+: converted,
        }
      ),
      with_oauth_http_parameters_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          oauth_http_parameters+: converted,
        }
      ),
    },
    with_api_key(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        api_key: value,
      }
    ),
    with_basic(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        basic: value,
      }
    ),
    with_invocation_http_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        invocation_http_parameters: value,
      }
    ),
    with_oauth(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oauth: value,
      }
    ),
    with_api_key_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        api_key+: converted,
      }
    ),
    with_basic_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        basic+: converted,
      }
    ),
    with_invocation_http_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        invocation_http_parameters+: converted,
      }
    ),
    with_oauth_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oauth+: converted,
      }
    ),
  },
  invocation_connectivity_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    resource_parameters:: {
      local block = self,
      new(resource_configuration_arn):: (
        {}
        + block.with_resource_configuration_arn(resource_configuration_arn)
      ),
      with_resource_association_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_association_arn" expected to be of type "string"';
        {
          resource_association_arn: converted,
        }
      ),
      with_resource_configuration_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_configuration_arn" expected to be of type "string"';
        {
          resource_configuration_arn: converted,
        }
      ),
    },
    with_resource_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_parameters: value,
      }
    ),
    with_resource_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_parameters+: converted,
      }
    ),
  },
  with_auth_parameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auth_parameters: value,
    }
  ),
  with_invocation_connectivity_parameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      invocation_connectivity_parameters: value,
    }
  ),
  with_auth_parameters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auth_parameters+: converted,
    }
  ),
  with_invocation_connectivity_parameters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      invocation_connectivity_parameters+: converted,
    }
  ),
}
