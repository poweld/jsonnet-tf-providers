{
  local block = self,
  new(iam_role_arn, location_scope):: (
    {}
    + block.with_iam_role_arn(iam_role_arn)
    + block.with_location_scope(location_scope)
  ),
  with_access_grants_location_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_grants_location_arn" expected to be of type "string"';
    {
      access_grants_location_arn: converted,
    }
  ),
  with_access_grants_location_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_grants_location_id" expected to be of type "string"';
    {
      access_grants_location_id: converted,
    }
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_iam_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
    {
      iam_role_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_location_scope(value):: (
    local converted = value;
    assert std.isString(converted) : '"location_scope" expected to be of type "string"';
    {
      location_scope: converted,
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
