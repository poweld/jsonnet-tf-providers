{
  local block = self,
  new(directory_id, remote_domain_name, trust_direction, trust_password):: (
    {}
    + block.with_directory_id(directory_id)
    + block.with_remote_domain_name(remote_domain_name)
    + block.with_trust_direction(trust_direction)
    + block.with_trust_password(trust_password)
  ),
  with_conditional_forwarder_ip_addrs(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"conditional_forwarder_ip_addrs" expected to be of type "set"';
    {
      conditional_forwarder_ip_addrs: converted,
    }
  ),
  with_conditional_forwarder_ip_addrs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"conditional_forwarder_ip_addrs" expected to be of type "set"';
    {
      conditional_forwarder_ip_addrs+: converted,
    }
  ),
  with_created_date_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_date_time" expected to be of type "string"';
    {
      created_date_time: converted,
    }
  ),
  with_delete_associated_conditional_forwarder(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"delete_associated_conditional_forwarder" expected to be of type "bool"';
    {
      delete_associated_conditional_forwarder: converted,
    }
  ),
  with_directory_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_updated_date_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_date_time" expected to be of type "string"';
    {
      last_updated_date_time: converted,
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
  with_remote_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"remote_domain_name" expected to be of type "string"';
    {
      remote_domain_name: converted,
    }
  ),
  with_selective_auth(value):: (
    local converted = value;
    assert std.isString(converted) : '"selective_auth" expected to be of type "string"';
    {
      selective_auth: converted,
    }
  ),
  with_state_last_updated_date_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"state_last_updated_date_time" expected to be of type "string"';
    {
      state_last_updated_date_time: converted,
    }
  ),
  with_trust_direction(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_direction" expected to be of type "string"';
    {
      trust_direction: converted,
    }
  ),
  with_trust_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_password" expected to be of type "string"';
    {
      trust_password: converted,
    }
  ),
  with_trust_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_state" expected to be of type "string"';
    {
      trust_state: converted,
    }
  ),
  with_trust_state_reason(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_state_reason" expected to be of type "string"';
    {
      trust_state_reason: converted,
    }
  ),
  with_trust_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_type" expected to be of type "string"';
    {
      trust_type: converted,
    }
  ),
}
