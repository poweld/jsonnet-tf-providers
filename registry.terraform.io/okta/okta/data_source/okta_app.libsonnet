{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_app",
      terraformType:: "data",
    }
  ),
  "#withActiveOnly":: "Search only ACTIVE applications.",
  withActiveOnly(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"active_only" expected to be of type "bool"';
    {
      active_only: converted,
    }
  ),
  "#withGroups":: "Groups associated with the application",
  withGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
    {
      groups: converted,
    }
  ),
  "#withGroupsMixin":: "Groups associated with the application",
  withGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
    {
      groups+: converted,
    }
  ),
  "#withId":: "Id of application to retrieve, conflicts with label and label_prefix.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withLabel":: "The label of the app to retrieve, conflicts with \t\t\t\tlabel_prefix and id. Label uses the ?q=<label> query parameter exposed by \t\t\t\tOkta's List Apps API. The API will search both name and label using that \t\t\t\tquery. Therefore similarly named and labeled apps may be returned in the query \t\t\t\tand have the unintended result of associating the wrong app with this data \t\t\t\tsource. See: \t\t\t\thttps://developer.okta.com/docs/reference/api/apps/#list-applications",
  withLabel(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  "#withLabelPrefix":: "Label prefix of the app to retrieve, conflicts with label and id. This will tell the \t\t\t\tprovider to do a starts with query as opposed to an equals query.",
  withLabelPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"label_prefix" expected to be of type "string"';
    {
      label_prefix: converted,
    }
  ),
  "#withLinks":: "Discoverable resources related to the app",
  withLinks(value):: (
    local converted = value;
    assert std.isString(converted) : '"links" expected to be of type "string"';
    {
      links: converted,
    }
  ),
  "#withName":: "Name of application.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withSkipGroups":: "Ignore groups sync. This is a temporary solution until 'groups' field is supported in all the app-like resources",
  withSkipGroups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_groups" expected to be of type "bool"';
    {
      skip_groups: converted,
    }
  ),
  "#withSkipUsers":: "Ignore users sync. This is a temporary solution until 'users' field is supported in all the app-like resources",
  withSkipUsers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_users" expected to be of type "bool"';
    {
      skip_users: converted,
    }
  ),
  "#withStatus":: "Status of application.",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withUsers":: "Users associated with the application",
  withUsers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users" expected to be of type "set"';
    {
      users: converted,
    }
  ),
  "#withUsersMixin":: "Users associated with the application",
  withUsersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users" expected to be of type "set"';
    {
      users+: converted,
    }
  ),
}
