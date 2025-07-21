{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_base_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"base_capacity" expected to be of type "number"';
    {
      base_capacity: converted,
    }
  ),
  with_compute_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"compute_configuration" expected to be of type "list"';
    {
      compute_configuration: converted,
    }
  ),
  with_compute_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"compute_configuration" expected to be of type "list"';
    {
      compute_configuration+: converted,
    }
  ),
  with_compute_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"compute_type" expected to be of type "string"';
    {
      compute_type: converted,
    }
  ),
  with_created(value):: (
    local converted = value;
    assert std.isString(converted) : '"created" expected to be of type "string"';
    {
      created: converted,
    }
  ),
  with_environment_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_type" expected to be of type "string"';
    {
      environment_type: converted,
    }
  ),
  with_fleet_service_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"fleet_service_role" expected to be of type "string"';
    {
      fleet_service_role: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_image_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_id" expected to be of type "string"';
    {
      image_id: converted,
    }
  ),
  with_last_modified(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified" expected to be of type "string"';
    {
      last_modified: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_overflow_behavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"overflow_behavior" expected to be of type "string"';
    {
      overflow_behavior: converted,
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
  with_scaling_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"scaling_configuration" expected to be of type "list"';
    {
      scaling_configuration: converted,
    }
  ),
  with_scaling_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"scaling_configuration" expected to be of type "list"';
    {
      scaling_configuration+: converted,
    }
  ),
  with_status(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"status" expected to be of type "set"';
    {
      status: converted,
    }
  ),
  with_status_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"status" expected to be of type "set"';
    {
      status+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_vpc_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vpc_config" expected to be of type "list"';
    {
      vpc_config: converted,
    }
  ),
  with_vpc_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vpc_config" expected to be of type "list"';
    {
      vpc_config+: converted,
    }
  ),
}
