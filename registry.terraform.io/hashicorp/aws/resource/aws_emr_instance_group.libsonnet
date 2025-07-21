{
  local block = self,
  new(cluster_id, instance_type):: (
    {}
    + block.with_cluster_id(cluster_id)
    + block.with_instance_type(instance_type)
  ),
  with_autoscaling_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"autoscaling_policy" expected to be of type "string"';
    {
      autoscaling_policy: converted,
    }
  ),
  with_bid_price(value):: (
    local converted = value;
    assert std.isString(converted) : '"bid_price" expected to be of type "string"';
    {
      bid_price: converted,
    }
  ),
  with_cluster_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_id" expected to be of type "string"';
    {
      cluster_id: converted,
    }
  ),
  with_configurations_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"configurations_json" expected to be of type "string"';
    {
      configurations_json: converted,
    }
  ),
  with_ebs_optimized(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ebs_optimized" expected to be of type "bool"';
    {
      ebs_optimized: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"instance_count" expected to be of type "number"';
    {
      instance_count: converted,
    }
  ),
  with_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_running_instance_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"running_instance_count" expected to be of type "number"';
    {
      running_instance_count: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  ebs_config:: {
    local block = self,
    new(size, type):: (
      {}
      + block.with_size(size)
      + block.with_type(type)
    ),
    with_iops(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"iops" expected to be of type "number"';
      {
        iops: converted,
      }
    ),
    with_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"size" expected to be of type "number"';
      {
        size: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    with_volumes_per_instance(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"volumes_per_instance" expected to be of type "number"';
      {
        volumes_per_instance: converted,
      }
    ),
  },
  with_ebs_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ebs_config: value,
    }
  ),
  with_ebs_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ebs_config+: converted,
    }
  ),
}
