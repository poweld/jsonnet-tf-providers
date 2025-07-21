{
  local block = self,
  new(kms_key_id, mode, resource_arn):: (
    {}
    + block.with_kms_key_id(kms_key_id)
    + block.with_mode(mode)
    + block.with_resource_arn(resource_arn)
  ),
  with_engine_native_audit_fields_included(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"engine_native_audit_fields_included" expected to be of type "bool"';
    {
      engine_native_audit_fields_included: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kinesis_stream_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"kinesis_stream_name" expected to be of type "string"';
    {
      kinesis_stream_name: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"mode" expected to be of type "string"';
    {
      mode: converted,
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
  with_resource_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
    {
      resource_arn: converted,
    }
  ),
}
