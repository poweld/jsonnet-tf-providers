{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
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
  with_force_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
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
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_bytes_scanned_cutoff_per_query(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"bytes_scanned_cutoff_per_query" expected to be of type "number"';
      {
        bytes_scanned_cutoff_per_query: converted,
      }
    ),
    with_enforce_workgroup_configuration(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enforce_workgroup_configuration" expected to be of type "bool"';
      {
        enforce_workgroup_configuration: converted,
      }
    ),
    with_execution_role(value):: (
      local converted = value;
      assert std.isString(converted) : '"execution_role" expected to be of type "string"';
      {
        execution_role: converted,
      }
    ),
    with_publish_cloudwatch_metrics_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"publish_cloudwatch_metrics_enabled" expected to be of type "bool"';
      {
        publish_cloudwatch_metrics_enabled: converted,
      }
    ),
    with_requester_pays_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"requester_pays_enabled" expected to be of type "bool"';
      {
        requester_pays_enabled: converted,
      }
    ),
    engine_version:: {
      local block = self,
      new():: (
        {}
      ),
      with_effective_engine_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"effective_engine_version" expected to be of type "string"';
        {
          effective_engine_version: converted,
        }
      ),
      with_selected_engine_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"selected_engine_version" expected to be of type "string"';
        {
          selected_engine_version: converted,
        }
      ),
    },
    result_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_expected_bucket_owner(value):: (
        local converted = value;
        assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
        {
          expected_bucket_owner: converted,
        }
      ),
      with_output_location(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_location" expected to be of type "string"';
        {
          output_location: converted,
        }
      ),
      acl_configuration:: {
        local block = self,
        new(s3_acl_option):: (
          {}
          + block.with_s3_acl_option(s3_acl_option)
        ),
        with_s3_acl_option(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_acl_option" expected to be of type "string"';
          {
            s3_acl_option: converted,
          }
        ),
      },
      encryption_configuration:: {
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
        with_kms_key_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
          {
            kms_key_arn: converted,
          }
        ),
      },
      with_acl_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          acl_configuration: value,
        }
      ),
      with_encryption_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_configuration: value,
        }
      ),
      with_acl_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          acl_configuration+: converted,
        }
      ),
      with_encryption_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_configuration+: converted,
        }
      ),
    },
    with_engine_version(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        engine_version: value,
      }
    ),
    with_result_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        result_configuration: value,
      }
    ),
    with_engine_version_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        engine_version+: converted,
      }
    ),
    with_result_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        result_configuration+: converted,
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
