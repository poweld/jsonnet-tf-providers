{
  local block = self,
  new(input_bucket, role):: (
    {}
    + block.with_input_bucket(input_bucket)
    + block.with_role(role)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_aws_kms_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_kms_key_arn" expected to be of type "string"';
    {
      aws_kms_key_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_input_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"input_bucket" expected to be of type "string"';
    {
      input_bucket: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_output_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"output_bucket" expected to be of type "string"';
    {
      output_bucket: converted,
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
  with_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"role" expected to be of type "string"';
    {
      role: converted,
    }
  ),
  content_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_bucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket" expected to be of type "string"';
      {
        bucket: converted,
      }
    ),
    with_storage_class(value):: (
      local converted = value;
      assert std.isString(converted) : '"storage_class" expected to be of type "string"';
      {
        storage_class: converted,
      }
    ),
  },
  content_config_permissions:: {
    local block = self,
    new():: (
      {}
    ),
    with_access(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"access" expected to be of type "list"';
      {
        access: converted,
      }
    ),
    with_access_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"access" expected to be of type "list"';
      {
        access+: converted,
      }
    ),
    with_grantee(value):: (
      local converted = value;
      assert std.isString(converted) : '"grantee" expected to be of type "string"';
      {
        grantee: converted,
      }
    ),
    with_grantee_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"grantee_type" expected to be of type "string"';
      {
        grantee_type: converted,
      }
    ),
  },
  notifications:: {
    local block = self,
    new():: (
      {}
    ),
    with_completed(value):: (
      local converted = value;
      assert std.isString(converted) : '"completed" expected to be of type "string"';
      {
        completed: converted,
      }
    ),
    with_error(value):: (
      local converted = value;
      assert std.isString(converted) : '"error" expected to be of type "string"';
      {
        'error': converted,
      }
    ),
    with_progressing(value):: (
      local converted = value;
      assert std.isString(converted) : '"progressing" expected to be of type "string"';
      {
        progressing: converted,
      }
    ),
    with_warning(value):: (
      local converted = value;
      assert std.isString(converted) : '"warning" expected to be of type "string"';
      {
        warning: converted,
      }
    ),
  },
  thumbnail_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_bucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket" expected to be of type "string"';
      {
        bucket: converted,
      }
    ),
    with_storage_class(value):: (
      local converted = value;
      assert std.isString(converted) : '"storage_class" expected to be of type "string"';
      {
        storage_class: converted,
      }
    ),
  },
  thumbnail_config_permissions:: {
    local block = self,
    new():: (
      {}
    ),
    with_access(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"access" expected to be of type "list"';
      {
        access: converted,
      }
    ),
    with_access_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"access" expected to be of type "list"';
      {
        access+: converted,
      }
    ),
    with_grantee(value):: (
      local converted = value;
      assert std.isString(converted) : '"grantee" expected to be of type "string"';
      {
        grantee: converted,
      }
    ),
    with_grantee_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"grantee_type" expected to be of type "string"';
      {
        grantee_type: converted,
      }
    ),
  },
  with_content_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      content_config: value,
    }
  ),
  with_content_config_permissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      content_config_permissions: value,
    }
  ),
  with_notifications(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notifications: value,
    }
  ),
  with_thumbnail_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thumbnail_config: value,
    }
  ),
  with_thumbnail_config_permissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thumbnail_config_permissions: value,
    }
  ),
  with_content_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      content_config+: converted,
    }
  ),
  with_content_config_permissions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      content_config_permissions+: converted,
    }
  ),
  with_notifications_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notifications+: converted,
    }
  ),
  with_thumbnail_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thumbnail_config+: converted,
    }
  ),
  with_thumbnail_config_permissions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thumbnail_config_permissions+: converted,
    }
  ),
}
