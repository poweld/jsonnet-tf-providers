{
  local block = self,
  new(cluster_name):: (
    {}
    + block.with_cluster_name(cluster_name)
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
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_pending_tasks_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"pending_tasks_count" expected to be of type "number"';
    {
      pending_tasks_count: converted,
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
  with_registered_container_instances_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"registered_container_instances_count" expected to be of type "number"';
    {
      registered_container_instances_count: converted,
    }
  ),
  with_running_tasks_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"running_tasks_count" expected to be of type "number"';
    {
      running_tasks_count: converted,
    }
  ),
  with_service_connect_defaults(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"service_connect_defaults" expected to be of type "list"';
    {
      service_connect_defaults: converted,
    }
  ),
  with_service_connect_defaults_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"service_connect_defaults" expected to be of type "list"';
    {
      service_connect_defaults+: converted,
    }
  ),
  with_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"setting" expected to be of type "set"';
    {
      setting: converted,
    }
  ),
  with_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"setting" expected to be of type "set"';
    {
      setting+: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
