{
  local block = self,
  new(license_type, workspace_id):: (
    {}
    + block.with_license_type(license_type)
    + block.with_workspace_id(workspace_id)
  ),
  with_free_trial_expiration(value):: (
    local converted = value;
    assert std.isString(converted) : '"free_trial_expiration" expected to be of type "string"';
    {
      free_trial_expiration: converted,
    }
  ),
  with_grafana_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"grafana_token" expected to be of type "string"';
    {
      grafana_token: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_license_expiration(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_expiration" expected to be of type "string"';
    {
      license_expiration: converted,
    }
  ),
  with_license_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_type" expected to be of type "string"';
    {
      license_type: converted,
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
  with_workspace_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_id" expected to be of type "string"';
    {
      workspace_id: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
