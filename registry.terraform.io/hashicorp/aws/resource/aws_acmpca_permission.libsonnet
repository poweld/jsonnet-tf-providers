{
  local block = self,
  new(actions, certificate_authority_arn, principal):: (
    {}
    + block.with_actions(actions)
    + block.with_certificate_authority_arn(certificate_authority_arn)
    + block.with_principal(principal)
  ),
  with_actions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
    {
      actions: converted,
    }
  ),
  with_actions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
    {
      actions+: converted,
    }
  ),
  with_certificate_authority_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_authority_arn" expected to be of type "string"';
    {
      certificate_authority_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
    }
  ),
  with_principal(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal" expected to be of type "string"';
    {
      principal: converted,
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
  with_source_account(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_account" expected to be of type "string"';
    {
      source_account: converted,
    }
  ),
}
