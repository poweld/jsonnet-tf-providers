{
  local block = self,
  new(name, ruleset):: (
    {}
    + block.with_name(name)
    + block.with_ruleset(ruleset)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_created_on(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_on" expected to be of type "string"';
    {
      created_on: converted,
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
  with_last_modified_on(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_on" expected to be of type "string"';
    {
      last_modified_on: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_recommendation_run_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"recommendation_run_id" expected to be of type "string"';
    {
      recommendation_run_id: converted,
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
  with_ruleset(value):: (
    local converted = value;
    assert std.isString(converted) : '"ruleset" expected to be of type "string"';
    {
      ruleset: converted,
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
  target_table:: {
    local block = self,
    new(database_name, table_name):: (
      {}
      + block.with_database_name(database_name)
      + block.with_table_name(table_name)
    ),
    with_catalog_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
      {
        catalog_id: converted,
      }
    ),
    with_database_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_name" expected to be of type "string"';
      {
        database_name: converted,
      }
    ),
    with_table_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"table_name" expected to be of type "string"';
      {
        table_name: converted,
      }
    ),
  },
  with_target_table(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_table: value,
    }
  ),
  with_target_table_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_table+: converted,
    }
  ),
}
