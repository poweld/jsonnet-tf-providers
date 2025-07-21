{
  local block = self,
  new(hosted_zone_id, key_management_service_arn, name):: (
    {}
    + block.with_hosted_zone_id(hosted_zone_id)
    + block.with_key_management_service_arn(key_management_service_arn)
    + block.with_name(name)
  ),
  with_digest_algorithm_mnemonic(value):: (
    local converted = value;
    assert std.isString(converted) : '"digest_algorithm_mnemonic" expected to be of type "string"';
    {
      digest_algorithm_mnemonic: converted,
    }
  ),
  with_digest_algorithm_type(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"digest_algorithm_type" expected to be of type "number"';
    {
      digest_algorithm_type: converted,
    }
  ),
  with_digest_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"digest_value" expected to be of type "string"';
    {
      digest_value: converted,
    }
  ),
  with_dnskey_record(value):: (
    local converted = value;
    assert std.isString(converted) : '"dnskey_record" expected to be of type "string"';
    {
      dnskey_record: converted,
    }
  ),
  with_ds_record(value):: (
    local converted = value;
    assert std.isString(converted) : '"ds_record" expected to be of type "string"';
    {
      ds_record: converted,
    }
  ),
  with_flag(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"flag" expected to be of type "number"';
    {
      flag: converted,
    }
  ),
  with_hosted_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"hosted_zone_id" expected to be of type "string"';
    {
      hosted_zone_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_key_management_service_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_management_service_arn" expected to be of type "string"';
    {
      key_management_service_arn: converted,
    }
  ),
  with_key_tag(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"key_tag" expected to be of type "number"';
    {
      key_tag: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_public_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_key" expected to be of type "string"';
    {
      public_key: converted,
    }
  ),
  with_signing_algorithm_mnemonic(value):: (
    local converted = value;
    assert std.isString(converted) : '"signing_algorithm_mnemonic" expected to be of type "string"';
    {
      signing_algorithm_mnemonic: converted,
    }
  ),
  with_signing_algorithm_type(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"signing_algorithm_type" expected to be of type "number"';
    {
      signing_algorithm_type: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
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
