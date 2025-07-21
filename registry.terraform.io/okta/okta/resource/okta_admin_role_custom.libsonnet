{
  local block = self,
  new(description, label):: (
    {}
    + block.with_description(description)
    + block.with_label(label)
  ),
  '#with_description':: 'A human-readable description of the new Role',
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_label':: 'The name given to the new Role',
  with_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  '#with_permissions':: "The permissions that the new Role grants. At least one \t\t\t\tpermission must be specified when creating custom role. Valid values: 'okta.users.manage', \t\t\t\t'okta.users.create', \t\t\t\t'okta.users.read', \t\t\t\t'okta.users.credentials.manage', \t\t\t\t'okta.users.credentials.resetFactors', \t\t\t\t'okta.users.credentials.resetPassword', \t\t\t\t'okta.users.credentials.expirePassword', \t\t\t\t'okta.users.userprofile.manage', \t\t\t\t'okta.users.lifecycle.manage', \t\t\t\t'okta.users.lifecycle.activate', \t\t\t\t'okta.users.lifecycle.deactivate', \t\t\t\t'okta.users.lifecycle.suspend', \t\t\t\t'okta.users.lifecycle.unsuspend', \t\t\t\t'okta.users.lifecycle.delete', \t\t\t\t'okta.users.lifecycle.unlock', \t\t\t\t'okta.users.lifecycle.clearSessions', \t\t\t\t'okta.users.groupMembership.manage', \t\t\t\t'okta.users.appAssignment.manage', \t\t\t\t'okta.users.apitokens.manage', \t\t\t\t'okta.users.apitokens.read', \t\t\t\t'okta.groups.manage', \t\t\t\t'okta.groups.create', \t\t\t\t'okta.groups.members.manage', \t\t\t\t'okta.groups.read', \t\t\t\t'okta.groups.appAssignment.manage', \t\t\t\t'okta.apps.read', \t\t\t\t'okta.apps.manage', \t\t\t\t'okta.apps.assignment.manage', \t\t\t\t'okta.profilesources.import.run', \t\t\t\t'okta.authzServers.read', \t\t\t\t'okta.users.userprofile.manage', \t\t\t\t'okta.authzServers.manage', \t\t\t\t'okta.customizations.read', \t\t\t\t'okta.customizations.manage', \t\t\t\t'okta.identityProviders.read', \t\t\t\t'okta.identityProviders.manage', \t\t\t\t'okta.workflows.read', \t\t\t\t'okta.workflows.invoke'. \t\t\t\t'okta.governance.accessCertifications.manage', \t\t\t\t'okta.governance.accessRequests.manage', \t\t\t\t'okta.apps.manageFirstPartyApps', \t\t\t\t'okta.agents.manage', \t\t\t\t'okta.agents.register', \t\t\t\t'okta.agents.view', \t\t\t\t'okta.directories.manage', \t\t\t\t'okta.directories.read', \t\t\t\t'okta.devices.manage', \t\t\t\t'okta.devices.lifecycle.manage', \t\t\t\t'okta.devices.lifecycle.activate', \t\t\t\t'okta.devices.lifecycle.deactivate', \t\t\t\t'okta.devices.lifecycle.suspend', \t\t\t\t'okta.devices.lifecycle.unsuspend', \t\t\t\t'okta.devices.lifecycle.delete', \t\t\t\t'okta.devices.read', \t\t\t\t'okta.iam.read', \t\t\t\t'okta.support.cases.manage'.,",
  with_permissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions" expected to be of type "set"';
    {
      permissions: converted,
    }
  ),
  '#with_permissions_mixin':: "The permissions that the new Role grants. At least one \t\t\t\tpermission must be specified when creating custom role. Valid values: 'okta.users.manage', \t\t\t\t'okta.users.create', \t\t\t\t'okta.users.read', \t\t\t\t'okta.users.credentials.manage', \t\t\t\t'okta.users.credentials.resetFactors', \t\t\t\t'okta.users.credentials.resetPassword', \t\t\t\t'okta.users.credentials.expirePassword', \t\t\t\t'okta.users.userprofile.manage', \t\t\t\t'okta.users.lifecycle.manage', \t\t\t\t'okta.users.lifecycle.activate', \t\t\t\t'okta.users.lifecycle.deactivate', \t\t\t\t'okta.users.lifecycle.suspend', \t\t\t\t'okta.users.lifecycle.unsuspend', \t\t\t\t'okta.users.lifecycle.delete', \t\t\t\t'okta.users.lifecycle.unlock', \t\t\t\t'okta.users.lifecycle.clearSessions', \t\t\t\t'okta.users.groupMembership.manage', \t\t\t\t'okta.users.appAssignment.manage', \t\t\t\t'okta.users.apitokens.manage', \t\t\t\t'okta.users.apitokens.read', \t\t\t\t'okta.groups.manage', \t\t\t\t'okta.groups.create', \t\t\t\t'okta.groups.members.manage', \t\t\t\t'okta.groups.read', \t\t\t\t'okta.groups.appAssignment.manage', \t\t\t\t'okta.apps.read', \t\t\t\t'okta.apps.manage', \t\t\t\t'okta.apps.assignment.manage', \t\t\t\t'okta.profilesources.import.run', \t\t\t\t'okta.authzServers.read', \t\t\t\t'okta.users.userprofile.manage', \t\t\t\t'okta.authzServers.manage', \t\t\t\t'okta.customizations.read', \t\t\t\t'okta.customizations.manage', \t\t\t\t'okta.identityProviders.read', \t\t\t\t'okta.identityProviders.manage', \t\t\t\t'okta.workflows.read', \t\t\t\t'okta.workflows.invoke'. \t\t\t\t'okta.governance.accessCertifications.manage', \t\t\t\t'okta.governance.accessRequests.manage', \t\t\t\t'okta.apps.manageFirstPartyApps', \t\t\t\t'okta.agents.manage', \t\t\t\t'okta.agents.register', \t\t\t\t'okta.agents.view', \t\t\t\t'okta.directories.manage', \t\t\t\t'okta.directories.read', \t\t\t\t'okta.devices.manage', \t\t\t\t'okta.devices.lifecycle.manage', \t\t\t\t'okta.devices.lifecycle.activate', \t\t\t\t'okta.devices.lifecycle.deactivate', \t\t\t\t'okta.devices.lifecycle.suspend', \t\t\t\t'okta.devices.lifecycle.unsuspend', \t\t\t\t'okta.devices.lifecycle.delete', \t\t\t\t'okta.devices.read', \t\t\t\t'okta.iam.read', \t\t\t\t'okta.support.cases.manage'.,",
  with_permissions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions" expected to be of type "set"';
    {
      permissions+: converted,
    }
  ),
}
