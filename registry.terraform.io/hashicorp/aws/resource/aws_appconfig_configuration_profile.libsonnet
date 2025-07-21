{
  local block = self,
  new(application_id, location_uri, name):: (
    {}
    + block.with_application_id(application_id)
    + block.with_location_uri(location_uri)
    + block.with_name(name)
  ),
  with_application_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_id" expected to be of type "string"';
    {
      application_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_configuration_profile_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_profile_id" expected to be of type "string"';
    {
      configuration_profile_id: converted,
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
  with_kms_key_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_identifier" expected to be of type "string"';
    {
      kms_key_identifier: converted,
    }
  ),
  with_location_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"location_uri" expected to be of type "string"';
    {
      location_uri: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_retrieval_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"retrieval_role_arn" expected to be of type "string"';
    {
      retrieval_role_arn: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  validator:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_content(value):: (
      local converted = value;
      assert std.isString(converted) : '"content" expected to be of type "string"';
      {
        content: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  with_validator(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validator: value,
    }
  ),
  with_validator_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validator+: converted,
    }
  ),
}
