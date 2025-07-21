{
  local block = self,
  new(domain_id, enabled_regions, environment_blueprint_id):: (
    {}
    + block.with_domain_id(domain_id)
    + block.with_enabled_regions(enabled_regions)
    + block.with_environment_blueprint_id(environment_blueprint_id)
  ),
  with_domain_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id" expected to be of type "string"';
    {
      domain_id: converted,
    }
  ),
  with_enabled_regions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enabled_regions" expected to be of type "list"';
    {
      enabled_regions: converted,
    }
  ),
  with_enabled_regions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enabled_regions" expected to be of type "list"';
    {
      enabled_regions+: converted,
    }
  ),
  with_environment_blueprint_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_blueprint_id" expected to be of type "string"';
    {
      environment_blueprint_id: converted,
    }
  ),
  with_manage_access_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"manage_access_role_arn" expected to be of type "string"';
    {
      manage_access_role_arn: converted,
    }
  ),
  with_provisioning_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"provisioning_role_arn" expected to be of type "string"';
    {
      provisioning_role_arn: converted,
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
  with_regional_parameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"regional_parameters" expected to be of type "map"';
    {
      regional_parameters: converted,
    }
  ),
}
