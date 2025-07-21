{
  local block = self,
  new(project_name):: (
    {}
    + block.with_project_name(project_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_project_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_description" expected to be of type "string"';
    {
      project_description: converted,
    }
  ),
  with_project_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_id" expected to be of type "string"';
    {
      project_id: converted,
    }
  ),
  with_project_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_name" expected to be of type "string"';
    {
      project_name: converted,
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
  service_catalog_provisioning_details:: {
    local block = self,
    new(product_id):: (
      {}
      + block.with_product_id(product_id)
    ),
    with_path_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"path_id" expected to be of type "string"';
      {
        path_id: converted,
      }
    ),
    with_product_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"product_id" expected to be of type "string"';
      {
        product_id: converted,
      }
    ),
    with_provisioning_artifact_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"provisioning_artifact_id" expected to be of type "string"';
      {
        provisioning_artifact_id: converted,
      }
    ),
    provisioning_parameter:: {
      local block = self,
      new(key):: (
        {}
        + block.with_key(key)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    with_provisioning_parameter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provisioning_parameter: value,
      }
    ),
    with_provisioning_parameter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provisioning_parameter+: converted,
      }
    ),
  },
  with_service_catalog_provisioning_details(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_catalog_provisioning_details: value,
    }
  ),
  with_service_catalog_provisioning_details_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_catalog_provisioning_details+: converted,
    }
  ),
}
