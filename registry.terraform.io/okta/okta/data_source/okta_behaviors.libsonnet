{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_behaviors",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["behaviors", "id", "q"],
      },
    }
    + block.withTerraformName(terraformName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withQ":: "Searches the name property of behaviors for matching value",
  withQ(value):: (
    local converted = value;
    assert std.isString(converted) : '"q" expected to be of type "string"';
    {
      q: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
