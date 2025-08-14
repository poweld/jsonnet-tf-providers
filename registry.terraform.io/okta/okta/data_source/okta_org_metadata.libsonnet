{
  local block = self,
  new():: (
    {}
  ),
  "#withId":: "The unique identifier of the Org.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withPipeline":: "The authentication pipeline of the org. idx means the org is using the Identity Engine, while v1 means the org is using the Classic authentication pipeline.",
  withPipeline(value):: (
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
    "#withAlternate":: "Custom Domain Org URI",
    withAlternate(value):: (
      local converted = value;
      assert std.isString(converted) : '"alternate" expected to be of type "string"';
      {
        alternate: converted,
      }
    ),
    "#withOrganization":: "Standard Org URI",
    withOrganization(value):: (
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
    withAnalyticsCollectionEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"analytics_collection_enabled" expected to be of type "bool"';
      {
        analytics_collection_enabled: converted,
      }
    ),
    withBugReportingEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"bug_reporting_enabled" expected to be of type "bool"';
      {
        bug_reporting_enabled: converted,
      }
    ),
    "#withOmEnabled":: "Whether the legacy Okta Mobile application is enabled for the org",
    withOmEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"om_enabled" expected to be of type "bool"';
      {
        om_enabled: converted,
      }
    ),
  },
  withDomains(value):: (
    local converted = value;
    {
      domains: value,
    }
  ),
  withSettings(value):: (
    local converted = value;
    {
      settings: value,
    }
  ),
}
