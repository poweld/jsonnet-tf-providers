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
  with_association_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"association_id" expected to be of type "string"';
    {
      association_id: converted,
    }
  ),
  with_connection_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_arn" expected to be of type "string"';
    {
      connection_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner" expected to be of type "string"';
    {
      owner: converted,
    }
  ),
  with_provider_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_type" expected to be of type "string"';
    {
      provider_type: converted,
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
  with_s3_repository_details(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"s3_repository_details" expected to be of type "list"';
    {
      s3_repository_details: converted,
    }
  ),
  with_s3_repository_details_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"s3_repository_details" expected to be of type "list"';
    {
      s3_repository_details+: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_state_reason(value):: (
    local converted = value;
    assert std.isString(converted) : '"state_reason" expected to be of type "string"';
    {
      state_reason: converted,
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
  kms_key_details:: {
    local block = self,
    new():: (
      {}
    ),
    with_encryption_option(value):: (
      local converted = value;
      assert std.isString(converted) : '"encryption_option" expected to be of type "string"';
      {
        encryption_option: converted,
      }
    ),
    with_kms_key_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
  },
  repository:: {
    local block = self,
    new():: (
      {}
    ),
    bitbucket:: {
      local block = self,
      new(connection_arn, name, owner):: (
        {}
        + block.with_connection_arn(connection_arn)
        + block.with_name(name)
        + block.with_owner(owner)
      ),
      with_connection_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"connection_arn" expected to be of type "string"';
        {
          connection_arn: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_owner(value):: (
        local converted = value;
        assert std.isString(converted) : '"owner" expected to be of type "string"';
        {
          owner: converted,
        }
      ),
    },
    codecommit:: {
      local block = self,
      new(name):: (
        {}
        + block.with_name(name)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    github_enterprise_server:: {
      local block = self,
      new(connection_arn, name, owner):: (
        {}
        + block.with_connection_arn(connection_arn)
        + block.with_name(name)
        + block.with_owner(owner)
      ),
      with_connection_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"connection_arn" expected to be of type "string"';
        {
          connection_arn: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_owner(value):: (
        local converted = value;
        assert std.isString(converted) : '"owner" expected to be of type "string"';
        {
          owner: converted,
        }
      ),
    },
    s3_bucket:: {
      local block = self,
      new(bucket_name, name):: (
        {}
        + block.with_bucket_name(bucket_name)
        + block.with_name(name)
      ),
      with_bucket_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    with_bitbucket(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bitbucket: value,
      }
    ),
    with_codecommit(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        codecommit: value,
      }
    ),
    with_github_enterprise_server(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        github_enterprise_server: value,
      }
    ),
    with_s3_bucket(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_bucket: value,
      }
    ),
    with_bitbucket_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bitbucket+: converted,
      }
    ),
    with_codecommit_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        codecommit+: converted,
      }
    ),
    with_github_enterprise_server_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        github_enterprise_server+: converted,
      }
    ),
    with_s3_bucket_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_bucket+: converted,
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
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_kms_key_details(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kms_key_details: value,
    }
  ),
  with_repository(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      repository: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_kms_key_details_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kms_key_details+: converted,
    }
  ),
  with_repository_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      repository+: converted,
    }
  ),
}
