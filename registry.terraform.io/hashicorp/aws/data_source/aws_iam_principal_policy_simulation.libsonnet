{
  local block = self,
  new(action_names, policy_source_arn):: (
    {}
    + block.with_action_names(action_names)
    + block.with_policy_source_arn(policy_source_arn)
  ),
  '#with_action_names':: "One or more names of actions, like 'iam:CreateUser', that should be included in the simulation.",
  with_action_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"action_names" expected to be of type "set"';
    {
      action_names: converted,
    }
  ),
  '#with_action_names_mixin':: "One or more names of actions, like 'iam:CreateUser', that should be included in the simulation.",
  with_action_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"action_names" expected to be of type "set"';
    {
      action_names+: converted,
    }
  ),
  '#with_additional_policies_json':: 'Additional principal-based policies to use in the simulation.',
  with_additional_policies_json(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_policies_json" expected to be of type "set"';
    {
      additional_policies_json: converted,
    }
  ),
  '#with_additional_policies_json_mixin':: 'Additional principal-based policies to use in the simulation.',
  with_additional_policies_json_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_policies_json" expected to be of type "set"';
    {
      additional_policies_json+: converted,
    }
  ),
  '#with_all_allowed':: "A summary of the results attribute which is true if all of the results have decision 'allowed', and false otherwise.",
  with_all_allowed(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"all_allowed" expected to be of type "bool"';
    {
      all_allowed: converted,
    }
  ),
  '#with_caller_arn':: 'ARN of a user to use as the caller of the simulated requests. If not specified, defaults to the principal specified in policy_source_arn, if it is a user ARN.',
  with_caller_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"caller_arn" expected to be of type "string"';
    {
      caller_arn: converted,
    }
  ),
  '#with_id':: 'Do not use',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_permissions_boundary_policies_json':: 'Additional permission boundary policies to use in the simulation.',
  with_permissions_boundary_policies_json(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions_boundary_policies_json" expected to be of type "set"';
    {
      permissions_boundary_policies_json: converted,
    }
  ),
  '#with_permissions_boundary_policies_json_mixin':: 'Additional permission boundary policies to use in the simulation.',
  with_permissions_boundary_policies_json_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions_boundary_policies_json" expected to be of type "set"';
    {
      permissions_boundary_policies_json+: converted,
    }
  ),
  '#with_policy_source_arn':: 'ARN of the principal (e.g. user, role) whose existing configured access policies will be used as the basis for the simulation. If you specify a role ARN here, you can also set caller_arn to simulate a particular user acting with the given role.',
  with_policy_source_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_source_arn" expected to be of type "string"';
    {
      policy_source_arn: converted,
    }
  ),
  '#with_resource_arns':: "ARNs of specific resources to use as the targets of the specified actions during simulation. If not specified, the simulator assumes '*' which represents general access across all resources.",
  with_resource_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_arns" expected to be of type "set"';
    {
      resource_arns: converted,
    }
  ),
  '#with_resource_arns_mixin':: "ARNs of specific resources to use as the targets of the specified actions during simulation. If not specified, the simulator assumes '*' which represents general access across all resources.",
  with_resource_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_arns" expected to be of type "set"';
    {
      resource_arns+: converted,
    }
  ),
  '#with_resource_handling_option':: 'Specifies the type of simulation to run. Some API operations need a particular resource handling option in order to produce a correct reesult.',
  with_resource_handling_option(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_handling_option" expected to be of type "string"';
    {
      resource_handling_option: converted,
    }
  ),
  '#with_resource_owner_account_id':: 'An AWS account ID to use as the simulated owner for any resource whose ARN does not include a specific owner account ID. Defaults to the account given as part of caller_arn.',
  with_resource_owner_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_owner_account_id" expected to be of type "string"';
    {
      resource_owner_account_id: converted,
    }
  ),
  '#with_resource_policy_json':: 'A resource policy to associate with all of the target resources for simulation purposes. The policy simulator does not automatically retrieve resource-level policies, so if a resource policy is crucial to your test then you must specify here the same policy document associated with your target resource(s).',
  with_resource_policy_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_policy_json" expected to be of type "string"';
    {
      resource_policy_json: converted,
    }
  ),
  with_results(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"results" expected to be of type "set"';
    {
      results: converted,
    }
  ),
  with_results_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"results" expected to be of type "set"';
    {
      results+: converted,
    }
  ),
  context:: {
    local block = self,
    new(key, type, values):: (
      {}
      + block.with_key(key)
      + block.with_type(type)
      + block.with_values(values)
    ),
    '#with_key':: "The key name of the context entry, such as 'aws:CurrentTime'.",
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    '#with_type':: "The type that the simulator should use to interpret the strings given in argument 'values'.",
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    '#with_values':: 'One or more values to assign to the context key, given as a string in a syntax appropriate for the selected value type.',
    with_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values: converted,
      }
    ),
    '#with_values_mixin':: 'One or more values to assign to the context key, given as a string in a syntax appropriate for the selected value type.',
    with_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values+: converted,
      }
    ),
  },
  with_context(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      context: value,
    }
  ),
  with_context_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      context+: converted,
    }
  ),
}
