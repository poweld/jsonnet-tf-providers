{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_delivery_s3_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_s3_bucket" expected to be of type "string"';
    {
      delivery_s3_bucket: converted,
    }
  ),
  with_delivery_s3_key_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_s3_key_prefix" expected to be of type "string"';
    {
      delivery_s3_key_prefix: converted,
    }
  ),
  with_excluded_accounts(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_accounts" expected to be of type "set"';
    {
      excluded_accounts: converted,
    }
  ),
  with_excluded_accounts_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_accounts" expected to be of type "set"';
    {
      excluded_accounts+: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_template_body(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_body" expected to be of type "string"';
    {
      template_body: converted,
    }
  ),
  with_template_s3_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_s3_uri" expected to be of type "string"';
    {
      template_s3_uri: converted,
    }
  ),
  input_parameter:: {
    local block = self,
    new(parameter_name, parameter_value):: (
      {}
      + block.with_parameter_name(parameter_name)
      + block.with_parameter_value(parameter_value)
    ),
    with_parameter_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
      {
        parameter_name: converted,
      }
    ),
    with_parameter_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
      {
        parameter_value: converted,
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
  with_input_parameter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_parameter: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_input_parameter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_parameter+: converted,
    }
  ),
}
