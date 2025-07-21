{
  local block = self,
  new(policy_store_id):: (
    {}
    + block.with_policy_store_id(policy_store_id)
  ),
  with_created_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_date" expected to be of type "string"';
    {
      created_date: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_policy_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_id" expected to be of type "string"';
    {
      policy_id: converted,
    }
  ),
  with_policy_store_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_store_id" expected to be of type "string"';
    {
      policy_store_id: converted,
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
  definition:: {
    local block = self,
    new():: (
      {}
    ),
    static:: {
      local block = self,
      new(statement):: (
        {}
        + block.with_statement(statement)
      ),
      with_description(value):: (
        local converted = value;
        assert std.isString(converted) : '"description" expected to be of type "string"';
        {
          description: converted,
        }
      ),
      with_statement(value):: (
        local converted = value;
        assert std.isString(converted) : '"statement" expected to be of type "string"';
        {
          statement: converted,
        }
      ),
    },
    template_linked:: {
      local block = self,
      new(policy_template_id):: (
        {}
        + block.with_policy_template_id(policy_template_id)
      ),
      with_policy_template_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"policy_template_id" expected to be of type "string"';
        {
          policy_template_id: converted,
        }
      ),
      principal:: {
        local block = self,
        new(entity_id, entity_type):: (
          {}
          + block.with_entity_id(entity_id)
          + block.with_entity_type(entity_type)
        ),
        with_entity_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"entity_id" expected to be of type "string"';
          {
            entity_id: converted,
          }
        ),
        with_entity_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"entity_type" expected to be of type "string"';
          {
            entity_type: converted,
          }
        ),
      },
      resource:: {
        local block = self,
        new(entity_id, entity_type):: (
          {}
          + block.with_entity_id(entity_id)
          + block.with_entity_type(entity_type)
        ),
        with_entity_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"entity_id" expected to be of type "string"';
          {
            entity_id: converted,
          }
        ),
        with_entity_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"entity_type" expected to be of type "string"';
          {
            entity_type: converted,
          }
        ),
      },
      with_principal(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          principal: value,
        }
      ),
      with_resource(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          resource: value,
        }
      ),
      with_principal_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          principal+: converted,
        }
      ),
      with_resource_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          resource+: converted,
        }
      ),
    },
    with_static(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        static: value,
      }
    ),
    with_template_linked(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        template_linked: value,
      }
    ),
    with_static_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        static+: converted,
      }
    ),
    with_template_linked_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        template_linked+: converted,
      }
    ),
  },
  with_definition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      definition: value,
    }
  ),
  with_definition_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      definition+: converted,
    }
  ),
}
