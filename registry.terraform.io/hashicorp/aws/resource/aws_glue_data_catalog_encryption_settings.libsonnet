{
  local block = self,
  new():: (
    {}
  ),
  with_catalog_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
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
  data_catalog_encryption_settings:: {
    local block = self,
    new():: (
      {}
    ),
    connection_password_encryption:: {
      local block = self,
      new(return_connection_password_encrypted):: (
        {}
        + block.with_return_connection_password_encrypted(return_connection_password_encrypted)
      ),
      with_aws_kms_key_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"aws_kms_key_id" expected to be of type "string"';
        {
          aws_kms_key_id: converted,
        }
      ),
      with_return_connection_password_encrypted(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"return_connection_password_encrypted" expected to be of type "bool"';
        {
          return_connection_password_encrypted: converted,
        }
      ),
    },
    encryption_at_rest:: {
      local block = self,
      new(catalog_encryption_mode):: (
        {}
        + block.with_catalog_encryption_mode(catalog_encryption_mode)
      ),
      with_catalog_encryption_mode(value):: (
        local converted = value;
        assert std.isString(converted) : '"catalog_encryption_mode" expected to be of type "string"';
        {
          catalog_encryption_mode: converted,
        }
      ),
      with_catalog_encryption_service_role(value):: (
        local converted = value;
        assert std.isString(converted) : '"catalog_encryption_service_role" expected to be of type "string"';
        {
          catalog_encryption_service_role: converted,
        }
      ),
      with_sse_aws_kms_key_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"sse_aws_kms_key_id" expected to be of type "string"';
        {
          sse_aws_kms_key_id: converted,
        }
      ),
    },
    with_connection_password_encryption(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connection_password_encryption: value,
      }
    ),
    with_encryption_at_rest(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        encryption_at_rest: value,
      }
    ),
    with_connection_password_encryption_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connection_password_encryption+: converted,
      }
    ),
    with_encryption_at_rest_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        encryption_at_rest+: converted,
      }
    ),
  },
  with_data_catalog_encryption_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_catalog_encryption_settings: value,
    }
  ),
  with_data_catalog_encryption_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_catalog_encryption_settings+: converted,
    }
  ),
}
