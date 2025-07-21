{
  local block = self,
  new(verifiedaccess_instance_id):: (
    {}
    + block.with_verifiedaccess_instance_id(verifiedaccess_instance_id)
  ),
  with_creation_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_time" expected to be of type "string"';
    {
      creation_time: converted,
    }
  ),
  with_deletion_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"deletion_time" expected to be of type "string"';
    {
      deletion_time: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_updated_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_time" expected to be of type "string"';
    {
      last_updated_time: converted,
    }
  ),
  with_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner" expected to be of type "string"';
    {
      owner: converted,
    }
  ),
  with_policy_document(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_document" expected to be of type "string"';
    {
      policy_document: converted,
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
  with_verifiedaccess_group_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"verifiedaccess_group_arn" expected to be of type "string"';
    {
      verifiedaccess_group_arn: converted,
    }
  ),
  with_verifiedaccess_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"verifiedaccess_group_id" expected to be of type "string"';
    {
      verifiedaccess_group_id: converted,
    }
  ),
  with_verifiedaccess_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"verifiedaccess_instance_id" expected to be of type "string"';
    {
      verifiedaccess_instance_id: converted,
    }
  ),
  sse_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_customer_managed_key_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"customer_managed_key_enabled" expected to be of type "bool"';
      {
        customer_managed_key_enabled: converted,
      }
    ),
    with_kms_key_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
      }
    ),
  },
  with_sse_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sse_configuration: value,
    }
  ),
  with_sse_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sse_configuration+: converted,
    }
  ),
}
