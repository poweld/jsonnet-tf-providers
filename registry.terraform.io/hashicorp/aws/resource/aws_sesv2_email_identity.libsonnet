{
  local block = self,
  new(email_identity):: (
    {}
    + block.with_email_identity(email_identity)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_configuration_set_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_set_name" expected to be of type "string"';
    {
      configuration_set_name: converted,
    }
  ),
  with_email_identity(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_identity" expected to be of type "string"';
    {
      email_identity: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_type" expected to be of type "string"';
    {
      identity_type: converted,
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
  with_verified_for_sending_status(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"verified_for_sending_status" expected to be of type "bool"';
    {
      verified_for_sending_status: converted,
    }
  ),
  dkim_signing_attributes:: {
    local block = self,
    new():: (
      {}
    ),
    with_current_signing_key_length(value):: (
      local converted = value;
      assert std.isString(converted) : '"current_signing_key_length" expected to be of type "string"';
      {
        current_signing_key_length: converted,
      }
    ),
    with_domain_signing_private_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_signing_private_key" expected to be of type "string"';
      {
        domain_signing_private_key: converted,
      }
    ),
    with_domain_signing_selector(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_signing_selector" expected to be of type "string"';
      {
        domain_signing_selector: converted,
      }
    ),
    with_last_key_generation_timestamp(value):: (
      local converted = value;
      assert std.isString(converted) : '"last_key_generation_timestamp" expected to be of type "string"';
      {
        last_key_generation_timestamp: converted,
      }
    ),
    with_next_signing_key_length(value):: (
      local converted = value;
      assert std.isString(converted) : '"next_signing_key_length" expected to be of type "string"';
      {
        next_signing_key_length: converted,
      }
    ),
    with_signing_attributes_origin(value):: (
      local converted = value;
      assert std.isString(converted) : '"signing_attributes_origin" expected to be of type "string"';
      {
        signing_attributes_origin: converted,
      }
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
    with_tokens(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"tokens" expected to be of type "list"';
      {
        tokens: converted,
      }
    ),
    with_tokens_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"tokens" expected to be of type "list"';
      {
        tokens+: converted,
      }
    ),
  },
  with_dkim_signing_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dkim_signing_attributes: value,
    }
  ),
  with_dkim_signing_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dkim_signing_attributes+: converted,
    }
  ),
}
