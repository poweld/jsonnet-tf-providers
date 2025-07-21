{
  local block = self,
  new(access_grants_location_id, permission):: (
    {}
    + block.with_access_grants_location_id(access_grants_location_id)
    + block.with_permission(permission)
  ),
  with_access_grant_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_grant_arn" expected to be of type "string"';
    {
      access_grant_arn: converted,
    }
  ),
  with_access_grant_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_grant_id" expected to be of type "string"';
    {
      access_grant_id: converted,
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
  with_grant_scope(value):: (
    local converted = value;
    assert std.isString(converted) : '"grant_scope" expected to be of type "string"';
    {
      grant_scope: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_permission(value):: (
    local converted = value;
    assert std.isString(converted) : '"permission" expected to be of type "string"';
    {
      permission: converted,
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
  with_s3_prefix_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_prefix_type" expected to be of type "string"';
    {
      s3_prefix_type: converted,
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
  access_grants_location_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_s3_sub_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_sub_prefix" expected to be of type "string"';
      {
        s3_sub_prefix: converted,
      }
    ),
  },
  grantee:: {
    local block = self,
    new(grantee_identifier, grantee_type):: (
      {}
      + block.with_grantee_identifier(grantee_identifier)
      + block.with_grantee_type(grantee_type)
    ),
    with_grantee_identifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"grantee_identifier" expected to be of type "string"';
      {
        grantee_identifier: converted,
      }
    ),
    with_grantee_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"grantee_type" expected to be of type "string"';
      {
        grantee_type: converted,
      }
    ),
  },
  with_access_grants_location_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_grants_location_configuration: value,
    }
  ),
  with_grantee(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      grantee: value,
    }
  ),
  with_access_grants_location_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_grants_location_configuration+: converted,
    }
  ),
  with_grantee_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      grantee+: converted,
    }
  ),
}
