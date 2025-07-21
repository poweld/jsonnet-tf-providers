{
  local block = self,
  new(job_id):: (
    {}
    + block.with_job_id(job_id)
  ),
  with_completed_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"completed_at" expected to be of type "string"';
    {
      completed_at: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_job_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_id" expected to be of type "string"';
    {
      job_id: converted,
    }
  ),
  with_job_invoker(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_invoker" expected to be of type "string"';
    {
      job_invoker: converted,
    }
  ),
  with_job_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_owner" expected to be of type "string"';
    {
      job_owner: converted,
    }
  ),
  with_platform_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_display_name" expected to be of type "string"';
    {
      platform_display_name: converted,
    }
  ),
  with_platform_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_id" expected to be of type "string"';
    {
      platform_id: converted,
    }
  ),
  with_profile_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_name" expected to be of type "string"';
    {
      profile_name: converted,
    }
  ),
  with_profile_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_version" expected to be of type "string"';
    {
      profile_version: converted,
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
  with_requested_by(value):: (
    local converted = value;
    assert std.isString(converted) : '"requested_by" expected to be of type "string"';
    {
      requested_by: converted,
    }
  ),
  with_revocation_record(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"revocation_record" expected to be of type "list"';
    {
      revocation_record: converted,
    }
  ),
  with_revocation_record_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"revocation_record" expected to be of type "list"';
    {
      revocation_record+: converted,
    }
  ),
  with_signature_expires_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"signature_expires_at" expected to be of type "string"';
    {
      signature_expires_at: converted,
    }
  ),
  with_signed_object(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"signed_object" expected to be of type "list"';
    {
      signed_object: converted,
    }
  ),
  with_signed_object_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"signed_object" expected to be of type "list"';
    {
      signed_object+: converted,
    }
  ),
  with_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"source" expected to be of type "list"';
    {
      source: converted,
    }
  ),
  with_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"source" expected to be of type "list"';
    {
      source+: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_status_reason(value):: (
    local converted = value;
    assert std.isString(converted) : '"status_reason" expected to be of type "string"';
    {
      status_reason: converted,
    }
  ),
}
