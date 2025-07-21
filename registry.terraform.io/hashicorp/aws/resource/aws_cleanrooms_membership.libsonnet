{
  local block = self,
  new(collaboration_id, query_log_status):: (
    {}
    + block.with_collaboration_id(collaboration_id)
    + block.with_query_log_status(query_log_status)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_collaboration_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"collaboration_arn" expected to be of type "string"';
    {
      collaboration_arn: converted,
    }
  ),
  with_collaboration_creator_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"collaboration_creator_account_id" expected to be of type "string"';
    {
      collaboration_creator_account_id: converted,
    }
  ),
  with_collaboration_creator_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"collaboration_creator_display_name" expected to be of type "string"';
    {
      collaboration_creator_display_name: converted,
    }
  ),
  with_collaboration_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"collaboration_id" expected to be of type "string"';
    {
      collaboration_id: converted,
    }
  ),
  with_collaboration_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"collaboration_name" expected to be of type "string"';
    {
      collaboration_name: converted,
    }
  ),
  with_create_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"create_time" expected to be of type "string"';
    {
      create_time: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_member_abilities(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"member_abilities" expected to be of type "list"';
    {
      member_abilities: converted,
    }
  ),
  with_member_abilities_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"member_abilities" expected to be of type "list"';
    {
      member_abilities+: converted,
    }
  ),
  with_query_log_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"query_log_status" expected to be of type "string"';
    {
      query_log_status: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  with_update_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"update_time" expected to be of type "string"';
    {
      update_time: converted,
    }
  ),
  default_result_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    output_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      s3:: {
        local block = self,
        new(bucket, result_format):: (
          {}
          + block.with_bucket(bucket)
          + block.with_result_format(result_format)
        ),
        with_bucket(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket" expected to be of type "string"';
          {
            bucket: converted,
          }
        ),
        with_key_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"key_prefix" expected to be of type "string"';
          {
            key_prefix: converted,
          }
        ),
        with_result_format(value):: (
          local converted = value;
          assert std.isString(converted) : '"result_format" expected to be of type "string"';
          {
            result_format: converted,
          }
        ),
      },
      with_s3(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3: value,
        }
      ),
      with_s3_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3+: converted,
        }
      ),
    },
    with_output_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        output_configuration: value,
      }
    ),
    with_output_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        output_configuration+: converted,
      }
    ),
  },
  payment_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    query_compute:: {
      local block = self,
      new(is_responsible):: (
        {}
        + block.with_is_responsible(is_responsible)
      ),
      with_is_responsible(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"is_responsible" expected to be of type "bool"';
        {
          is_responsible: converted,
        }
      ),
    },
    with_query_compute(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_compute: value,
      }
    ),
    with_query_compute_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_compute+: converted,
      }
    ),
  },
  with_default_result_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_result_configuration: value,
    }
  ),
  with_payment_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      payment_configuration: value,
    }
  ),
  with_default_result_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_result_configuration+: converted,
    }
  ),
  with_payment_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      payment_configuration+: converted,
    }
  ),
}
