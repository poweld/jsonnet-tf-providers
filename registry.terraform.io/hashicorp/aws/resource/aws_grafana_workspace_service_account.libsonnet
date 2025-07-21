{
  local block = self,
  new(grafana_role, name, workspace_id):: (
    {}
    + block.with_grafana_role(grafana_role)
    + block.with_name(name)
    + block.with_workspace_id(workspace_id)
  ),
  with_grafana_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"grafana_role" expected to be of type "string"';
    {
      grafana_role: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_service_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_account_id" expected to be of type "string"';
    {
      service_account_id: converted,
    }
  ),
  with_workspace_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_id" expected to be of type "string"';
    {
      workspace_id: converted,
    }
  ),
}
