{
  local block = self,
  new(identity_store_id):: (
    {}
    + block.with_identity_store_id(identity_store_id)
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  with_external_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"external_ids" expected to be of type "list"';
    {
      external_ids: converted,
    }
  ),
  with_external_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"external_ids" expected to be of type "list"';
    {
      external_ids+: converted,
    }
  ),
  with_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_id" expected to be of type "string"';
    {
      group_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity_store_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_store_id" expected to be of type "string"';
    {
      identity_store_id: converted,
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
  alternate_identifier:: {
    local block = self,
    new():: (
      {}
    ),
    external_id:: {
      local block = self,
      new(id, issuer):: (
        {}
        + block.with_id(id)
        + block.with_issuer(issuer)
      ),
      with_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"id" expected to be of type "string"';
        {
          id: converted,
        }
      ),
      with_issuer(value):: (
        local converted = value;
        assert std.isString(converted) : '"issuer" expected to be of type "string"';
        {
          issuer: converted,
        }
      ),
    },
    unique_attribute:: {
      local block = self,
      new(attribute_path, attribute_value):: (
        {}
        + block.with_attribute_path(attribute_path)
        + block.with_attribute_value(attribute_value)
      ),
      with_attribute_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"attribute_path" expected to be of type "string"';
        {
          attribute_path: converted,
        }
      ),
      with_attribute_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"attribute_value" expected to be of type "string"';
        {
          attribute_value: converted,
        }
      ),
    },
    with_external_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        external_id: value,
      }
    ),
    with_unique_attribute(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unique_attribute: value,
      }
    ),
    with_external_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        external_id+: converted,
      }
    ),
    with_unique_attribute_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unique_attribute+: converted,
      }
    ),
  },
  with_alternate_identifier(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alternate_identifier: value,
    }
  ),
  with_alternate_identifier_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alternate_identifier+: converted,
    }
  ),
}
