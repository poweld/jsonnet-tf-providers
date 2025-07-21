{
  local block = self,
  new(addon_name, cluster_name):: (
    {}
    + block.with_addon_name(addon_name)
    + block.with_cluster_name(cluster_name)
  ),
  with_addon_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"addon_name" expected to be of type "string"';
    {
      addon_name: converted,
    }
  ),
  with_addon_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"addon_version" expected to be of type "string"';
    {
      addon_version: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_cluster_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
    }
  ),
  with_configuration_values(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_values" expected to be of type "string"';
    {
      configuration_values: converted,
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
  with_modified_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"modified_at" expected to be of type "string"';
    {
      modified_at: converted,
    }
  ),
  with_pod_identity_association(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"pod_identity_association" expected to be of type "set"';
    {
      pod_identity_association: converted,
    }
  ),
  with_pod_identity_association_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"pod_identity_association" expected to be of type "set"';
    {
      pod_identity_association+: converted,
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
  with_service_account_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_account_role_arn" expected to be of type "string"';
    {
      service_account_role_arn: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
}
