{
  local block = self,
  new(feature_id):: (
    {}
    + block.withFeatureId(feature_id)
  ),
  "#withDescription":: "Brief description of the feature and what it provides.",
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  "#withFeatureId":: "Okta API for feature only reads and updates therefore the okta_feature resource needs to act as a quasi data source. Do this by setting feature_id",
  withFeatureId(value):: (
    local converted = value;
    assert std.isString(converted) : '"feature_id" expected to be of type "string"';
    {
      feature_id: converted,
    }
  ),
  "#withId":: "The ID of the resource. This ID is simply the feature.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withLifeCycle":: "Whether to `ENABLE` or `DISABLE` the feature",
  withLifeCycle(value):: (
    local converted = value;
    assert std.isString(converted) : '"life_cycle" expected to be of type "string"';
    {
      life_cycle: converted,
    }
  ),
  "#withMode":: "Indicates if you want to force enable or disable a feature. Value is `true` meaning force",
  withMode(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"mode" expected to be of type "bool"';
    {
      mode: converted,
    }
  ),
  "#withName":: "Name of the feature.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withStage":: "Current release cycle stage of a feature.",
  withStage(value):: (
    local converted = value;
    assert std.isObject(converted) : '"stage" expected to be of type "object"';
    {
      stage: converted,
    }
  ),
  "#withStatus":: "The feature status",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withType":: "Type of feature.",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
