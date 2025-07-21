{
  local block = self,
  new(cluster_name, principal_arn):: (
    {}
    + block.with_cluster_name(cluster_name)
    + block.with_principal_arn(principal_arn)
  ),
  with_access_entry_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_entry_arn" expected to be of type "string"';
    {
      access_entry_arn: converted,
    }
  ),
  with_cluster_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
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
  with_kubernetes_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"kubernetes_groups" expected to be of type "set"';
    {
      kubernetes_groups: converted,
    }
  ),
  with_kubernetes_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"kubernetes_groups" expected to be of type "set"';
    {
      kubernetes_groups+: converted,
    }
  ),
  with_modified_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"modified_at" expected to be of type "string"';
    {
      modified_at: converted,
    }
  ),
  with_principal_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_arn" expected to be of type "string"';
    {
      principal_arn: converted,
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
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  with_user_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
}
