{
  local block = self,
  new(custom_domain_certificate_arn, custom_domain_name, workgroup_name):: (
    {}
    + block.with_custom_domain_certificate_arn(custom_domain_certificate_arn)
    + block.with_custom_domain_name(custom_domain_name)
    + block.with_workgroup_name(workgroup_name)
  ),
  with_custom_domain_certificate_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_domain_certificate_arn" expected to be of type "string"';
    {
      custom_domain_certificate_arn: converted,
    }
  ),
  with_custom_domain_certificate_expiry_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_domain_certificate_expiry_time" expected to be of type "string"';
    {
      custom_domain_certificate_expiry_time: converted,
    }
  ),
  with_custom_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_domain_name" expected to be of type "string"';
    {
      custom_domain_name: converted,
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
  with_workgroup_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"workgroup_name" expected to be of type "string"';
    {
      workgroup_name: converted,
    }
  ),
}
