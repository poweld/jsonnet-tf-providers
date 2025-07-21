{
  local block = self,
  new(application, name):: (
    {}
    + block.with_application(application)
    + block.with_name(name)
  ),
  with_all_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"all_settings" expected to be of type "set"';
    {
      all_settings: converted,
    }
  ),
  with_all_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"all_settings" expected to be of type "set"';
    {
      all_settings+: converted,
    }
  ),
  with_application(value):: (
    local converted = value;
    assert std.isString(converted) : '"application" expected to be of type "string"';
    {
      application: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_autoscaling_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"autoscaling_groups" expected to be of type "list"';
    {
      autoscaling_groups: converted,
    }
  ),
  with_autoscaling_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"autoscaling_groups" expected to be of type "list"';
    {
      autoscaling_groups+: converted,
    }
  ),
  with_cname(value):: (
    local converted = value;
    assert std.isString(converted) : '"cname" expected to be of type "string"';
    {
      cname: converted,
    }
  ),
  with_cname_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"cname_prefix" expected to be of type "string"';
    {
      cname_prefix: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_endpoint_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_url" expected to be of type "string"';
    {
      endpoint_url: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instances(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"instances" expected to be of type "list"';
    {
      instances: converted,
    }
  ),
  with_instances_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"instances" expected to be of type "list"';
    {
      instances+: converted,
    }
  ),
  with_launch_configurations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"launch_configurations" expected to be of type "list"';
    {
      launch_configurations: converted,
    }
  ),
  with_launch_configurations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"launch_configurations" expected to be of type "list"';
    {
      launch_configurations+: converted,
    }
  ),
  with_load_balancers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"load_balancers" expected to be of type "list"';
    {
      load_balancers: converted,
    }
  ),
  with_load_balancers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"load_balancers" expected to be of type "list"';
    {
      load_balancers+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_platform_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_arn" expected to be of type "string"';
    {
      platform_arn: converted,
    }
  ),
  with_poll_interval(value):: (
    local converted = value;
    assert std.isString(converted) : '"poll_interval" expected to be of type "string"';
    {
      poll_interval: converted,
    }
  ),
  with_queues(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"queues" expected to be of type "list"';
    {
      queues: converted,
    }
  ),
  with_queues_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"queues" expected to be of type "list"';
    {
      queues+: converted,
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
  with_solution_stack_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"solution_stack_name" expected to be of type "string"';
    {
      solution_stack_name: converted,
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
  with_template_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_name" expected to be of type "string"';
    {
      template_name: converted,
    }
  ),
  with_tier(value):: (
    local converted = value;
    assert std.isString(converted) : '"tier" expected to be of type "string"';
    {
      tier: converted,
    }
  ),
  with_triggers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"triggers" expected to be of type "list"';
    {
      triggers: converted,
    }
  ),
  with_triggers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"triggers" expected to be of type "list"';
    {
      triggers+: converted,
    }
  ),
  with_version_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_label" expected to be of type "string"';
    {
      version_label: converted,
    }
  ),
  with_wait_for_ready_timeout(value):: (
    local converted = value;
    assert std.isString(converted) : '"wait_for_ready_timeout" expected to be of type "string"';
    {
      wait_for_ready_timeout: converted,
    }
  ),
  setting:: {
    local block = self,
    new(name, namespace, value):: (
      {}
      + block.with_name(name)
      + block.with_namespace(namespace)
      + block.with_value(value)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_namespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
    with_resource(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource" expected to be of type "string"';
      {
        resource: converted,
      }
    ),
    with_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  with_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      setting: value,
    }
  ),
  with_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      setting+: converted,
    }
  ),
}
