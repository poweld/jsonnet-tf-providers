{
  local block = self,
  new(description, workteam_name):: (
    {}
    + block.with_description(description)
    + block.with_workteam_name(workteam_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_subdomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"subdomain" expected to be of type "string"';
    {
      subdomain: converted,
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
  with_workforce_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"workforce_name" expected to be of type "string"';
    {
      workforce_name: converted,
    }
  ),
  with_workteam_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"workteam_name" expected to be of type "string"';
    {
      workteam_name: converted,
    }
  ),
  member_definition:: {
    local block = self,
    new():: (
      {}
    ),
    cognito_member_definition:: {
      local block = self,
      new(client_id, user_group, user_pool):: (
        {}
        + block.with_client_id(client_id)
        + block.with_user_group(user_group)
        + block.with_user_pool(user_pool)
      ),
      with_client_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"client_id" expected to be of type "string"';
        {
          client_id: converted,
        }
      ),
      with_user_group(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_group" expected to be of type "string"';
        {
          user_group: converted,
        }
      ),
      with_user_pool(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_pool" expected to be of type "string"';
        {
          user_pool: converted,
        }
      ),
    },
    oidc_member_definition:: {
      local block = self,
      new(groups):: (
        {}
        + block.with_groups(groups)
      ),
      with_groups(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
        {
          groups: converted,
        }
      ),
      with_groups_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
        {
          groups+: converted,
        }
      ),
    },
    with_cognito_member_definition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cognito_member_definition: value,
      }
    ),
    with_oidc_member_definition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oidc_member_definition: value,
      }
    ),
    with_cognito_member_definition_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cognito_member_definition+: converted,
      }
    ),
    with_oidc_member_definition_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oidc_member_definition+: converted,
      }
    ),
  },
  notification_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_notification_topic_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"notification_topic_arn" expected to be of type "string"';
      {
        notification_topic_arn: converted,
      }
    ),
  },
  worker_access_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    s3_presign:: {
      local block = self,
      new():: (
        {}
      ),
      iam_policy_constraints:: {
        local block = self,
        new():: (
          {}
        ),
        with_source_ip(value):: (
          local converted = value;
          assert std.isString(converted) : '"source_ip" expected to be of type "string"';
          {
            source_ip: converted,
          }
        ),
        with_vpc_source_ip(value):: (
          local converted = value;
          assert std.isString(converted) : '"vpc_source_ip" expected to be of type "string"';
          {
            vpc_source_ip: converted,
          }
        ),
      },
      with_iam_policy_constraints(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          iam_policy_constraints: value,
        }
      ),
      with_iam_policy_constraints_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          iam_policy_constraints+: converted,
        }
      ),
    },
    with_s3_presign(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_presign: value,
      }
    ),
    with_s3_presign_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_presign+: converted,
      }
    ),
  },
  with_member_definition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      member_definition: value,
    }
  ),
  with_notification_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_configuration: value,
    }
  ),
  with_worker_access_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      worker_access_configuration: value,
    }
  ),
  with_member_definition_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      member_definition+: converted,
    }
  ),
  with_notification_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_configuration+: converted,
    }
  ),
  with_worker_access_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      worker_access_configuration+: converted,
    }
  ),
}
