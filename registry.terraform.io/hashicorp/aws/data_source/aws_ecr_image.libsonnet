{
  local block = self,
  new(repository_name):: (
    {}
    + block.with_repository_name(repository_name)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_image_digest(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_digest" expected to be of type "string"';
    {
      image_digest: converted,
    }
  ),
  with_image_pushed_at(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"image_pushed_at" expected to be of type "number"';
    {
      image_pushed_at: converted,
    }
  ),
  with_image_size_in_bytes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"image_size_in_bytes" expected to be of type "number"';
    {
      image_size_in_bytes: converted,
    }
  ),
  with_image_tag(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_tag" expected to be of type "string"';
    {
      image_tag: converted,
    }
  ),
  with_image_tags(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"image_tags" expected to be of type "list"';
    {
      image_tags: converted,
    }
  ),
  with_image_tags_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"image_tags" expected to be of type "list"';
    {
      image_tags+: converted,
    }
  ),
  with_image_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_uri" expected to be of type "string"';
    {
      image_uri: converted,
    }
  ),
  with_most_recent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"most_recent" expected to be of type "bool"';
    {
      most_recent: converted,
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
  with_repository_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository_name" expected to be of type "string"';
    {
      repository_name: converted,
    }
  ),
}
