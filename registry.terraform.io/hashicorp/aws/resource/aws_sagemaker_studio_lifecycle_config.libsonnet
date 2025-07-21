{
  local block = self,
  new(studio_lifecycle_config_app_type, studio_lifecycle_config_content, studio_lifecycle_config_name):: (
    {}
    + block.with_studio_lifecycle_config_app_type(studio_lifecycle_config_app_type)
    + block.with_studio_lifecycle_config_content(studio_lifecycle_config_content)
    + block.with_studio_lifecycle_config_name(studio_lifecycle_config_name)
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
  with_studio_lifecycle_config_app_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"studio_lifecycle_config_app_type" expected to be of type "string"';
    {
      studio_lifecycle_config_app_type: converted,
    }
  ),
  with_studio_lifecycle_config_content(value):: (
    local converted = value;
    assert std.isString(converted) : '"studio_lifecycle_config_content" expected to be of type "string"';
    {
      studio_lifecycle_config_content: converted,
    }
  ),
  with_studio_lifecycle_config_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"studio_lifecycle_config_name" expected to be of type "string"';
    {
      studio_lifecycle_config_name: converted,
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
}
