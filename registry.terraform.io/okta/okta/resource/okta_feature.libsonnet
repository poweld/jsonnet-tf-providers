{
  local block = self,
  new(feature_id):: (
    {}
    + block.with_feature_id(feature_id)
  ),
  '#with_description':: 'Brief description of the feature and what it provides.',
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  '#with_feature_id':: 'Okta API for feature only reads and updates therefore the okta_feature resource needs to act as a quasi data source. Do this by setting feature_id',
  with_feature_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"feature_id" expected to be of type "string"';
    {
      feature_id: converted,
    }
  ),
  '#with_id':: 'The ID of the resource. This ID is simply the feature.',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_life_cycle':: 'Whether to `ENABLE` or `DISABLE` the feature',
  with_life_cycle(value):: (
    local converted = value;
    assert std.isString(converted) : '"life_cycle" expected to be of type "string"';
    {
      life_cycle: converted,
    }
  ),
  '#with_mode':: 'Indicates if you want to force enable or disable a feature. Value is `true` meaning force',
  with_mode(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"mode" expected to be of type "bool"';
    {
      mode: converted,
    }
  ),
  '#with_name':: 'Name of the feature.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_stage':: 'Current release cycle stage of a feature.',
  with_stage(value):: (
    local converted = value;
    assert std.isObject(converted) : '"stage" expected to be of type "object"';
    {
      stage: converted,
    }
  ),
  '#with_status':: 'The feature status',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_type':: 'Type of feature.',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
