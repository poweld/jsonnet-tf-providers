{
  local block = self,
  new(volume_id):: (
    {}
    + block.with_volume_id(volume_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_data_encryption_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_encryption_key_id" expected to be of type "string"';
    {
      data_encryption_key_id: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_encrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
    {
      encrypted: converted,
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
  with_outpost_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"outpost_arn" expected to be of type "string"';
    {
      outpost_arn: converted,
    }
  ),
  with_owner_alias(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_alias" expected to be of type "string"';
    {
      owner_alias: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
    }
  ),
  with_permanent_restore(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"permanent_restore" expected to be of type "bool"';
    {
      permanent_restore: converted,
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
  with_storage_tier(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_tier" expected to be of type "string"';
    {
      storage_tier: converted,
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
  with_temporary_restore_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"temporary_restore_days" expected to be of type "number"';
    {
      temporary_restore_days: converted,
    }
  ),
  with_volume_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_id" expected to be of type "string"';
    {
      volume_id: converted,
    }
  ),
  with_volume_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"volume_size" expected to be of type "number"';
    {
      volume_size: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
