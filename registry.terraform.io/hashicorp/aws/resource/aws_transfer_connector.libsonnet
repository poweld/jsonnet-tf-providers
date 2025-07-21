{
  local block = self,
  new(access_role, url):: (
    {}
    + block.with_access_role(access_role)
    + block.with_url(url)
  ),
  with_access_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_role" expected to be of type "string"';
    {
      access_role: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_connector_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"connector_id" expected to be of type "string"';
    {
      connector_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_logging_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"logging_role" expected to be of type "string"';
    {
      logging_role: converted,
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
  with_security_policy_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_policy_name" expected to be of type "string"';
    {
      security_policy_name: converted,
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
  with_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
    }
  ),
  as2_config:: {
    local block = self,
    new(compression, encryption_algorithm, local_profile_id, mdn_response, partner_profile_id, signing_algorithm):: (
      {}
      + block.with_compression(compression)
      + block.with_encryption_algorithm(encryption_algorithm)
      + block.with_local_profile_id(local_profile_id)
      + block.with_mdn_response(mdn_response)
      + block.with_partner_profile_id(partner_profile_id)
      + block.with_signing_algorithm(signing_algorithm)
    ),
    with_compression(value):: (
      local converted = value;
      assert std.isString(converted) : '"compression" expected to be of type "string"';
      {
        compression: converted,
      }
    ),
    with_encryption_algorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"encryption_algorithm" expected to be of type "string"';
      {
        encryption_algorithm: converted,
      }
    ),
    with_local_profile_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"local_profile_id" expected to be of type "string"';
      {
        local_profile_id: converted,
      }
    ),
    with_mdn_response(value):: (
      local converted = value;
      assert std.isString(converted) : '"mdn_response" expected to be of type "string"';
      {
        mdn_response: converted,
      }
    ),
    with_mdn_signing_algorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"mdn_signing_algorithm" expected to be of type "string"';
      {
        mdn_signing_algorithm: converted,
      }
    ),
    with_message_subject(value):: (
      local converted = value;
      assert std.isString(converted) : '"message_subject" expected to be of type "string"';
      {
        message_subject: converted,
      }
    ),
    with_partner_profile_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"partner_profile_id" expected to be of type "string"';
      {
        partner_profile_id: converted,
      }
    ),
    with_signing_algorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"signing_algorithm" expected to be of type "string"';
      {
        signing_algorithm: converted,
      }
    ),
  },
  sftp_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_trusted_host_keys(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"trusted_host_keys" expected to be of type "set"';
      {
        trusted_host_keys: converted,
      }
    ),
    with_trusted_host_keys_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"trusted_host_keys" expected to be of type "set"';
      {
        trusted_host_keys+: converted,
      }
    ),
    with_user_secret_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_secret_id" expected to be of type "string"';
      {
        user_secret_id: converted,
      }
    ),
  },
  with_as2_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      as2_config: value,
    }
  ),
  with_sftp_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sftp_config: value,
    }
  ),
  with_as2_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      as2_config+: converted,
    }
  ),
  with_sftp_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sftp_config+: converted,
    }
  ),
}
