{
  local block = self,
  new(cluster_id):: (
    {}
    + block.with_cluster_id(cluster_id)
  ),
  with_cluster_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_id" expected to be of type "string"';
    {
      cluster_id: converted,
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
  with_provisioned_on_demand_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"provisioned_on_demand_capacity" expected to be of type "number"';
    {
      provisioned_on_demand_capacity: converted,
    }
  ),
  with_provisioned_spot_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"provisioned_spot_capacity" expected to be of type "number"';
    {
      provisioned_spot_capacity: converted,
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
  with_target_on_demand_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"target_on_demand_capacity" expected to be of type "number"';
    {
      target_on_demand_capacity: converted,
    }
  ),
  with_target_spot_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"target_spot_capacity" expected to be of type "number"';
    {
      target_spot_capacity: converted,
    }
  ),
  instance_type_configs:: {
    local block = self,
    new(instance_type):: (
      {}
      + block.with_instance_type(instance_type)
    ),
    with_bid_price(value):: (
      local converted = value;
      assert std.isString(converted) : '"bid_price" expected to be of type "string"';
      {
        bid_price: converted,
      }
    ),
    with_bid_price_as_percentage_of_on_demand_price(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"bid_price_as_percentage_of_on_demand_price" expected to be of type "number"';
      {
        bid_price_as_percentage_of_on_demand_price: converted,
      }
    ),
    with_instance_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    with_weighted_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"weighted_capacity" expected to be of type "number"';
      {
        weighted_capacity: converted,
      }
    ),
    configurations:: {
      local block = self,
      new():: (
        {}
      ),
      with_classification(value):: (
        local converted = value;
        assert std.isString(converted) : '"classification" expected to be of type "string"';
        {
          classification: converted,
        }
      ),
      with_properties(value):: (
        local converted = value;
        assert std.isObject(converted) : '"properties" expected to be of type "map"';
        {
          properties: converted,
        }
      ),
    },
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
    with_configurations(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        configurations: value,
      }
    ),
    with_ebs_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs_config: value,
      }
    ),
    with_configurations_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        configurations+: converted,
      }
    ),
    with_ebs_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs_config+: converted,
      }
    ),
  },
  launch_specifications:: {
    local block = self,
    new():: (
      {}
    ),
    on_demand_specification:: {
      local block = self,
      new(allocation_strategy):: (
        {}
        + block.with_allocation_strategy(allocation_strategy)
      ),
      with_allocation_strategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"allocation_strategy" expected to be of type "string"';
        {
          allocation_strategy: converted,
        }
      ),
    },
    spot_specification:: {
      local block = self,
      new(allocation_strategy, timeout_action, timeout_duration_minutes):: (
        {}
        + block.with_allocation_strategy(allocation_strategy)
        + block.with_timeout_action(timeout_action)
        + block.with_timeout_duration_minutes(timeout_duration_minutes)
      ),
      with_allocation_strategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"allocation_strategy" expected to be of type "string"';
        {
          allocation_strategy: converted,
        }
      ),
      with_block_duration_minutes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"block_duration_minutes" expected to be of type "number"';
        {
          block_duration_minutes: converted,
        }
      ),
      with_timeout_action(value):: (
        local converted = value;
        assert std.isString(converted) : '"timeout_action" expected to be of type "string"';
        {
          timeout_action: converted,
        }
      ),
      with_timeout_duration_minutes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"timeout_duration_minutes" expected to be of type "number"';
        {
          timeout_duration_minutes: converted,
        }
      ),
    },
    with_on_demand_specification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_demand_specification: value,
      }
    ),
    with_spot_specification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        spot_specification: value,
      }
    ),
    with_on_demand_specification_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_demand_specification+: converted,
      }
    ),
    with_spot_specification_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        spot_specification+: converted,
      }
    ),
  },
  with_instance_type_configs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_type_configs: value,
    }
  ),
  with_launch_specifications(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_specifications: value,
    }
  ),
  with_instance_type_configs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_type_configs+: converted,
    }
  ),
  with_launch_specifications_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_specifications+: converted,
    }
  ),
}
