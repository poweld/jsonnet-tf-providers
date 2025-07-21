{
  local block = self,
  new():: (
    {}
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
  logging_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_embedding_data_delivery_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"embedding_data_delivery_enabled" expected to be of type "bool"';
      {
        embedding_data_delivery_enabled: converted,
      }
    ),
    with_image_data_delivery_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"image_data_delivery_enabled" expected to be of type "bool"';
      {
        image_data_delivery_enabled: converted,
      }
    ),
    with_text_data_delivery_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"text_data_delivery_enabled" expected to be of type "bool"';
      {
        text_data_delivery_enabled: converted,
      }
    ),
    with_video_data_delivery_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"video_data_delivery_enabled" expected to be of type "bool"';
      {
        video_data_delivery_enabled: converted,
      }
    ),
    cloudwatch_config:: {
      local block = self,
      new():: (
        {}
      ),
      with_log_group_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      large_data_delivery_s3_config:: {
        local block = self,
        new():: (
          {}
        ),
        with_bucket_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
          {
            bucket_name: converted,
          }
        ),
        with_key_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"key_prefix" expected to be of type "string"';
          {
            key_prefix: converted,
          }
        ),
      },
      with_large_data_delivery_s3_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          large_data_delivery_s3_config: value,
        }
      ),
      with_large_data_delivery_s3_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          large_data_delivery_s3_config+: converted,
        }
      ),
    },
    s3_config:: {
      local block = self,
      new():: (
        {}
      ),
      with_bucket_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
      with_key_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"key_prefix" expected to be of type "string"';
        {
          key_prefix: converted,
        }
      ),
    },
    with_cloudwatch_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_config: value,
      }
    ),
    with_s3_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_config: value,
      }
    ),
    with_cloudwatch_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_config+: converted,
      }
    ),
    with_s3_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_config+: converted,
      }
    ),
  },
  with_logging_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_config: value,
    }
  ),
  with_logging_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_config+: converted,
    }
  ),
}
