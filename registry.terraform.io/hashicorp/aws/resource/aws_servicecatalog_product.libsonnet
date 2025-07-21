{
  local block = self,
  new(name, owner, type):: (
    {}
    + block.with_name(name)
    + block.with_owner(owner)
    + block.with_type(type)
  ),
  with_accept_language(value):: (
    local converted = value;
    assert std.isString(converted) : '"accept_language" expected to be of type "string"';
    {
      accept_language: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_created_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_time" expected to be of type "string"';
    {
      created_time: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_distributor(value):: (
    local converted = value;
    assert std.isString(converted) : '"distributor" expected to be of type "string"';
    {
      distributor: converted,
    }
  ),
  with_has_default_path(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"has_default_path" expected to be of type "bool"';
    {
      has_default_path: converted,
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
  with_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner" expected to be of type "string"';
    {
      owner: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_support_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"support_description" expected to be of type "string"';
    {
      support_description: converted,
    }
  ),
  with_support_email(value):: (
    local converted = value;
    assert std.isString(converted) : '"support_email" expected to be of type "string"';
    {
      support_email: converted,
    }
  ),
  with_support_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"support_url" expected to be of type "string"';
    {
      support_url: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  provisioning_artifact_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_disable_template_validation(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disable_template_validation" expected to be of type "bool"';
      {
        disable_template_validation: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_template_physical_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"template_physical_id" expected to be of type "string"';
      {
        template_physical_id: converted,
      }
    ),
    with_template_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"template_url" expected to be of type "string"';
      {
        template_url: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
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
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
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
  with_provisioning_artifact_parameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      provisioning_artifact_parameters: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_provisioning_artifact_parameters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      provisioning_artifact_parameters+: converted,
    }
  ),
}
