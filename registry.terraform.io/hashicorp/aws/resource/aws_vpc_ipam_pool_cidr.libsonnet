{
  local block = self,
  new(ipam_pool_id):: (
    {}
    + block.with_ipam_pool_id(ipam_pool_id)
  ),
  with_cidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"cidr" expected to be of type "string"';
    {
      cidr: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ipam_pool_cidr_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipam_pool_cidr_id" expected to be of type "string"';
    {
      ipam_pool_cidr_id: converted,
    }
  ),
  with_ipam_pool_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipam_pool_id" expected to be of type "string"';
    {
      ipam_pool_id: converted,
    }
  ),
  with_netmask_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"netmask_length" expected to be of type "number"';
    {
      netmask_length: converted,
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
  cidr_authorization_context:: {
    local block = self,
    new():: (
      {}
    ),
    with_message(value):: (
      local converted = value;
      assert std.isString(converted) : '"message" expected to be of type "string"';
      {
        message: converted,
      }
    ),
    with_signature(value):: (
      local converted = value;
      assert std.isString(converted) : '"signature" expected to be of type "string"';
      {
        signature: converted,
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
  with_cidr_authorization_context(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cidr_authorization_context: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_cidr_authorization_context_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cidr_authorization_context+: converted,
    }
  ),
}
