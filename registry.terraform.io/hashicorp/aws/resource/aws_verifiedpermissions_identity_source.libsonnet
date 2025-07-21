{
  local block = self,
  new(policy_store_id):: (
    {}
    + block.with_policy_store_id(policy_store_id)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_policy_store_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_store_id" expected to be of type "string"';
    {
      policy_store_id: converted,
    }
  ),
  with_principal_entity_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_entity_type" expected to be of type "string"';
    {
      principal_entity_type: converted,
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
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    cognito_user_pool_configuration:: {
      local block = self,
      new(user_pool_arn):: (
        {}
        + block.with_user_pool_arn(user_pool_arn)
      ),
      with_client_ids(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"client_ids" expected to be of type "list"';
        {
          client_ids: converted,
        }
      ),
      with_client_ids_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"client_ids" expected to be of type "list"';
        {
          client_ids+: converted,
        }
      ),
      with_user_pool_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_pool_arn" expected to be of type "string"';
        {
          user_pool_arn: converted,
        }
      ),
      group_configuration:: {
        local block = self,
        new(group_entity_type):: (
          {}
          + block.with_group_entity_type(group_entity_type)
        ),
        with_group_entity_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"group_entity_type" expected to be of type "string"';
          {
            group_entity_type: converted,
          }
        ),
      },
      with_group_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          group_configuration: value,
        }
      ),
      with_group_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          group_configuration+: converted,
        }
      ),
    },
    open_id_connect_configuration:: {
      local block = self,
      new(issuer):: (
        {}
        + block.with_issuer(issuer)
      ),
      with_entity_id_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"entity_id_prefix" expected to be of type "string"';
        {
          entity_id_prefix: converted,
        }
      ),
      with_issuer(value):: (
        local converted = value;
        assert std.isString(converted) : '"issuer" expected to be of type "string"';
        {
          issuer: converted,
        }
      ),
      group_configuration:: {
        local block = self,
        new(group_claim, group_entity_type):: (
          {}
          + block.with_group_claim(group_claim)
          + block.with_group_entity_type(group_entity_type)
        ),
        with_group_claim(value):: (
          local converted = value;
          assert std.isString(converted) : '"group_claim" expected to be of type "string"';
          {
            group_claim: converted,
          }
        ),
        with_group_entity_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"group_entity_type" expected to be of type "string"';
          {
            group_entity_type: converted,
          }
        ),
      },
      token_selection:: {
        local block = self,
        new():: (
          {}
        ),
        access_token_only:: {
          local block = self,
          new():: (
            {}
          ),
          with_audiences(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"audiences" expected to be of type "list"';
            {
              audiences: converted,
            }
          ),
          with_audiences_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"audiences" expected to be of type "list"';
            {
              audiences+: converted,
            }
          ),
          with_principal_id_claim(value):: (
            local converted = value;
            assert std.isString(converted) : '"principal_id_claim" expected to be of type "string"';
            {
              principal_id_claim: converted,
            }
          ),
        },
        identity_token_only:: {
          local block = self,
          new():: (
            {}
          ),
          with_client_ids(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"client_ids" expected to be of type "list"';
            {
              client_ids: converted,
            }
          ),
          with_client_ids_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"client_ids" expected to be of type "list"';
            {
              client_ids+: converted,
            }
          ),
          with_principal_id_claim(value):: (
            local converted = value;
            assert std.isString(converted) : '"principal_id_claim" expected to be of type "string"';
            {
              principal_id_claim: converted,
            }
          ),
        },
        with_access_token_only(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            access_token_only: value,
          }
        ),
        with_identity_token_only(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            identity_token_only: value,
          }
        ),
        with_access_token_only_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            access_token_only+: converted,
          }
        ),
        with_identity_token_only_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            identity_token_only+: converted,
          }
        ),
      },
      with_group_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          group_configuration: value,
        }
      ),
      with_token_selection(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          token_selection: value,
        }
      ),
      with_group_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          group_configuration+: converted,
        }
      ),
      with_token_selection_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          token_selection+: converted,
        }
      ),
    },
    with_cognito_user_pool_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cognito_user_pool_configuration: value,
      }
    ),
    with_open_id_connect_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        open_id_connect_configuration: value,
      }
    ),
    with_cognito_user_pool_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cognito_user_pool_configuration+: converted,
      }
    ),
    with_open_id_connect_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        open_id_connect_configuration+: converted,
      }
    ),
  },
  with_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  with_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
}
