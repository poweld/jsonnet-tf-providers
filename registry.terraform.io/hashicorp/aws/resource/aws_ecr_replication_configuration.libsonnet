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
  with_registry_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"registry_id" expected to be of type "string"';
    {
      registry_id: converted,
    }
  ),
  replication_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    rule:: {
      local block = self,
      new():: (
        {}
      ),
      destination:: {
        local block = self,
        new(region, registry_id):: (
          {}
          + block.with_region(region)
          + block.with_registry_id(registry_id)
        ),
        with_region(value):: (
          local converted = value;
          assert std.isString(converted) : '"region" expected to be of type "string"';
          {
            region: converted,
          }
        ),
        with_registry_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"registry_id" expected to be of type "string"';
          {
            registry_id: converted,
          }
        ),
      },
      repository_filter:: {
        local block = self,
        new(filter, filter_type):: (
          {}
          + block.with_filter(filter)
          + block.with_filter_type(filter_type)
        ),
        with_filter(value):: (
          local converted = value;
          assert std.isString(converted) : '"filter" expected to be of type "string"';
          {
            filter: converted,
          }
        ),
        with_filter_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"filter_type" expected to be of type "string"';
          {
            filter_type: converted,
          }
        ),
      },
      with_destination(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination: value,
        }
      ),
      with_repository_filter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          repository_filter: value,
        }
      ),
      with_destination_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination+: converted,
        }
      ),
      with_repository_filter_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          repository_filter+: converted,
        }
      ),
    },
    with_rule(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule: value,
      }
    ),
    with_rule_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule+: converted,
      }
    ),
  },
  with_replication_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replication_configuration: value,
    }
  ),
  with_replication_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replication_configuration+: converted,
    }
  ),
}
