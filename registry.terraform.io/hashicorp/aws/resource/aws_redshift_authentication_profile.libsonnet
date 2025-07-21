{
  local block = self,
  new(authentication_profile_content, authentication_profile_name):: (
    {}
    + block.with_authentication_profile_content(authentication_profile_content)
    + block.with_authentication_profile_name(authentication_profile_name)
  ),
  with_authentication_profile_content(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_profile_content" expected to be of type "string"';
    {
      authentication_profile_content: converted,
    }
  ),
  with_authentication_profile_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_profile_name" expected to be of type "string"';
    {
      authentication_profile_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
}
