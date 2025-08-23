{
  local block = self,
  new(name, realm_type):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_realm",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["id", "is_default", "name", "realm_type"],
      },
    }
    + block.withName(name)
    + block.withRealmType(realm_type)
  ),
  "#withName":: "The name of the Okta Realm.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withRealmType":: "The realm type. Valid values: `PARTNER` and `DEFAULT`",
  withRealmType(value):: (
    local converted = value;
    assert std.isString(converted) : '"realm_type" expected to be of type "string"';
    {
      realm_type: converted,
    }
  ),
}
