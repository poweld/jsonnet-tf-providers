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
  with_image_tag_mutability(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_tag_mutability" expected to be of type "string"';
    {
      image_tag_mutability: converted,
    }
  ),
  with_most_recent_image_tags(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"most_recent_image_tags" expected to be of type "list"';
    {
      most_recent_image_tags: converted,
    }
  ),
  with_most_recent_image_tags_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"most_recent_image_tags" expected to be of type "list"';
    {
      most_recent_image_tags+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_repository_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository_url" expected to be of type "string"';
    {
      repository_url: converted,
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
