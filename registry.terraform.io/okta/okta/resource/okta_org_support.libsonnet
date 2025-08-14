{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_org_support",
      terraformType:: "resource",
    }
  ),
  "#withExpiration":: "Expiration of Okta Support",
  withExpiration(value):: (
    local converted = value;
    assert std.isString(converted) : '"expiration" expected to be of type "string"';
    {
      expiration: converted,
    }
  ),
  "#withExtendBy":: "Number of days the support should be extended by",
  withExtendBy(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"extend_by" expected to be of type "number"';
    {
      extend_by: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withStatus":: "Status of Okta Support",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
