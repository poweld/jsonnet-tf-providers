{
  local block = self,
  new(directory_id, dns_ips, remote_domain_name):: (
    {}
    + block.with_directory_id(directory_id)
    + block.with_dns_ips(dns_ips)
    + block.with_remote_domain_name(remote_domain_name)
  ),
  with_directory_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
  ),
  with_dns_ips(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_ips" expected to be of type "list"';
    {
      dns_ips: converted,
    }
  ),
  with_dns_ips_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_ips" expected to be of type "list"';
    {
      dns_ips+: converted,
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
  with_remote_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"remote_domain_name" expected to be of type "string"';
    {
      remote_domain_name: converted,
    }
  ),
}
