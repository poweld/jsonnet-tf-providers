{
  local block = self,
  new(project_name):: (
    {}
    + block.with_project_name(project_name)
  ),
  with_branch_filter(value):: (
    local converted = value;
    assert std.isString(converted) : '"branch_filter" expected to be of type "string"';
    {
      branch_filter: converted,
    }
  ),
  with_build_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"build_type" expected to be of type "string"';
    {
      build_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_manual_creation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"manual_creation" expected to be of type "bool"';
    {
      manual_creation: converted,
    }
  ),
  with_payload_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"payload_url" expected to be of type "string"';
    {
      payload_url: converted,
    }
  ),
  with_project_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_name" expected to be of type "string"';
    {
      project_name: converted,
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
  with_secret(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret" expected to be of type "string"';
    {
      secret: converted,
    }
  ),
  with_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
    }
  ),
  filter_group:: {
    local block = self,
    new():: (
      {}
    ),
    filter:: {
      local block = self,
      new(pattern, type):: (
        {}
        + block.with_pattern(pattern)
        + block.with_type(type)
      ),
      with_exclude_matched_pattern(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"exclude_matched_pattern" expected to be of type "bool"';
        {
          exclude_matched_pattern: converted,
        }
      ),
      with_pattern(value):: (
        local converted = value;
        assert std.isString(converted) : '"pattern" expected to be of type "string"';
        {
          pattern: converted,
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
    with_filter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter: value,
      }
    ),
    with_filter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter+: converted,
      }
    ),
  },
  scope_configuration:: {
    local block = self,
    new(name, scope):: (
      {}
      + block.with_name(name)
      + block.with_scope(scope)
    ),
    with_domain(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain" expected to be of type "string"';
      {
        domain: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_scope(value):: (
      local converted = value;
      assert std.isString(converted) : '"scope" expected to be of type "string"';
      {
        scope: converted,
      }
    ),
  },
  with_filter_group(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_group: value,
    }
  ),
  with_scope_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope_configuration: value,
    }
  ),
  with_filter_group_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_group+: converted,
    }
  ),
  with_scope_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope_configuration+: converted,
    }
  ),
}
