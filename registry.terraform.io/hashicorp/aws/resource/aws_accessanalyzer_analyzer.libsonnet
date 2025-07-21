{
  local block = self,
  new(analyzer_name):: (
    {}
    + block.with_analyzer_name(analyzer_name)
  ),
  with_analyzer_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"analyzer_name" expected to be of type "string"';
    {
      analyzer_name: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    internal_access:: {
      local block = self,
      new():: (
        {}
      ),
      analysis_rule:: {
        local block = self,
        new():: (
          {}
        ),
        inclusion:: {
          local block = self,
          new():: (
            {}
          ),
          with_account_ids(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"account_ids" expected to be of type "list"';
            {
              account_ids: converted,
            }
          ),
          with_account_ids_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"account_ids" expected to be of type "list"';
            {
              account_ids+: converted,
            }
          ),
          with_resource_arns(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"resource_arns" expected to be of type "list"';
            {
              resource_arns: converted,
            }
          ),
          with_resource_arns_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"resource_arns" expected to be of type "list"';
            {
              resource_arns+: converted,
            }
          ),
          with_resource_types(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"resource_types" expected to be of type "list"';
            {
              resource_types: converted,
            }
          ),
          with_resource_types_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"resource_types" expected to be of type "list"';
            {
              resource_types+: converted,
            }
          ),
        },
        with_inclusion(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            inclusion: value,
          }
        ),
        with_inclusion_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            inclusion+: converted,
          }
        ),
      },
      with_analysis_rule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          analysis_rule: value,
        }
      ),
      with_analysis_rule_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          analysis_rule+: converted,
        }
      ),
    },
    unused_access:: {
      local block = self,
      new():: (
        {}
      ),
      with_unused_access_age(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"unused_access_age" expected to be of type "number"';
        {
          unused_access_age: converted,
        }
      ),
      analysis_rule:: {
        local block = self,
        new():: (
          {}
        ),
        exclusion:: {
          local block = self,
          new():: (
            {}
          ),
          with_account_ids(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"account_ids" expected to be of type "list"';
            {
              account_ids: converted,
            }
          ),
          with_account_ids_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"account_ids" expected to be of type "list"';
            {
              account_ids+: converted,
            }
          ),
          with_resource_tags(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"resource_tags" expected to be of type "list"';
            {
              resource_tags: converted,
            }
          ),
          with_resource_tags_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"resource_tags" expected to be of type "list"';
            {
              resource_tags+: converted,
            }
          ),
        },
        with_exclusion(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            exclusion: value,
          }
        ),
        with_exclusion_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            exclusion+: converted,
          }
        ),
      },
      with_analysis_rule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          analysis_rule: value,
        }
      ),
      with_analysis_rule_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          analysis_rule+: converted,
        }
      ),
    },
    with_internal_access(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        internal_access: value,
      }
    ),
    with_unused_access(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unused_access: value,
      }
    ),
    with_internal_access_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        internal_access+: converted,
      }
    ),
    with_unused_access_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unused_access+: converted,
      }
    ),
  },
  with_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  with_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
}
