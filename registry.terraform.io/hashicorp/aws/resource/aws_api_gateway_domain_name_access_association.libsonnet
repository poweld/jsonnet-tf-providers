{
  local block = self,
  new(access_association_source, access_association_source_type, domain_name_arn):: (
    {}
    + block.with_access_association_source(access_association_source)
    + block.with_access_association_source_type(access_association_source_type)
    + block.with_domain_name_arn(domain_name_arn)
  ),
  with_access_association_source(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_association_source" expected to be of type "string"';
    {
      access_association_source: converted,
    }
  ),
  with_access_association_source_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_association_source_type" expected to be of type "string"';
    {
      access_association_source_type: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_domain_name_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name_arn" expected to be of type "string"';
    {
      domain_name_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
}
