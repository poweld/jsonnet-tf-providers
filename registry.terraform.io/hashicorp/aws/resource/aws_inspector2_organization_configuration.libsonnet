{
  local block = self,
  new():: (
    {}
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_max_account_limit_reached(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"max_account_limit_reached" expected to be of type "bool"';
    {
      max_account_limit_reached: converted,
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
  auto_enable:: {
    local block = self,
    new(ec2, ecr):: (
      {}
      + block.with_ec2(ec2)
      + block.with_ecr(ecr)
    ),
    with_ec2(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"ec2" expected to be of type "bool"';
      {
        ec2: converted,
      }
    ),
    with_ecr(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"ecr" expected to be of type "bool"';
      {
        ecr: converted,
      }
    ),
    with_lambda(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"lambda" expected to be of type "bool"';
      {
        lambda: converted,
      }
    ),
    with_lambda_code(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"lambda_code" expected to be of type "bool"';
      {
        lambda_code: converted,
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
  with_auto_enable(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_enable: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_auto_enable_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_enable+: converted,
    }
  ),
}
