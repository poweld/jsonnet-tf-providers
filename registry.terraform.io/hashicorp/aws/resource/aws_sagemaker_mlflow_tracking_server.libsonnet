{
  local block = self,
  new(artifact_store_uri, role_arn, tracking_server_name):: (
    {}
    + block.with_artifact_store_uri(artifact_store_uri)
    + block.with_role_arn(role_arn)
    + block.with_tracking_server_name(tracking_server_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_artifact_store_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"artifact_store_uri" expected to be of type "string"';
    {
      artifact_store_uri: converted,
    }
  ),
  with_automatic_model_registration(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"automatic_model_registration" expected to be of type "bool"';
    {
      automatic_model_registration: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_mlflow_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"mlflow_version" expected to be of type "string"';
    {
      mlflow_version: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  with_tracking_server_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"tracking_server_name" expected to be of type "string"';
    {
      tracking_server_name: converted,
    }
  ),
  with_tracking_server_size(value):: (
    local converted = value;
    assert std.isString(converted) : '"tracking_server_size" expected to be of type "string"';
    {
      tracking_server_size: converted,
    }
  ),
  with_tracking_server_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"tracking_server_url" expected to be of type "string"';
    {
      tracking_server_url: converted,
    }
  ),
  with_weekly_maintenance_window_start(value):: (
    local converted = value;
    assert std.isString(converted) : '"weekly_maintenance_window_start" expected to be of type "string"';
    {
      weekly_maintenance_window_start: converted,
    }
  ),
}
