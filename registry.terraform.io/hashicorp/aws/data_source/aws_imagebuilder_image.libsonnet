{
  local block = self,
  new(arn):: (
    {}
    + block.with_arn(arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_build_version_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"build_version_arn" expected to be of type "string"';
    {
      build_version_arn: converted,
    }
  ),
  with_container_recipe_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"container_recipe_arn" expected to be of type "string"';
    {
      container_recipe_arn: converted,
    }
  ),
  with_date_created(value):: (
    local converted = value;
    assert std.isString(converted) : '"date_created" expected to be of type "string"';
    {
      date_created: converted,
    }
  ),
  with_distribution_configuration_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"distribution_configuration_arn" expected to be of type "string"';
    {
      distribution_configuration_arn: converted,
    }
  ),
  with_enhanced_image_metadata_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enhanced_image_metadata_enabled" expected to be of type "bool"';
    {
      enhanced_image_metadata_enabled: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_image_recipe_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_recipe_arn" expected to be of type "string"';
    {
      image_recipe_arn: converted,
    }
  ),
  with_image_scanning_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"image_scanning_configuration" expected to be of type "list"';
    {
      image_scanning_configuration: converted,
    }
  ),
  with_image_scanning_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"image_scanning_configuration" expected to be of type "list"';
    {
      image_scanning_configuration+: converted,
    }
  ),
  with_image_tests_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"image_tests_configuration" expected to be of type "list"';
    {
      image_tests_configuration: converted,
    }
  ),
  with_image_tests_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"image_tests_configuration" expected to be of type "list"';
    {
      image_tests_configuration+: converted,
    }
  ),
  with_infrastructure_configuration_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"infrastructure_configuration_arn" expected to be of type "string"';
    {
      infrastructure_configuration_arn: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_os_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"os_version" expected to be of type "string"';
    {
      os_version: converted,
    }
  ),
  with_output_resources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"output_resources" expected to be of type "list"';
    {
      output_resources: converted,
    }
  ),
  with_output_resources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"output_resources" expected to be of type "list"';
    {
      output_resources+: converted,
    }
  ),
  with_platform(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform" expected to be of type "string"';
    {
      platform: converted,
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
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
}
