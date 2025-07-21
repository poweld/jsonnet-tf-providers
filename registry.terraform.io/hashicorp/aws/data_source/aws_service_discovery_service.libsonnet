{
  local block = self,
  new(name, namespace_id):: (
    {}
    + block.with_name(name)
    + block.with_namespace_id(namespace_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_dns_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_config" expected to be of type "list"';
    {
      dns_config: converted,
    }
  ),
  with_dns_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_config" expected to be of type "list"';
    {
      dns_config+: converted,
    }
  ),
  with_health_check_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"health_check_config" expected to be of type "list"';
    {
      health_check_config: converted,
    }
  ),
  with_health_check_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"health_check_config" expected to be of type "list"';
    {
      health_check_config+: converted,
    }
  ),
  with_health_check_custom_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"health_check_custom_config" expected to be of type "list"';
    {
      health_check_custom_config: converted,
    }
  ),
  with_health_check_custom_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"health_check_custom_config" expected to be of type "list"';
    {
      health_check_custom_config+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_namespace_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace_id" expected to be of type "string"';
    {
      namespace_id: converted,
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
}
