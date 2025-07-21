{
  local block = self,
  new(domain, mail_from_domain):: (
    {}
    + block.with_domain(domain)
    + block.with_mail_from_domain(mail_from_domain)
  ),
  with_behavior_on_mx_failure(value):: (
    local converted = value;
    assert std.isString(converted) : '"behavior_on_mx_failure" expected to be of type "string"';
    {
      behavior_on_mx_failure: converted,
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
  with_mail_from_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"mail_from_domain" expected to be of type "string"';
    {
      mail_from_domain: converted,
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
