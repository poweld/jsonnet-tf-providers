{
  local block = self,
  new(domain_name, service_arn):: (
    {}
    + block.with_domain_name(domain_name)
    + block.with_service_arn(service_arn)
  ),
  with_certificate_validation_records(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_validation_records" expected to be of type "set"';
    {
      certificate_validation_records: converted,
    }
  ),
  with_certificate_validation_records_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_validation_records" expected to be of type "set"';
    {
      certificate_validation_records+: converted,
    }
  ),
  with_dns_target(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_target" expected to be of type "string"';
    {
      dns_target: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  with_enable_www_subdomain(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_www_subdomain" expected to be of type "bool"';
    {
      enable_www_subdomain: converted,
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
  with_service_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_arn" expected to be of type "string"';
    {
      service_arn: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
