{
  local block = self,
  new(domain):: (
    {}
    + block.with_domain(domain)
  ),
  with_dkim_tokens(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dkim_tokens" expected to be of type "list"';
    {
      dkim_tokens: converted,
    }
  ),
  with_dkim_tokens_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dkim_tokens" expected to be of type "list"';
    {
      dkim_tokens+: converted,
    }
  ),
  with_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
