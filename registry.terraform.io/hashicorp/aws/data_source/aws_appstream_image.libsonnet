{
  local block = self,
  new():: (
    {}
  ),
  with_applications(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"applications" expected to be of type "list"';
    {
      applications: converted,
    }
  ),
  with_applications_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"applications" expected to be of type "list"';
    {
      applications+: converted,
    }
  ),
  with_appstream_agent_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"appstream_agent_version" expected to be of type "string"';
    {
      appstream_agent_version: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_base_image_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_image_arn" expected to be of type "string"';
    {
      base_image_arn: converted,
    }
  ),
  with_created_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_time" expected to be of type "string"';
    {
      created_time: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  with_image_builder_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_builder_name" expected to be of type "string"';
    {
      image_builder_name: converted,
    }
  ),
  with_image_builder_supported(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"image_builder_supported" expected to be of type "bool"';
    {
      image_builder_supported: converted,
    }
  ),
  with_image_permissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"image_permissions" expected to be of type "list"';
    {
      image_permissions: converted,
    }
  ),
  with_image_permissions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"image_permissions" expected to be of type "list"';
    {
      image_permissions+: converted,
    }
  ),
  with_most_recent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"most_recent" expected to be of type "bool"';
    {
      most_recent: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_name_regex(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_regex" expected to be of type "string"';
    {
      name_regex: converted,
    }
  ),
  with_platform(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform" expected to be of type "string"';
    {
      platform: converted,
    }
  ),
  with_public_base_image_released_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_base_image_released_date" expected to be of type "string"';
    {
      public_base_image_released_date: converted,
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
  with_state_change_reason(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"state_change_reason" expected to be of type "list"';
    {
      state_change_reason: converted,
    }
  ),
  with_state_change_reason_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"state_change_reason" expected to be of type "list"';
    {
      state_change_reason+: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
