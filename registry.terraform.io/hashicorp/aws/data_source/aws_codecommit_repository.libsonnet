{
  local block = self,
  new(repository_name):: (
    {}
    + block.with_repository_name(repository_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_clone_url_http(value):: (
    local converted = value;
    assert std.isString(converted) : '"clone_url_http" expected to be of type "string"';
    {
      clone_url_http: converted,
    }
  ),
  with_clone_url_ssh(value):: (
    local converted = value;
    assert std.isString(converted) : '"clone_url_ssh" expected to be of type "string"';
    {
      clone_url_ssh: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
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
  with_repository_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository_id" expected to be of type "string"';
    {
      repository_id: converted,
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
