{
  local block = self,
  new(cluster_name, node_role_arn, subnet_ids):: (
    {}
    + block.with_cluster_name(cluster_name)
    + block.with_node_role_arn(node_role_arn)
    + block.with_subnet_ids(subnet_ids)
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
  with_force_update_version(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_update_version" expected to be of type "bool"';
    {
      force_update_version: converted,
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
  with_node_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_group_name" expected to be of type "string"';
    {
      node_group_name: converted,
    }
  ),
  with_node_group_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_group_name_prefix" expected to be of type "string"';
    {
      node_group_name_prefix: converted,
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
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  launch_template:: {
    local block = self,
    new(version):: (
      {}
      + block.with_version(version)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"version" expected to be of type "string"';
      {
        version: converted,
      }
    ),
  },
  node_repair_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
  },
  remote_access:: {
    local block = self,
    new():: (
      {}
    ),
    with_ec2_ssh_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"ec2_ssh_key" expected to be of type "string"';
      {
        ec2_ssh_key: converted,
      }
    ),
    with_source_security_group_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"source_security_group_ids" expected to be of type "set"';
      {
        source_security_group_ids: converted,
      }
    ),
    with_source_security_group_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"source_security_group_ids" expected to be of type "set"';
      {
        source_security_group_ids+: converted,
      }
    ),
  },
  scaling_config:: {
    local block = self,
    new(desired_size, max_size, min_size):: (
      {}
      + block.with_desired_size(desired_size)
      + block.with_max_size(max_size)
      + block.with_min_size(min_size)
    ),
    with_desired_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"desired_size" expected to be of type "number"';
      {
        desired_size: converted,
      }
    ),
    with_max_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_size" expected to be of type "number"';
      {
        max_size: converted,
      }
    ),
    with_min_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_size" expected to be of type "number"';
      {
        min_size: converted,
      }
    ),
  },
  taint:: {
    local block = self,
    new(effect, key):: (
      {}
      + block.with_effect(effect)
      + block.with_key(key)
    ),
    with_effect(value):: (
      local converted = value;
      assert std.isString(converted) : '"effect" expected to be of type "string"';
      {
        effect: converted,
      }
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  update_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_max_unavailable(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_unavailable" expected to be of type "number"';
      {
        max_unavailable: converted,
      }
    ),
    with_max_unavailable_percentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_unavailable_percentage" expected to be of type "number"';
      {
        max_unavailable_percentage: converted,
      }
    ),
  },
  with_launch_template(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template: value,
    }
  ),
  with_node_repair_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      node_repair_config: value,
    }
  ),
  with_remote_access(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      remote_access: value,
    }
  ),
  with_scaling_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_config: value,
    }
  ),
  with_taint(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      taint: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_update_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      update_config: value,
    }
  ),
  with_launch_template_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template+: converted,
    }
  ),
  with_node_repair_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      node_repair_config+: converted,
    }
  ),
  with_remote_access_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      remote_access+: converted,
    }
  ),
  with_scaling_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_config+: converted,
    }
  ),
  with_taint_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      taint+: converted,
    }
  ),
  with_update_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      update_config+: converted,
    }
  ),
}
