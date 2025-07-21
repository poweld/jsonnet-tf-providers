{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auto_resolve_best_voices_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_resolve_best_voices_enabled" expected to be of type "bool"';
    {
      auto_resolve_best_voices_enabled: converted,
    }
  ),
  with_contact_flow_logs_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"contact_flow_logs_enabled" expected to be of type "bool"';
    {
      contact_flow_logs_enabled: converted,
    }
  ),
  with_contact_lens_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"contact_lens_enabled" expected to be of type "bool"';
    {
      contact_lens_enabled: converted,
    }
  ),
  with_created_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_time" expected to be of type "string"';
    {
      created_time: converted,
    }
  ),
  with_early_media_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"early_media_enabled" expected to be of type "bool"';
    {
      early_media_enabled: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity_management_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_management_type" expected to be of type "string"';
    {
      identity_management_type: converted,
    }
  ),
  with_inbound_calls_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"inbound_calls_enabled" expected to be of type "bool"';
    {
      inbound_calls_enabled: converted,
    }
  ),
  with_instance_alias(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_alias" expected to be of type "string"';
    {
      instance_alias: converted,
    }
  ),
  with_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
    }
  ),
  with_multi_party_conference_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_party_conference_enabled" expected to be of type "bool"';
    {
      multi_party_conference_enabled: converted,
    }
  ),
  with_outbound_calls_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"outbound_calls_enabled" expected to be of type "bool"';
    {
      outbound_calls_enabled: converted,
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
  with_service_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_role" expected to be of type "string"';
    {
      service_role: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
}
