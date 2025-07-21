{
  local block = self,
  new(cluster_name, node_group_name):: (
    {}
    + block.with_cluster_name(cluster_name)
    + block.with_node_group_name(node_group_name)
  ),
  with_ami_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"ami_type" expected to be of type "string"';
    {
      ami_type: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_capacity_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"capacity_type" expected to be of type "string"';
    {
      capacity_type: converted,
    }
  ),
  with_cluster_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
    }
  ),
  with_disk_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"disk_size" expected to be of type "number"';
    {
      disk_size: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"instance_types" expected to be of type "list"';
    {
      instance_types: converted,
    }
  ),
  with_instance_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"instance_types" expected to be of type "list"';
    {
      instance_types+: converted,
    }
  ),
  with_labels(value):: (
    local converted = value;
    assert std.isObject(converted) : '"labels" expected to be of type "map"';
    {
      labels: converted,
    }
  ),
  with_launch_template(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"launch_template" expected to be of type "list"';
    {
      launch_template: converted,
    }
  ),
  with_launch_template_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"launch_template" expected to be of type "list"';
    {
      launch_template+: converted,
    }
  ),
  with_node_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_group_name" expected to be of type "string"';
    {
      node_group_name: converted,
    }
  ),
  with_node_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_role_arn" expected to be of type "string"';
    {
      node_role_arn: converted,
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
  with_release_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"release_version" expected to be of type "string"';
    {
      release_version: converted,
    }
  ),
  with_remote_access(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"remote_access" expected to be of type "list"';
    {
      remote_access: converted,
    }
  ),
  with_remote_access_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"remote_access" expected to be of type "list"';
    {
      remote_access+: converted,
    }
  ),
  with_resources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"resources" expected to be of type "list"';
    {
      resources: converted,
    }
  ),
  with_resources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"resources" expected to be of type "list"';
    {
      resources+: converted,
    }
  ),
  with_scaling_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"scaling_config" expected to be of type "list"';
    {
      scaling_config: converted,
    }
  ),
  with_scaling_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"scaling_config" expected to be of type "list"';
    {
      scaling_config+: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_subnet_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  with_subnet_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_taints(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"taints" expected to be of type "list"';
    {
      taints: converted,
    }
  ),
  with_taints_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"taints" expected to be of type "list"';
    {
      taints+: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
}
