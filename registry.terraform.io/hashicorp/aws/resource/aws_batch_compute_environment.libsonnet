{
  local block = self,
  new(type):: (
    {}
    + block.with_type(type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_ecs_cluster_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"ecs_cluster_arn" expected to be of type "string"';
    {
      ecs_cluster_arn: converted,
    }
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
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
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
  with_service_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_role" expected to be of type "string"';
    {
      service_role: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_status_reason(value):: (
    local converted = value;
    assert std.isString(converted) : '"status_reason" expected to be of type "string"';
    {
      status_reason: converted,
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
  compute_resources:: {
    local block = self,
    new(max_vcpus, subnets, type):: (
      {}
      + block.with_max_vcpus(max_vcpus)
      + block.with_subnets(subnets)
      + block.with_type(type)
    ),
    with_allocation_strategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"allocation_strategy" expected to be of type "string"';
      {
        allocation_strategy: converted,
      }
    ),
    with_bid_percentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"bid_percentage" expected to be of type "number"';
      {
        bid_percentage: converted,
      }
    ),
    with_desired_vcpus(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"desired_vcpus" expected to be of type "number"';
      {
        desired_vcpus: converted,
      }
    ),
    with_ec2_key_pair(value):: (
      local converted = value;
      assert std.isString(converted) : '"ec2_key_pair" expected to be of type "string"';
      {
        ec2_key_pair: converted,
      }
    ),
    with_image_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"image_id" expected to be of type "string"';
      {
        image_id: converted,
      }
    ),
    with_instance_role(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_role" expected to be of type "string"';
      {
        instance_role: converted,
      }
    ),
    with_instance_type(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_type" expected to be of type "set"';
      {
        instance_type: converted,
      }
    ),
    with_instance_type_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_type" expected to be of type "set"';
      {
        instance_type+: converted,
      }
    ),
    with_max_vcpus(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_vcpus" expected to be of type "number"';
      {
        max_vcpus: converted,
      }
    ),
    with_min_vcpus(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_vcpus" expected to be of type "number"';
      {
        min_vcpus: converted,
      }
    ),
    with_placement_group(value):: (
      local converted = value;
      assert std.isString(converted) : '"placement_group" expected to be of type "string"';
      {
        placement_group: converted,
      }
    ),
    with_security_group_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    with_security_group_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
      }
    ),
    with_spot_iam_fleet_role(value):: (
      local converted = value;
      assert std.isString(converted) : '"spot_iam_fleet_role" expected to be of type "string"';
      {
        spot_iam_fleet_role: converted,
      }
    ),
    with_subnets(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets: converted,
      }
    ),
    with_subnets_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets+: converted,
      }
    ),
    with_tags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tags" expected to be of type "map"';
      {
        tags: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    ec2_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_image_id_override(value):: (
        local converted = value;
        assert std.isString(converted) : '"image_id_override" expected to be of type "string"';
        {
          image_id_override: converted,
        }
      ),
      with_image_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"image_type" expected to be of type "string"';
        {
          image_type: converted,
        }
      ),
    },
    launch_template:: {
      local block = self,
      new():: (
        {}
      ),
      with_launch_template_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"launch_template_id" expected to be of type "string"';
        {
          launch_template_id: converted,
        }
      ),
      with_launch_template_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"launch_template_name" expected to be of type "string"';
        {
          launch_template_name: converted,
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
    with_ec2_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_configuration: value,
      }
    ),
    with_launch_template(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_template: value,
      }
    ),
    with_ec2_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_configuration+: converted,
      }
    ),
    with_launch_template_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_template+: converted,
      }
    ),
  },
  eks_configuration:: {
    local block = self,
    new(eks_cluster_arn, kubernetes_namespace):: (
      {}
      + block.with_eks_cluster_arn(eks_cluster_arn)
      + block.with_kubernetes_namespace(kubernetes_namespace)
    ),
    with_eks_cluster_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"eks_cluster_arn" expected to be of type "string"';
      {
        eks_cluster_arn: converted,
      }
    ),
    with_kubernetes_namespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"kubernetes_namespace" expected to be of type "string"';
      {
        kubernetes_namespace: converted,
      }
    ),
  },
  update_policy:: {
    local block = self,
    new(job_execution_timeout_minutes, terminate_jobs_on_update):: (
      {}
      + block.with_job_execution_timeout_minutes(job_execution_timeout_minutes)
      + block.with_terminate_jobs_on_update(terminate_jobs_on_update)
    ),
    with_job_execution_timeout_minutes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"job_execution_timeout_minutes" expected to be of type "number"';
      {
        job_execution_timeout_minutes: converted,
      }
    ),
    with_terminate_jobs_on_update(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"terminate_jobs_on_update" expected to be of type "bool"';
      {
        terminate_jobs_on_update: converted,
      }
    ),
  },
  with_compute_resources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_resources: value,
    }
  ),
  with_eks_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      eks_configuration: value,
    }
  ),
  with_update_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      update_policy: value,
    }
  ),
  with_compute_resources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_resources+: converted,
    }
  ),
  with_eks_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      eks_configuration+: converted,
    }
  ),
  with_update_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      update_policy+: converted,
    }
  ),
}
