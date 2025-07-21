{
  local block = self,
  new(repository_name):: (
    {}
    + block.with_repository_name(repository_name)
  ),
  with_dns_suffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_suffix" expected to be of type "string"';
    {
      dns_suffix: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_image_tag(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_tag" expected to be of type "string"';
    {
      image_tag: converted,
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
  with_registry_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"registry_path" expected to be of type "string"';
    {
      registry_path: converted,
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
