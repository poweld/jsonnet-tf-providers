{
  local block = self,
  new(aws_account_region, domain_identifier, environment_blueprint_identifier, name, project_identifier):: (
    {}
    + block.with_aws_account_region(aws_account_region)
    + block.with_domain_identifier(domain_identifier)
    + block.with_environment_blueprint_identifier(environment_blueprint_identifier)
    + block.with_name(name)
    + block.with_project_identifier(project_identifier)
  ),
  with_aws_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  with_aws_account_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_region" expected to be of type "string"';
    {
      aws_account_region: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_created_by(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_by" expected to be of type "string"';
    {
      created_by: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_domain_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_identifier" expected to be of type "string"';
    {
      domain_identifier: converted,
    }
  ),
  with_environment_blueprint_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_blueprint_identifier" expected to be of type "string"';
    {
      environment_blueprint_identifier: converted,
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
  with_project_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_identifier" expected to be of type "string"';
    {
      project_identifier: converted,
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
  with_updated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"updated_at" expected to be of type "string"';
    {
      updated_at: converted,
    }
  ),
  user_parameters:: {
    local block = self,
    new():: (
      {}
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
  with_user_parameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_parameters: value,
    }
  ),
  with_user_parameters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_parameters+: converted,
    }
  ),
}
