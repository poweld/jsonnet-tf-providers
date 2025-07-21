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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  thing_group_indexing_configuration:: {
    local block = self,
    new(thing_group_indexing_mode):: (
      {}
      + block.with_thing_group_indexing_mode(thing_group_indexing_mode)
    ),
    with_thing_group_indexing_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"thing_group_indexing_mode" expected to be of type "string"';
      {
        thing_group_indexing_mode: converted,
      }
    ),
    custom_field:: {
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
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    managed_field:: {
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
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    with_custom_field(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_field: value,
      }
    ),
    with_managed_field(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_field: value,
      }
    ),
    with_custom_field_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_field+: converted,
      }
    ),
    with_managed_field_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_field+: converted,
      }
    ),
  },
  thing_indexing_configuration:: {
    local block = self,
    new(thing_indexing_mode):: (
      {}
      + block.with_thing_indexing_mode(thing_indexing_mode)
    ),
    with_device_defender_indexing_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_defender_indexing_mode" expected to be of type "string"';
      {
        device_defender_indexing_mode: converted,
      }
    ),
    with_named_shadow_indexing_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"named_shadow_indexing_mode" expected to be of type "string"';
      {
        named_shadow_indexing_mode: converted,
      }
    ),
    with_thing_connectivity_indexing_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"thing_connectivity_indexing_mode" expected to be of type "string"';
      {
        thing_connectivity_indexing_mode: converted,
      }
    ),
    with_thing_indexing_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"thing_indexing_mode" expected to be of type "string"';
      {
        thing_indexing_mode: converted,
      }
    ),
    custom_field:: {
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
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    filter:: {
      local block = self,
      new():: (
        {}
      ),
      with_named_shadow_names(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"named_shadow_names" expected to be of type "set"';
        {
          named_shadow_names: converted,
        }
      ),
      with_named_shadow_names_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"named_shadow_names" expected to be of type "set"';
        {
          named_shadow_names+: converted,
        }
      ),
    },
    managed_field:: {
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
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    with_custom_field(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_field: value,
      }
    ),
    with_filter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter: value,
      }
    ),
    with_managed_field(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_field: value,
      }
    ),
    with_custom_field_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_field+: converted,
      }
    ),
    with_filter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter+: converted,
      }
    ),
    with_managed_field_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_field+: converted,
      }
    ),
  },
  with_thing_group_indexing_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thing_group_indexing_configuration: value,
    }
  ),
  with_thing_indexing_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thing_indexing_configuration: value,
    }
  ),
  with_thing_group_indexing_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thing_group_indexing_configuration+: converted,
    }
  ),
  with_thing_indexing_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thing_indexing_configuration+: converted,
    }
  ),
}
