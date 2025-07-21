{
  local block = self,
  new(function_name):: (
    {}
    + block.with_function_name(function_name)
  ),
  with_authorization_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorization_type" expected to be of type "string"';
    {
      authorization_type: converted,
    }
  ),
  with_cors(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cors" expected to be of type "list"';
    {
      cors: converted,
    }
  ),
  with_cors_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cors" expected to be of type "list"';
    {
      cors+: converted,
    }
  ),
  with_creation_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_time" expected to be of type "string"';
    {
      creation_time: converted,
    }
  ),
  with_function_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_arn" expected to be of type "string"';
    {
      function_arn: converted,
    }
  ),
  with_function_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  with_function_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_url" expected to be of type "string"';
    {
      function_url: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_invoke_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"invoke_mode" expected to be of type "string"';
    {
      invoke_mode: converted,
    }
  ),
  with_last_modified_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_time" expected to be of type "string"';
    {
      last_modified_time: converted,
    }
  ),
  with_qualifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"qualifier" expected to be of type "string"';
    {
      qualifier: converted,
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
  with_url_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"url_id" expected to be of type "string"';
    {
      url_id: converted,
    }
  ),
}
