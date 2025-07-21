{
  local block = self,
  new(framework_id, name):: (
    {}
    + block.with_framework_id(framework_id)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_framework_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"framework_id" expected to be of type "string"';
    {
      framework_id: converted,
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
  with_roles_all(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"roles_all" expected to be of type "list"';
    {
      roles_all: converted,
    }
  ),
  with_roles_all_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"roles_all" expected to be of type "list"';
    {
      roles_all+: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  assessment_reports_destination:: {
    local block = self,
    new(destination, destination_type):: (
      {}
      + block.with_destination(destination)
      + block.with_destination_type(destination_type)
    ),
    with_destination(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination" expected to be of type "string"';
      {
        destination: converted,
      }
    ),
    with_destination_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_type" expected to be of type "string"';
      {
        destination_type: converted,
      }
    ),
  },
  roles:: {
    local block = self,
    new(role_arn, role_type):: (
      {}
      + block.with_role_arn(role_arn)
      + block.with_role_type(role_type)
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_role_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_type" expected to be of type "string"';
      {
        role_type: converted,
      }
    ),
  },
  scope:: {
    local block = self,
    new():: (
      {}
    ),
    aws_accounts:: {
      local block = self,
      new(id):: (
        {}
        + block.with_id(id)
      ),
      with_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"id" expected to be of type "string"';
        {
          id: converted,
        }
      ),
    },
    aws_services:: {
      local block = self,
      new(service_name):: (
        {}
        + block.with_service_name(service_name)
      ),
      with_service_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"service_name" expected to be of type "string"';
        {
          service_name: converted,
        }
      ),
    },
    with_aws_accounts(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_accounts: value,
      }
    ),
    with_aws_services(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_services: value,
      }
    ),
    with_aws_accounts_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_accounts+: converted,
      }
    ),
    with_aws_services_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_services+: converted,
      }
    ),
  },
  with_assessment_reports_destination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      assessment_reports_destination: value,
    }
  ),
  with_roles(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      roles: value,
    }
  ),
  with_scope(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope: value,
    }
  ),
  with_assessment_reports_destination_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      assessment_reports_destination+: converted,
    }
  ),
  with_roles_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      roles+: converted,
    }
  ),
  with_scope_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope+: converted,
    }
  ),
}
