{
  local block = self,
  new(engine_family, name, role_arn, vpc_subnet_ids):: (
    {}
    + block.with_engine_family(engine_family)
    + block.with_name(name)
    + block.with_role_arn(role_arn)
    + block.with_vpc_subnet_ids(vpc_subnet_ids)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_debug_logging(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"debug_logging" expected to be of type "bool"';
    {
      debug_logging: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint" expected to be of type "string"';
    {
      endpoint: converted,
    }
  ),
  with_engine_family(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_family" expected to be of type "string"';
    {
      engine_family: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_idle_client_timeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_client_timeout" expected to be of type "number"';
    {
      idle_client_timeout: converted,
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
  with_require_tls(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"require_tls" expected to be of type "bool"';
    {
      require_tls: converted,
    }
  ),
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  with_vpc_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids: converted,
    }
  ),
  with_vpc_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids+: converted,
    }
  ),
  with_vpc_subnet_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_subnet_ids" expected to be of type "set"';
    {
      vpc_subnet_ids: converted,
    }
  ),
  with_vpc_subnet_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_subnet_ids" expected to be of type "set"';
    {
      vpc_subnet_ids+: converted,
    }
  ),
  auth:: {
    local block = self,
    new():: (
      {}
    ),
    with_auth_scheme(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_scheme" expected to be of type "string"';
      {
        auth_scheme: converted,
      }
    ),
    with_client_password_auth_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"client_password_auth_type" expected to be of type "string"';
      {
        client_password_auth_type: converted,
      }
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_iam_auth(value):: (
      local converted = value;
      assert std.isString(converted) : '"iam_auth" expected to be of type "string"';
      {
        iam_auth: converted,
      }
    ),
    with_secret_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
      {
        secret_arn: converted,
      }
    ),
    with_username(value):: (
      local converted = value;
      assert std.isString(converted) : '"username" expected to be of type "string"';
      {
        username: converted,
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
  with_auth(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auth: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_auth_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auth+: converted,
    }
  ),
}
