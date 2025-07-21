{
  local block = self,
  new(network_insights_path_id):: (
    {}
    + block.with_network_insights_path_id(network_insights_path_id)
  ),
  with_alternate_path_hints(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"alternate_path_hints" expected to be of type "list"';
    {
      alternate_path_hints: converted,
    }
  ),
  with_alternate_path_hints_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"alternate_path_hints" expected to be of type "list"';
    {
      alternate_path_hints+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_explanations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"explanations" expected to be of type "list"';
    {
      explanations: converted,
    }
  ),
  with_explanations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"explanations" expected to be of type "list"';
    {
      explanations+: converted,
    }
  ),
  with_filter_in_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"filter_in_arns" expected to be of type "set"';
    {
      filter_in_arns: converted,
    }
  ),
  with_filter_in_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"filter_in_arns" expected to be of type "set"';
    {
      filter_in_arns+: converted,
    }
  ),
  with_forward_path_components(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"forward_path_components" expected to be of type "list"';
    {
      forward_path_components: converted,
    }
  ),
  with_forward_path_components_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"forward_path_components" expected to be of type "list"';
    {
      forward_path_components+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_network_insights_path_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_insights_path_id" expected to be of type "string"';
    {
      network_insights_path_id: converted,
    }
  ),
  with_path_found(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"path_found" expected to be of type "bool"';
    {
      path_found: converted,
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
  with_return_path_components(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"return_path_components" expected to be of type "list"';
    {
      return_path_components: converted,
    }
  ),
  with_return_path_components_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"return_path_components" expected to be of type "list"';
    {
      return_path_components+: converted,
    }
  ),
  with_start_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_date" expected to be of type "string"';
    {
      start_date: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_status_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"status_message" expected to be of type "string"';
    {
      status_message: converted,
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
  with_wait_for_completion(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"wait_for_completion" expected to be of type "bool"';
    {
      wait_for_completion: converted,
    }
  ),
  with_warning_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"warning_message" expected to be of type "string"';
    {
      warning_message: converted,
    }
  ),
}
