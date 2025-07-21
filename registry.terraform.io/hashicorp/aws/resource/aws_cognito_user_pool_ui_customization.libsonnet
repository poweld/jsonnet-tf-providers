{
  local block = self,
  new(user_pool_id):: (
    {}
    + block.with_user_pool_id(user_pool_id)
  ),
  with_client_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_id" expected to be of type "string"';
    {
      client_id: converted,
    }
  ),
  with_creation_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_date" expected to be of type "string"';
    {
      creation_date: converted,
    }
  ),
  with_css(value):: (
    local converted = value;
    assert std.isString(converted) : '"css" expected to be of type "string"';
    {
      css: converted,
    }
  ),
  with_css_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"css_version" expected to be of type "string"';
    {
      css_version: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_image_file(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_file" expected to be of type "string"';
    {
      image_file: converted,
    }
  ),
  with_image_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_url" expected to be of type "string"';
    {
      image_url: converted,
    }
  ),
  with_last_modified_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_date" expected to be of type "string"';
    {
      last_modified_date: converted,
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
  with_user_pool_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
    {
      user_pool_id: converted,
    }
  ),
}
