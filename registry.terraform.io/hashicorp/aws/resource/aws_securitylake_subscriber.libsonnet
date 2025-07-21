{
  local block = self,
  new():: (
    {}
  ),
  with_access_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_type" expected to be of type "string"';
    {
      access_type: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_resource_share_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_share_arn" expected to be of type "string"';
    {
      resource_share_arn: converted,
    }
  ),
  with_resource_share_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_share_name" expected to be of type "string"';
    {
      resource_share_name: converted,
    }
  ),
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  with_s3_bucket_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket_arn" expected to be of type "string"';
    {
      s3_bucket_arn: converted,
    }
  ),
  with_subscriber_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"subscriber_description" expected to be of type "string"';
    {
      subscriber_description: converted,
    }
  ),
  with_subscriber_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"subscriber_endpoint" expected to be of type "string"';
    {
      subscriber_endpoint: converted,
    }
  ),
  with_subscriber_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"subscriber_name" expected to be of type "string"';
    {
      subscriber_name: converted,
    }
  ),
  with_subscriber_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"subscriber_status" expected to be of type "string"';
    {
      subscriber_status: converted,
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
  source:: {
    local block = self,
    new():: (
      {}
    ),
    aws_log_source_resource:: {
      local block = self,
      new(source_name):: (
        {}
        + block.with_source_name(source_name)
      ),
      with_source_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_name" expected to be of type "string"';
        {
          source_name: converted,
        }
      ),
      with_source_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_version" expected to be of type "string"';
        {
          source_version: converted,
        }
      ),
    },
    custom_log_source_resource:: {
      local block = self,
      new(source_name):: (
        {}
        + block.with_source_name(source_name)
      ),
      with_attributes(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"attributes" expected to be of type "list"';
        {
          attributes: converted,
        }
      ),
      with_attributes_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"attributes" expected to be of type "list"';
        {
          attributes+: converted,
        }
      ),
      with_provider(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"provider" expected to be of type "list"';
        {
          provider: converted,
        }
      ),
      with_provider_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"provider" expected to be of type "list"';
        {
          provider+: converted,
        }
      ),
      with_source_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_name" expected to be of type "string"';
        {
          source_name: converted,
        }
      ),
      with_source_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_version" expected to be of type "string"';
        {
          source_version: converted,
        }
      ),
    },
    with_aws_log_source_resource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_log_source_resource: value,
      }
    ),
    with_custom_log_source_resource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_log_source_resource: value,
      }
    ),
    with_aws_log_source_resource_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_log_source_resource+: converted,
      }
    ),
    with_custom_log_source_resource_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_log_source_resource+: converted,
      }
    ),
  },
  subscriber_identity:: {
    local block = self,
    new(external_id, principal):: (
      {}
      + block.with_external_id(external_id)
      + block.with_principal(principal)
    ),
    with_external_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"external_id" expected to be of type "string"';
      {
        external_id: converted,
      }
    ),
    with_principal(value):: (
      local converted = value;
      assert std.isString(converted) : '"principal" expected to be of type "string"';
      {
        principal: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source: value,
    }
  ),
  with_subscriber_identity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subscriber_identity: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source+: converted,
    }
  ),
  with_subscriber_identity_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subscriber_identity+: converted,
    }
  ),
}
