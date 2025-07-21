{
  local block = self,
  new(application_provider_arn, instance_arn, name):: (
    {}
    + block.with_application_provider_arn(application_provider_arn)
    + block.with_instance_arn(instance_arn)
    + block.with_name(name)
  ),
  with_application_account(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_account" expected to be of type "string"';
    {
      application_account: converted,
    }
  ),
  with_application_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_arn" expected to be of type "string"';
    {
      application_arn: converted,
    }
  ),
  with_application_provider_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_provider_arn" expected to be of type "string"';
    {
      application_provider_arn: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_client_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_token" expected to be of type "string"';
    {
      client_token: converted,
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
  with_instance_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_arn" expected to be of type "string"';
    {
      instance_arn: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  portal_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_visibility(value):: (
      local converted = value;
      assert std.isString(converted) : '"visibility" expected to be of type "string"';
      {
        visibility: converted,
      }
    ),
    sign_in_options:: {
      local block = self,
      new(origin):: (
        {}
        + block.with_origin(origin)
      ),
      with_application_url(value):: (
        local converted = value;
        assert std.isString(converted) : '"application_url" expected to be of type "string"';
        {
          application_url: converted,
        }
      ),
      with_origin(value):: (
        local converted = value;
        assert std.isString(converted) : '"origin" expected to be of type "string"';
        {
          origin: converted,
        }
      ),
    },
    with_sign_in_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sign_in_options: value,
      }
    ),
    with_sign_in_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sign_in_options+: converted,
      }
    ),
  },
  with_portal_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      portal_options: value,
    }
  ),
  with_portal_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      portal_options+: converted,
    }
  ),
}
