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
  event_sources:: {
    local block = self,
    new():: (
      {}
    ),
    amazon_code_guru_profiler:: {
      local block = self,
      new(status):: (
        {}
        + block.with_status(status)
      ),
      with_status(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
        }
      ),
    },
    with_amazon_code_guru_profiler(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_code_guru_profiler: value,
      }
    ),
    with_amazon_code_guru_profiler_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_code_guru_profiler+: converted,
      }
    ),
  },
  with_event_sources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_sources: value,
    }
  ),
  with_event_sources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_sources+: converted,
    }
  ),
}
