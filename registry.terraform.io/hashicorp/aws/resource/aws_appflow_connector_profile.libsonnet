{
  local block = self,
  new(connection_mode, connector_type, name):: (
    {}
    + block.with_connection_mode(connection_mode)
    + block.with_connector_type(connector_type)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_connection_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_mode" expected to be of type "string"';
    {
      connection_mode: converted,
    }
  ),
  with_connector_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"connector_label" expected to be of type "string"';
    {
      connector_label: converted,
    }
  ),
  with_connector_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"connector_type" expected to be of type "string"';
    {
      connector_type: converted,
    }
  ),
  with_credentials_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_arn" expected to be of type "string"';
    {
      credentials_arn: converted,
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
  connector_profile_config:: {
    local block = self,
    new():: (
      {}
    ),
    connector_profile_credentials:: {
      local block = self,
      new():: (
        {}
      ),
      amplitude:: {
        local block = self,
        new(api_key, secret_key):: (
          {}
          + block.with_api_key(api_key)
          + block.with_secret_key(secret_key)
        ),
        with_api_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"api_key" expected to be of type "string"';
          {
            api_key: converted,
          }
        ),
        with_secret_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"secret_key" expected to be of type "string"';
          {
            secret_key: converted,
          }
        ),
      },
      custom_connector:: {
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
        api_key:: {
          local block = self,
          new(api_key):: (
            {}
            + block.with_api_key(api_key)
          ),
          with_api_key(value):: (
            local converted = value;
            assert std.isString(converted) : '"api_key" expected to be of type "string"';
            {
              api_key: converted,
            }
          ),
          with_api_secret_key(value):: (
            local converted = value;
            assert std.isString(converted) : '"api_secret_key" expected to be of type "string"';
            {
              api_secret_key: converted,
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
        custom:: {
          local block = self,
          new(custom_authentication_type):: (
            {}
            + block.with_custom_authentication_type(custom_authentication_type)
          ),
          with_credentials_map(value):: (
            local converted = value;
            assert std.isObject(converted) : '"credentials_map" expected to be of type "map"';
            {
              credentials_map: converted,
            }
          ),
          with_custom_authentication_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"custom_authentication_type" expected to be of type "string"';
            {
              custom_authentication_type: converted,
            }
          ),
        },
        oauth2:: {
          local block = self,
          new():: (
            {}
          ),
          with_access_token(value):: (
            local converted = value;
            assert std.isString(converted) : '"access_token" expected to be of type "string"';
            {
              access_token: converted,
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
          with_refresh_token(value):: (
            local converted = value;
            assert std.isString(converted) : '"refresh_token" expected to be of type "string"';
            {
              refresh_token: converted,
            }
          ),
          oauth_request:: {
            local block = self,
            new():: (
              {}
            ),
            with_auth_code(value):: (
              local converted = value;
              assert std.isString(converted) : '"auth_code" expected to be of type "string"';
              {
                auth_code: converted,
              }
            ),
            with_redirect_uri(value):: (
              local converted = value;
              assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
              {
                redirect_uri: converted,
              }
            ),
          },
          with_oauth_request(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              oauth_request: value,
            }
          ),
          with_oauth_request_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              oauth_request+: converted,
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
        with_custom(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            custom: value,
          }
        ),
        with_oauth2(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth2: value,
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
        with_custom_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            custom+: converted,
          }
        ),
        with_oauth2_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth2+: converted,
          }
        ),
      },
      datadog:: {
        local block = self,
        new(api_key, application_key):: (
          {}
          + block.with_api_key(api_key)
          + block.with_application_key(application_key)
        ),
        with_api_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"api_key" expected to be of type "string"';
          {
            api_key: converted,
          }
        ),
        with_application_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"application_key" expected to be of type "string"';
          {
            application_key: converted,
          }
        ),
      },
      dynatrace:: {
        local block = self,
        new(api_token):: (
          {}
          + block.with_api_token(api_token)
        ),
        with_api_token(value):: (
          local converted = value;
          assert std.isString(converted) : '"api_token" expected to be of type "string"';
          {
            api_token: converted,
          }
        ),
      },
      google_analytics:: {
        local block = self,
        new(client_id, client_secret):: (
          {}
          + block.with_client_id(client_id)
          + block.with_client_secret(client_secret)
        ),
        with_access_token(value):: (
          local converted = value;
          assert std.isString(converted) : '"access_token" expected to be of type "string"';
          {
            access_token: converted,
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
        with_refresh_token(value):: (
          local converted = value;
          assert std.isString(converted) : '"refresh_token" expected to be of type "string"';
          {
            refresh_token: converted,
          }
        ),
        oauth_request:: {
          local block = self,
          new():: (
            {}
          ),
          with_auth_code(value):: (
            local converted = value;
            assert std.isString(converted) : '"auth_code" expected to be of type "string"';
            {
              auth_code: converted,
            }
          ),
          with_redirect_uri(value):: (
            local converted = value;
            assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
            {
              redirect_uri: converted,
            }
          ),
        },
        with_oauth_request(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request: value,
          }
        ),
        with_oauth_request_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request+: converted,
          }
        ),
      },
      honeycode:: {
        local block = self,
        new():: (
          {}
        ),
        with_access_token(value):: (
          local converted = value;
          assert std.isString(converted) : '"access_token" expected to be of type "string"';
          {
            access_token: converted,
          }
        ),
        with_refresh_token(value):: (
          local converted = value;
          assert std.isString(converted) : '"refresh_token" expected to be of type "string"';
          {
            refresh_token: converted,
          }
        ),
        oauth_request:: {
          local block = self,
          new():: (
            {}
          ),
          with_auth_code(value):: (
            local converted = value;
            assert std.isString(converted) : '"auth_code" expected to be of type "string"';
            {
              auth_code: converted,
            }
          ),
          with_redirect_uri(value):: (
            local converted = value;
            assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
            {
              redirect_uri: converted,
            }
          ),
        },
        with_oauth_request(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request: value,
          }
        ),
        with_oauth_request_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request+: converted,
          }
        ),
      },
      infor_nexus:: {
        local block = self,
        new(access_key_id, datakey, secret_access_key, user_id):: (
          {}
          + block.with_access_key_id(access_key_id)
          + block.with_datakey(datakey)
          + block.with_secret_access_key(secret_access_key)
          + block.with_user_id(user_id)
        ),
        with_access_key_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"access_key_id" expected to be of type "string"';
          {
            access_key_id: converted,
          }
        ),
        with_datakey(value):: (
          local converted = value;
          assert std.isString(converted) : '"datakey" expected to be of type "string"';
          {
            datakey: converted,
          }
        ),
        with_secret_access_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"secret_access_key" expected to be of type "string"';
          {
            secret_access_key: converted,
          }
        ),
        with_user_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"user_id" expected to be of type "string"';
          {
            user_id: converted,
          }
        ),
      },
      marketo:: {
        local block = self,
        new(client_id, client_secret):: (
          {}
          + block.with_client_id(client_id)
          + block.with_client_secret(client_secret)
        ),
        with_access_token(value):: (
          local converted = value;
          assert std.isString(converted) : '"access_token" expected to be of type "string"';
          {
            access_token: converted,
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
        oauth_request:: {
          local block = self,
          new():: (
            {}
          ),
          with_auth_code(value):: (
            local converted = value;
            assert std.isString(converted) : '"auth_code" expected to be of type "string"';
            {
              auth_code: converted,
            }
          ),
          with_redirect_uri(value):: (
            local converted = value;
            assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
            {
              redirect_uri: converted,
            }
          ),
        },
        with_oauth_request(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request: value,
          }
        ),
        with_oauth_request_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request+: converted,
          }
        ),
      },
      redshift:: {
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
      salesforce:: {
        local block = self,
        new():: (
          {}
        ),
        with_access_token(value):: (
          local converted = value;
          assert std.isString(converted) : '"access_token" expected to be of type "string"';
          {
            access_token: converted,
          }
        ),
        with_client_credentials_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"client_credentials_arn" expected to be of type "string"';
          {
            client_credentials_arn: converted,
          }
        ),
        with_jwt_token(value):: (
          local converted = value;
          assert std.isString(converted) : '"jwt_token" expected to be of type "string"';
          {
            jwt_token: converted,
          }
        ),
        with_oauth2_grant_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"oauth2_grant_type" expected to be of type "string"';
          {
            oauth2_grant_type: converted,
          }
        ),
        with_refresh_token(value):: (
          local converted = value;
          assert std.isString(converted) : '"refresh_token" expected to be of type "string"';
          {
            refresh_token: converted,
          }
        ),
        oauth_request:: {
          local block = self,
          new():: (
            {}
          ),
          with_auth_code(value):: (
            local converted = value;
            assert std.isString(converted) : '"auth_code" expected to be of type "string"';
            {
              auth_code: converted,
            }
          ),
          with_redirect_uri(value):: (
            local converted = value;
            assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
            {
              redirect_uri: converted,
            }
          ),
        },
        with_oauth_request(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request: value,
          }
        ),
        with_oauth_request_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request+: converted,
          }
        ),
      },
      sapo_data:: {
        local block = self,
        new():: (
          {}
        ),
        basic_auth_credentials:: {
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
        oauth_credentials:: {
          local block = self,
          new(client_id, client_secret):: (
            {}
            + block.with_client_id(client_id)
            + block.with_client_secret(client_secret)
          ),
          with_access_token(value):: (
            local converted = value;
            assert std.isString(converted) : '"access_token" expected to be of type "string"';
            {
              access_token: converted,
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
          with_refresh_token(value):: (
            local converted = value;
            assert std.isString(converted) : '"refresh_token" expected to be of type "string"';
            {
              refresh_token: converted,
            }
          ),
          oauth_request:: {
            local block = self,
            new():: (
              {}
            ),
            with_auth_code(value):: (
              local converted = value;
              assert std.isString(converted) : '"auth_code" expected to be of type "string"';
              {
                auth_code: converted,
              }
            ),
            with_redirect_uri(value):: (
              local converted = value;
              assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
              {
                redirect_uri: converted,
              }
            ),
          },
          with_oauth_request(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              oauth_request: value,
            }
          ),
          with_oauth_request_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              oauth_request+: converted,
            }
          ),
        },
        with_basic_auth_credentials(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            basic_auth_credentials: value,
          }
        ),
        with_oauth_credentials(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_credentials: value,
          }
        ),
        with_basic_auth_credentials_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            basic_auth_credentials+: converted,
          }
        ),
        with_oauth_credentials_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_credentials+: converted,
          }
        ),
      },
      service_now:: {
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
      singular:: {
        local block = self,
        new(api_key):: (
          {}
          + block.with_api_key(api_key)
        ),
        with_api_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"api_key" expected to be of type "string"';
          {
            api_key: converted,
          }
        ),
      },
      slack:: {
        local block = self,
        new(client_id, client_secret):: (
          {}
          + block.with_client_id(client_id)
          + block.with_client_secret(client_secret)
        ),
        with_access_token(value):: (
          local converted = value;
          assert std.isString(converted) : '"access_token" expected to be of type "string"';
          {
            access_token: converted,
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
        oauth_request:: {
          local block = self,
          new():: (
            {}
          ),
          with_auth_code(value):: (
            local converted = value;
            assert std.isString(converted) : '"auth_code" expected to be of type "string"';
            {
              auth_code: converted,
            }
          ),
          with_redirect_uri(value):: (
            local converted = value;
            assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
            {
              redirect_uri: converted,
            }
          ),
        },
        with_oauth_request(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request: value,
          }
        ),
        with_oauth_request_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request+: converted,
          }
        ),
      },
      snowflake:: {
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
      trendmicro:: {
        local block = self,
        new(api_secret_key):: (
          {}
          + block.with_api_secret_key(api_secret_key)
        ),
        with_api_secret_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"api_secret_key" expected to be of type "string"';
          {
            api_secret_key: converted,
          }
        ),
      },
      veeva:: {
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
      zendesk:: {
        local block = self,
        new(client_id, client_secret):: (
          {}
          + block.with_client_id(client_id)
          + block.with_client_secret(client_secret)
        ),
        with_access_token(value):: (
          local converted = value;
          assert std.isString(converted) : '"access_token" expected to be of type "string"';
          {
            access_token: converted,
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
        oauth_request:: {
          local block = self,
          new():: (
            {}
          ),
          with_auth_code(value):: (
            local converted = value;
            assert std.isString(converted) : '"auth_code" expected to be of type "string"';
            {
              auth_code: converted,
            }
          ),
          with_redirect_uri(value):: (
            local converted = value;
            assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
            {
              redirect_uri: converted,
            }
          ),
        },
        with_oauth_request(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request: value,
          }
        ),
        with_oauth_request_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request+: converted,
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
      with_honeycode(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          honeycode: value,
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
      with_redshift(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          redshift: value,
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
      with_snowflake(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          snowflake: value,
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
      with_honeycode_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          honeycode+: converted,
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
      with_redshift_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          redshift+: converted,
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
      with_snowflake_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          snowflake+: converted,
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
    connector_profile_properties:: {
      local block = self,
      new():: (
        {}
      ),
      amplitude:: {
        local block = self,
        new():: (
          {}
        ),
      },
      custom_connector:: {
        local block = self,
        new():: (
          {}
        ),
        with_profile_properties(value):: (
          local converted = value;
          assert std.isObject(converted) : '"profile_properties" expected to be of type "map"';
          {
            profile_properties: converted,
          }
        ),
        oauth2_properties:: {
          local block = self,
          new(oauth2_grant_type, token_url):: (
            {}
            + block.with_oauth2_grant_type(oauth2_grant_type)
            + block.with_token_url(token_url)
          ),
          with_oauth2_grant_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"oauth2_grant_type" expected to be of type "string"';
            {
              oauth2_grant_type: converted,
            }
          ),
          with_token_url(value):: (
            local converted = value;
            assert std.isString(converted) : '"token_url" expected to be of type "string"';
            {
              token_url: converted,
            }
          ),
          with_token_url_custom_properties(value):: (
            local converted = value;
            assert std.isObject(converted) : '"token_url_custom_properties" expected to be of type "map"';
            {
              token_url_custom_properties: converted,
            }
          ),
        },
        with_oauth2_properties(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth2_properties: value,
          }
        ),
        with_oauth2_properties_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth2_properties+: converted,
          }
        ),
      },
      datadog:: {
        local block = self,
        new(instance_url):: (
          {}
          + block.with_instance_url(instance_url)
        ),
        with_instance_url(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
          }
        ),
      },
      dynatrace:: {
        local block = self,
        new(instance_url):: (
          {}
          + block.with_instance_url(instance_url)
        ),
        with_instance_url(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
          }
        ),
      },
      google_analytics:: {
        local block = self,
        new():: (
          {}
        ),
      },
      honeycode:: {
        local block = self,
        new():: (
          {}
        ),
      },
      infor_nexus:: {
        local block = self,
        new(instance_url):: (
          {}
          + block.with_instance_url(instance_url)
        ),
        with_instance_url(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
          }
        ),
      },
      marketo:: {
        local block = self,
        new(instance_url):: (
          {}
          + block.with_instance_url(instance_url)
        ),
        with_instance_url(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
          }
        ),
      },
      redshift:: {
        local block = self,
        new(bucket_name, role_arn):: (
          {}
          + block.with_bucket_name(bucket_name)
          + block.with_role_arn(role_arn)
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
        with_cluster_identifier(value):: (
          local converted = value;
          assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
          {
            cluster_identifier: converted,
          }
        ),
        with_data_api_role_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"data_api_role_arn" expected to be of type "string"';
          {
            data_api_role_arn: converted,
          }
        ),
        with_database_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"database_name" expected to be of type "string"';
          {
            database_name: converted,
          }
        ),
        with_database_url(value):: (
          local converted = value;
          assert std.isString(converted) : '"database_url" expected to be of type "string"';
          {
            database_url: converted,
          }
        ),
        with_role_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"role_arn" expected to be of type "string"';
          {
            role_arn: converted,
          }
        ),
      },
      salesforce:: {
        local block = self,
        new():: (
          {}
        ),
        with_instance_url(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
          }
        ),
        with_is_sandbox_environment(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"is_sandbox_environment" expected to be of type "bool"';
          {
            is_sandbox_environment: converted,
          }
        ),
        with_use_privatelink_for_metadata_and_authorization(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"use_privatelink_for_metadata_and_authorization" expected to be of type "bool"';
          {
            use_privatelink_for_metadata_and_authorization: converted,
          }
        ),
      },
      sapo_data:: {
        local block = self,
        new(application_host_url, application_service_path, client_number, port_number):: (
          {}
          + block.with_application_host_url(application_host_url)
          + block.with_application_service_path(application_service_path)
          + block.with_client_number(client_number)
          + block.with_port_number(port_number)
        ),
        with_application_host_url(value):: (
          local converted = value;
          assert std.isString(converted) : '"application_host_url" expected to be of type "string"';
          {
            application_host_url: converted,
          }
        ),
        with_application_service_path(value):: (
          local converted = value;
          assert std.isString(converted) : '"application_service_path" expected to be of type "string"';
          {
            application_service_path: converted,
          }
        ),
        with_client_number(value):: (
          local converted = value;
          assert std.isString(converted) : '"client_number" expected to be of type "string"';
          {
            client_number: converted,
          }
        ),
        with_logon_language(value):: (
          local converted = value;
          assert std.isString(converted) : '"logon_language" expected to be of type "string"';
          {
            logon_language: converted,
          }
        ),
        with_port_number(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"port_number" expected to be of type "number"';
          {
            port_number: converted,
          }
        ),
        with_private_link_service_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"private_link_service_name" expected to be of type "string"';
          {
            private_link_service_name: converted,
          }
        ),
        oauth_properties:: {
          local block = self,
          new(auth_code_url, oauth_scopes, token_url):: (
            {}
            + block.with_auth_code_url(auth_code_url)
            + block.with_oauth_scopes(oauth_scopes)
            + block.with_token_url(token_url)
          ),
          with_auth_code_url(value):: (
            local converted = value;
            assert std.isString(converted) : '"auth_code_url" expected to be of type "string"';
            {
              auth_code_url: converted,
            }
          ),
          with_oauth_scopes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"oauth_scopes" expected to be of type "list"';
            {
              oauth_scopes: converted,
            }
          ),
          with_oauth_scopes_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"oauth_scopes" expected to be of type "list"';
            {
              oauth_scopes+: converted,
            }
          ),
          with_token_url(value):: (
            local converted = value;
            assert std.isString(converted) : '"token_url" expected to be of type "string"';
            {
              token_url: converted,
            }
          ),
        },
        with_oauth_properties(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_properties: value,
          }
        ),
        with_oauth_properties_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_properties+: converted,
          }
        ),
      },
      service_now:: {
        local block = self,
        new(instance_url):: (
          {}
          + block.with_instance_url(instance_url)
        ),
        with_instance_url(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
          }
        ),
      },
      singular:: {
        local block = self,
        new():: (
          {}
        ),
      },
      slack:: {
        local block = self,
        new(instance_url):: (
          {}
          + block.with_instance_url(instance_url)
        ),
        with_instance_url(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
          }
        ),
      },
      snowflake:: {
        local block = self,
        new(bucket_name, stage, warehouse):: (
          {}
          + block.with_bucket_name(bucket_name)
          + block.with_stage(stage)
          + block.with_warehouse(warehouse)
        ),
        with_account_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"account_name" expected to be of type "string"';
          {
            account_name: converted,
          }
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
        with_private_link_service_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"private_link_service_name" expected to be of type "string"';
          {
            private_link_service_name: converted,
          }
        ),
        with_region(value):: (
          local converted = value;
          assert std.isString(converted) : '"region" expected to be of type "string"';
          {
            region: converted,
          }
        ),
        with_stage(value):: (
          local converted = value;
          assert std.isString(converted) : '"stage" expected to be of type "string"';
          {
            stage: converted,
          }
        ),
        with_warehouse(value):: (
          local converted = value;
          assert std.isString(converted) : '"warehouse" expected to be of type "string"';
          {
            warehouse: converted,
          }
        ),
      },
      trendmicro:: {
        local block = self,
        new():: (
          {}
        ),
      },
      veeva:: {
        local block = self,
        new(instance_url):: (
          {}
          + block.with_instance_url(instance_url)
        ),
        with_instance_url(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
          }
        ),
      },
      zendesk:: {
        local block = self,
        new(instance_url):: (
          {}
          + block.with_instance_url(instance_url)
        ),
        with_instance_url(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
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
      with_honeycode(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          honeycode: value,
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
      with_redshift(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          redshift: value,
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
      with_snowflake(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          snowflake: value,
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
      with_honeycode_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          honeycode+: converted,
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
      with_redshift_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          redshift+: converted,
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
      with_snowflake_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          snowflake+: converted,
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
    with_connector_profile_credentials(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connector_profile_credentials: value,
      }
    ),
    with_connector_profile_properties(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connector_profile_properties: value,
      }
    ),
    with_connector_profile_credentials_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connector_profile_credentials+: converted,
      }
    ),
    with_connector_profile_properties_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connector_profile_properties+: converted,
      }
    ),
  },
  with_connector_profile_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connector_profile_config: value,
    }
  ),
  with_connector_profile_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connector_profile_config+: converted,
    }
  ),
}
