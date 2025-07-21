{
  local block = self,
  new(fixed_rate, host, http_method, priority, reservoir_size, resource_arn, service_name, service_type, url_path, version):: (
    {}
    + block.with_fixed_rate(fixed_rate)
    + block.with_host(host)
    + block.with_http_method(http_method)
    + block.with_priority(priority)
    + block.with_reservoir_size(reservoir_size)
    + block.with_resource_arn(resource_arn)
    + block.with_service_name(service_name)
    + block.with_service_type(service_type)
    + block.with_url_path(url_path)
    + block.with_version(version)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_attributes(value):: (
    local converted = value;
    assert std.isObject(converted) : '"attributes" expected to be of type "map"';
    {
      attributes: converted,
    }
  ),
  with_fixed_rate(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"fixed_rate" expected to be of type "number"';
    {
      fixed_rate: converted,
    }
  ),
  with_host(value):: (
    local converted = value;
    assert std.isString(converted) : '"host" expected to be of type "string"';
    {
      host: converted,
    }
  ),
  with_http_method(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_method" expected to be of type "string"';
    {
      http_method: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_priority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
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
  with_reservoir_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"reservoir_size" expected to be of type "number"';
    {
      reservoir_size: converted,
    }
  ),
  with_resource_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
    {
      resource_arn: converted,
    }
  ),
  with_rule_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_name" expected to be of type "string"';
    {
      rule_name: converted,
    }
  ),
  with_service_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_name" expected to be of type "string"';
    {
      service_name: converted,
    }
  ),
  with_service_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_type" expected to be of type "string"';
    {
      service_type: converted,
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
  with_url_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"url_path" expected to be of type "string"';
    {
      url_path: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"version" expected to be of type "number"';
    {
      version: converted,
    }
  ),
}
