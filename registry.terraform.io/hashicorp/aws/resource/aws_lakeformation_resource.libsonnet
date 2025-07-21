{
  local block = self,
  new(arn):: (
    {}
    + block.with_arn(arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_hybrid_access_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hybrid_access_enabled" expected to be of type "bool"';
    {
      hybrid_access_enabled: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_modified(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified" expected to be of type "string"';
    {
      last_modified: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  with_use_service_linked_role(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_service_linked_role" expected to be of type "bool"';
    {
      use_service_linked_role: converted,
    }
  ),
  with_with_federation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"with_federation" expected to be of type "bool"';
    {
      with_federation: converted,
    }
  ),
}
