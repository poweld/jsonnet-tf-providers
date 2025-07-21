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
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
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
  with_updated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"updated_at" expected to be of type "string"';
    {
      updated_at: converted,
    }
  ),
  action:: {
    local block = self,
    new():: (
      {}
    ),
    export_revision_to_s3:: {
      local block = self,
      new():: (
        {}
      ),
      encryption:: {
        local block = self,
        new():: (
          {}
        ),
        with_kms_key_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
          {
            kms_key_arn: converted,
          }
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
      },
      revision_destination:: {
        local block = self,
        new(bucket):: (
          {}
          + block.with_bucket(bucket)
        ),
        with_bucket(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket" expected to be of type "string"';
          {
            bucket: converted,
          }
        ),
        with_key_pattern(value):: (
          local converted = value;
          assert std.isString(converted) : '"key_pattern" expected to be of type "string"';
          {
            key_pattern: converted,
          }
        ),
      },
      with_encryption(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption: value,
        }
      ),
      with_revision_destination(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          revision_destination: value,
        }
      ),
      with_encryption_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption+: converted,
        }
      ),
      with_revision_destination_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          revision_destination+: converted,
        }
      ),
    },
    with_export_revision_to_s3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        export_revision_to_s3: value,
      }
    ),
    with_export_revision_to_s3_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        export_revision_to_s3+: converted,
      }
    ),
  },
  event:: {
    local block = self,
    new():: (
      {}
    ),
    revision_published:: {
      local block = self,
      new(data_set_id):: (
        {}
        + block.with_data_set_id(data_set_id)
      ),
      with_data_set_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_set_id" expected to be of type "string"';
        {
          data_set_id: converted,
        }
      ),
    },
    with_revision_published(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        revision_published: value,
      }
    ),
    with_revision_published_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        revision_published+: converted,
      }
    ),
  },
  with_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action: value,
    }
  ),
  with_event(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event: value,
    }
  ),
  with_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action+: converted,
    }
  ),
  with_event_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event+: converted,
    }
  ),
}
