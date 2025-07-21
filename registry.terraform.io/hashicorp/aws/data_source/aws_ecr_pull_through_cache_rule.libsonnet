{
  local block = self,
  new(ecr_repository_prefix):: (
    {}
    + block.with_ecr_repository_prefix(ecr_repository_prefix)
  ),
  with_credential_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"credential_arn" expected to be of type "string"';
    {
      credential_arn: converted,
    }
  ),
  with_custom_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_role_arn" expected to be of type "string"';
    {
      custom_role_arn: converted,
    }
  ),
  with_ecr_repository_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"ecr_repository_prefix" expected to be of type "string"';
    {
      ecr_repository_prefix: converted,
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
  with_registry_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"registry_id" expected to be of type "string"';
    {
      registry_id: converted,
    }
  ),
  with_upstream_registry_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"upstream_registry_url" expected to be of type "string"';
    {
      upstream_registry_url: converted,
    }
  ),
  with_upstream_repository_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"upstream_repository_prefix" expected to be of type "string"';
    {
      upstream_repository_prefix: converted,
    }
  ),
}
