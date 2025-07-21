{
  local block = self,
  new(account, domain_name):: (
    {}
    + block.with_account(account)
    + block.with_domain_name(domain_name)
  ),
  with_account(value):: (
    local converted = value;
    assert std.isString(converted) : '"account" expected to be of type "string"';
    {
      account: converted,
    }
  ),
  with_authorized_principal(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authorized_principal" expected to be of type "list"';
    {
      authorized_principal: converted,
    }
  ),
  with_authorized_principal_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authorized_principal" expected to be of type "list"';
    {
      authorized_principal+: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
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
}
