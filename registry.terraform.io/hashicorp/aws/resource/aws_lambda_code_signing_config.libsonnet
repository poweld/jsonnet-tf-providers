{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_config_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"config_id" expected to be of type "string"';
    {
      config_id: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_modified(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified" expected to be of type "string"';
    {
      last_modified: converted,
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
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  allowed_publishers:: {
    local block = self,
    new(signing_profile_version_arns):: (
      {}
      + block.with_signing_profile_version_arns(signing_profile_version_arns)
    ),
    with_signing_profile_version_arns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"signing_profile_version_arns" expected to be of type "set"';
      {
        signing_profile_version_arns: converted,
      }
    ),
    with_signing_profile_version_arns_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"signing_profile_version_arns" expected to be of type "set"';
      {
        signing_profile_version_arns+: converted,
      }
    ),
  },
  policies:: {
    local block = self,
    new(untrusted_artifact_on_deployment):: (
      {}
      + block.with_untrusted_artifact_on_deployment(untrusted_artifact_on_deployment)
    ),
    with_untrusted_artifact_on_deployment(value):: (
      local converted = value;
      assert std.isString(converted) : '"untrusted_artifact_on_deployment" expected to be of type "string"';
      {
        untrusted_artifact_on_deployment: converted,
      }
    ),
  },
  with_allowed_publishers(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      allowed_publishers: value,
    }
  ),
  with_policies(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policies: value,
    }
  ),
  with_allowed_publishers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      allowed_publishers+: converted,
    }
  ),
  with_policies_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policies+: converted,
    }
  ),
}
