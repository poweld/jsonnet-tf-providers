{
  local block = self,
  new():: (
    {}
  ),
  with_access_grants_instance_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_grants_instance_arn" expected to be of type "string"';
    {
      access_grants_instance_arn: converted,
    }
  ),
  with_access_grants_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_grants_instance_id" expected to be of type "string"';
    {
      access_grants_instance_id: converted,
    }
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity_center_application_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_center_application_arn" expected to be of type "string"';
    {
      identity_center_application_arn: converted,
    }
  ),
  with_identity_center_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_center_arn" expected to be of type "string"';
    {
      identity_center_arn: converted,
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
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
}
