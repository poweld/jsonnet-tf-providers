{
  local block = self,
  new(database, sql):: (
    {}
    + block.with_database(database)
    + block.with_sql(sql)
  ),
  with_cluster_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
    }
  ),
  with_database(value):: (
    local converted = value;
    assert std.isString(converted) : '"database" expected to be of type "string"';
    {
      database: converted,
    }
  ),
  with_db_user(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_user" expected to be of type "string"';
    {
      db_user: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_secret_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
    {
      secret_arn: converted,
    }
  ),
  with_sql(value):: (
    local converted = value;
    assert std.isString(converted) : '"sql" expected to be of type "string"';
    {
      sql: converted,
    }
  ),
  with_statement_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"statement_name" expected to be of type "string"';
    {
      statement_name: converted,
    }
  ),
  with_with_event(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"with_event" expected to be of type "bool"';
    {
      with_event: converted,
    }
  ),
  with_workgroup_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"workgroup_name" expected to be of type "string"';
    {
      workgroup_name: converted,
    }
  ),
  parameters:: {
    local block = self,
    new(name, value):: (
      {}
      + block.with_name(name)
      + block.with_value(value)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
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
  },
  with_parameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameters: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_parameters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameters+: converted,
    }
  ),
}
