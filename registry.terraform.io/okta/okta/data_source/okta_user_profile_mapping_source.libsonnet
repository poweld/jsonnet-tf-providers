{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_user_profile_mapping_source",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["id", "name", "type"],
      },
    }
  ),
}
