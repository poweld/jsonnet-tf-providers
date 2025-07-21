{
  local block = self,
  new(app_name, app_type, domain_id):: (
    {}
    + block.with_app_name(app_name)
    + block.with_app_type(app_type)
    + block.with_domain_id(domain_id)
  ),
  with_app_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_name" expected to be of type "string"';
    {
      app_name: converted,
    }
  ),
  with_app_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_type" expected to be of type "string"';
    {
      app_type: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_domain_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id" expected to be of type "string"';
    {
      domain_id: converted,
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
  with_space_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"space_name" expected to be of type "string"';
    {
      space_name: converted,
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
  with_user_profile_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_profile_name" expected to be of type "string"';
    {
      user_profile_name: converted,
    }
  ),
  resource_spec:: {
    local block = self,
    new():: (
      {}
    ),
    with_instance_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    with_lifecycle_config_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"lifecycle_config_arn" expected to be of type "string"';
      {
        lifecycle_config_arn: converted,
      }
    ),
    with_sagemaker_image_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"sagemaker_image_arn" expected to be of type "string"';
      {
        sagemaker_image_arn: converted,
      }
    ),
    with_sagemaker_image_version_alias(value):: (
      local converted = value;
      assert std.isString(converted) : '"sagemaker_image_version_alias" expected to be of type "string"';
      {
        sagemaker_image_version_alias: converted,
      }
    ),
    with_sagemaker_image_version_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"sagemaker_image_version_arn" expected to be of type "string"';
      {
        sagemaker_image_version_arn: converted,
      }
    ),
  },
  with_resource_spec(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_spec: value,
    }
  ),
  with_resource_spec_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_spec+: converted,
    }
  ),
}
