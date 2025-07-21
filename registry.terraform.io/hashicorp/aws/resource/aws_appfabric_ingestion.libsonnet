{
  local block = self,
  new(app, app_bundle_arn, ingestion_type, tenant_id):: (
    {}
    + block.with_app(app)
    + block.with_app_bundle_arn(app_bundle_arn)
    + block.with_ingestion_type(ingestion_type)
    + block.with_tenant_id(tenant_id)
  ),
  with_app(value):: (
    local converted = value;
    assert std.isString(converted) : '"app" expected to be of type "string"';
    {
      app: converted,
    }
  ),
  with_app_bundle_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_bundle_arn" expected to be of type "string"';
    {
      app_bundle_arn: converted,
    }
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
  with_ingestion_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"ingestion_type" expected to be of type "string"';
    {
      ingestion_type: converted,
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
  with_tenant_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"tenant_id" expected to be of type "string"';
    {
      tenant_id: converted,
    }
  ),
}
