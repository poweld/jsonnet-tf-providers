{
  local block = self,
  new(category, provider_name, version):: (
    {}
    + block.with_category(category)
    + block.with_provider_name(provider_name)
    + block.with_version(version)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_category(value):: (
    local converted = value;
    assert std.isString(converted) : '"category" expected to be of type "string"';
    {
      category: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner" expected to be of type "string"';
    {
      owner: converted,
    }
  ),
  with_provider_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_name" expected to be of type "string"';
    {
      provider_name: converted,
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
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  configuration_property:: {
    local block = self,
    new(key, name, required, secret):: (
      {}
      + block.with_key(key)
      + block.with_name(name)
      + block.with_required(required)
      + block.with_secret(secret)
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_key(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"key" expected to be of type "bool"';
      {
        key: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_queryable(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"queryable" expected to be of type "bool"';
      {
        queryable: converted,
      }
    ),
    with_required(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
      {
        required: converted,
      }
    ),
    with_secret(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"secret" expected to be of type "bool"';
      {
        secret: converted,
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
  input_artifact_details:: {
    local block = self,
    new(maximum_count, minimum_count):: (
      {}
      + block.with_maximum_count(maximum_count)
      + block.with_minimum_count(minimum_count)
    ),
    with_maximum_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_count" expected to be of type "number"';
      {
        maximum_count: converted,
      }
    ),
    with_minimum_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"minimum_count" expected to be of type "number"';
      {
        minimum_count: converted,
      }
    ),
  },
  output_artifact_details:: {
    local block = self,
    new(maximum_count, minimum_count):: (
      {}
      + block.with_maximum_count(maximum_count)
      + block.with_minimum_count(minimum_count)
    ),
    with_maximum_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_count" expected to be of type "number"';
      {
        maximum_count: converted,
      }
    ),
    with_minimum_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"minimum_count" expected to be of type "number"';
      {
        minimum_count: converted,
      }
    ),
  },
  settings:: {
    local block = self,
    new():: (
      {}
    ),
    with_entity_url_template(value):: (
      local converted = value;
      assert std.isString(converted) : '"entity_url_template" expected to be of type "string"';
      {
        entity_url_template: converted,
      }
    ),
    with_execution_url_template(value):: (
      local converted = value;
      assert std.isString(converted) : '"execution_url_template" expected to be of type "string"';
      {
        execution_url_template: converted,
      }
    ),
    with_revision_url_template(value):: (
      local converted = value;
      assert std.isString(converted) : '"revision_url_template" expected to be of type "string"';
      {
        revision_url_template: converted,
      }
    ),
    with_third_party_configuration_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"third_party_configuration_url" expected to be of type "string"';
      {
        third_party_configuration_url: converted,
      }
    ),
  },
  with_configuration_property(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration_property: value,
    }
  ),
  with_input_artifact_details(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_artifact_details: value,
    }
  ),
  with_output_artifact_details(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_artifact_details: value,
    }
  ),
  with_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      settings: value,
    }
  ),
  with_configuration_property_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration_property+: converted,
    }
  ),
  with_input_artifact_details_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_artifact_details+: converted,
    }
  ),
  with_output_artifact_details_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_artifact_details+: converted,
    }
  ),
  with_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      settings+: converted,
    }
  ),
}
