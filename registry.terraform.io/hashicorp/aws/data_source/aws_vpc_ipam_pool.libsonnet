{
  local block = self,
  new():: (
    {}
  ),
  with_address_family(value):: (
    local converted = value;
    assert std.isString(converted) : '"address_family" expected to be of type "string"';
    {
      address_family: converted,
    }
  ),
  with_allocation_default_netmask_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"allocation_default_netmask_length" expected to be of type "number"';
    {
      allocation_default_netmask_length: converted,
    }
  ),
  with_allocation_max_netmask_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"allocation_max_netmask_length" expected to be of type "number"';
    {
      allocation_max_netmask_length: converted,
    }
  ),
  with_allocation_min_netmask_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"allocation_min_netmask_length" expected to be of type "number"';
    {
      allocation_min_netmask_length: converted,
    }
  ),
  with_allocation_resource_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"allocation_resource_tags" expected to be of type "map"';
    {
      allocation_resource_tags: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auto_import(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_import" expected to be of type "bool"';
    {
      auto_import: converted,
    }
  ),
  with_aws_service(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_service" expected to be of type "string"';
    {
      aws_service: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ipam_pool_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipam_pool_id" expected to be of type "string"';
    {
      ipam_pool_id: converted,
    }
  ),
  with_ipam_scope_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipam_scope_id" expected to be of type "string"';
    {
      ipam_scope_id: converted,
    }
  ),
  with_ipam_scope_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipam_scope_type" expected to be of type "string"';
    {
      ipam_scope_type: converted,
    }
  ),
  with_locale(value):: (
    local converted = value;
    assert std.isString(converted) : '"locale" expected to be of type "string"';
    {
      locale: converted,
    }
  ),
  with_pool_depth(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"pool_depth" expected to be of type "number"';
    {
      pool_depth: converted,
    }
  ),
  with_publicly_advertisable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publicly_advertisable" expected to be of type "bool"';
    {
      publicly_advertisable: converted,
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
  with_source_ipam_pool_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_ipam_pool_id" expected to be of type "string"';
    {
      source_ipam_pool_id: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  filter:: {
    local block = self,
    new(name, values):: (
      {}
      + block.with_name(name)
      + block.with_values(values)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values: converted,
      }
    ),
    with_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
  },
  with_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
}
