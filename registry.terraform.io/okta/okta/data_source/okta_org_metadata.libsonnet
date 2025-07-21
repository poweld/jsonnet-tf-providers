{
  local block = self,
  new():: (
    {}
  ),
  '#with_id':: 'The unique identifier of the Org.',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_pipeline':: 'The authentication pipeline of the org. idx means the org is using the Identity Engine, while v1 means the org is using the Classic authentication pipeline.',
  with_pipeline(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline" expected to be of type "string"';
    {
      pipeline: converted,
    }
  ),
  domains:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_alternate':: 'Custom Domain Org URI',
    with_alternate(value):: (
      local converted = value;
      assert std.isString(converted) : '"alternate" expected to be of type "string"';
      {
        alternate: converted,
      }
    ),
    '#with_organization':: 'Standard Org URI',
    with_organization(value):: (
      local converted = value;
      assert std.isString(converted) : '"organization" expected to be of type "string"';
      {
        organization: converted,
      }
    ),
  },
  settings:: {
    local block = self,
    new():: (
      {}
    ),
    with_analytics_collection_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"analytics_collection_enabled" expected to be of type "bool"';
      {
        analytics_collection_enabled: converted,
      }
    ),
    with_bug_reporting_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"bug_reporting_enabled" expected to be of type "bool"';
      {
        bug_reporting_enabled: converted,
      }
    ),
    '#with_om_enabled':: 'Whether the legacy Okta Mobile application is enabled for the org',
    with_om_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"om_enabled" expected to be of type "bool"';
      {
        om_enabled: converted,
      }
    ),
  },
  with_domains(value):: (
    local converted = value;
    {
      domains: value,
    }
  ),
  with_settings(value):: (
    local converted = value;
    {
      settings: value,
    }
  ),
}
