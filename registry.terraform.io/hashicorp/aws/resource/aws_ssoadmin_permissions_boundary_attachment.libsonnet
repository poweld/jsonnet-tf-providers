{
  local block = self,
  new(instance_arn, permission_set_arn):: (
    {}
    + block.with_instance_arn(instance_arn)
    + block.with_permission_set_arn(permission_set_arn)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_arn" expected to be of type "string"';
    {
      instance_arn: converted,
    }
  ),
  with_permission_set_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"permission_set_arn" expected to be of type "string"';
    {
      permission_set_arn: converted,
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
  permissions_boundary:: {
    local block = self,
    new():: (
      {}
    ),
    with_managed_policy_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"managed_policy_arn" expected to be of type "string"';
      {
        managed_policy_arn: converted,
      }
    ),
    customer_managed_policy_reference:: {
      local block = self,
      new(name):: (
        {}
        + block.with_name(name)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"path" expected to be of type "string"';
        {
          path: converted,
        }
      ),
    },
    with_customer_managed_policy_reference(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        customer_managed_policy_reference: value,
      }
    ),
    with_customer_managed_policy_reference_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        customer_managed_policy_reference+: converted,
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
  },
  with_permissions_boundary(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permissions_boundary: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_permissions_boundary_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permissions_boundary+: converted,
    }
  ),
}
