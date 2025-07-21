{
  local block = self,
  new(source_name):: (
    {}
    + block.with_source_name(source_name)
  ),
  with_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"attributes" expected to be of type "list"';
    {
      attributes: converted,
    }
  ),
  with_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"attributes" expected to be of type "list"';
    {
      attributes+: converted,
    }
  ),
  with_event_classes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"event_classes" expected to be of type "set"';
    {
      event_classes: converted,
    }
  ),
  with_event_classes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"event_classes" expected to be of type "set"';
    {
      event_classes+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_provider_details(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"provider_details" expected to be of type "list"';
    {
      provider_details: converted,
    }
  ),
  with_provider_details_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"provider_details" expected to be of type "list"';
    {
      provider_details+: converted,
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
  with_source_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_name" expected to be of type "string"';
    {
      source_name: converted,
    }
  ),
  with_source_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_version" expected to be of type "string"';
    {
      source_version: converted,
    }
  ),
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    crawler_configuration:: {
      local block = self,
      new(role_arn):: (
        {}
        + block.with_role_arn(role_arn)
      ),
      with_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
    },
    provider_identity:: {
      local block = self,
      new(external_id, principal):: (
        {}
        + block.with_external_id(external_id)
        + block.with_principal(principal)
      ),
      with_external_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"external_id" expected to be of type "string"';
        {
          external_id: converted,
        }
      ),
      with_principal(value):: (
        local converted = value;
        assert std.isString(converted) : '"principal" expected to be of type "string"';
        {
          principal: converted,
        }
      ),
    },
    with_crawler_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        crawler_configuration: value,
      }
    ),
    with_provider_identity(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provider_identity: value,
      }
    ),
    with_crawler_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        crawler_configuration+: converted,
      }
    ),
    with_provider_identity_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provider_identity+: converted,
      }
    ),
  },
  with_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  with_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
}
