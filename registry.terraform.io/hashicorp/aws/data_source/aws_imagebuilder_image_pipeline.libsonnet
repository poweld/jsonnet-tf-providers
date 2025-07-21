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
  with_date_last_run(value):: (
    local converted = value;
    assert std.isString(converted) : '"date_last_run" expected to be of type "string"';
    {
      date_last_run: converted,
    }
  ),
  with_date_next_run(value):: (
    local converted = value;
    assert std.isString(converted) : '"date_next_run" expected to be of type "string"';
    {
      date_next_run: converted,
    }
  ),
  with_date_updated(value):: (
    local converted = value;
    assert std.isString(converted) : '"date_updated" expected to be of type "string"';
    {
      date_updated: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  with_schedule(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"schedule" expected to be of type "list"';
    {
      schedule: converted,
    }
  ),
  with_schedule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"schedule" expected to be of type "list"';
    {
      schedule+: converted,
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
}
