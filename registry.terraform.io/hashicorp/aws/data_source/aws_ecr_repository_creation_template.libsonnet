{
  local block = self,
  new(prefix):: (
    {}
    + block.with_prefix(prefix)
  ),
  with_applied_for(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"applied_for" expected to be of type "set"';
    {
      applied_for: converted,
    }
  ),
  with_applied_for_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"applied_for" expected to be of type "set"';
    {
      applied_for+: converted,
    }
  ),
  with_custom_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_role_arn" expected to be of type "string"';
    {
      custom_role_arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_encryption_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"encryption_configuration" expected to be of type "list"';
    {
      encryption_configuration: converted,
    }
  ),
  with_encryption_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"encryption_configuration" expected to be of type "list"';
    {
      encryption_configuration+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_image_tag_mutability(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_tag_mutability" expected to be of type "string"';
    {
      image_tag_mutability: converted,
    }
  ),
  with_lifecycle_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"lifecycle_policy" expected to be of type "string"';
    {
      lifecycle_policy: converted,
    }
  ),
  with_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"prefix" expected to be of type "string"';
    {
      prefix: converted,
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
  with_registry_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"registry_id" expected to be of type "string"';
    {
      registry_id: converted,
    }
  ),
  with_repository_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository_policy" expected to be of type "string"';
    {
      repository_policy: converted,
    }
  ),
  with_resource_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"resource_tags" expected to be of type "map"';
    {
      resource_tags: converted,
    }
  ),
}
