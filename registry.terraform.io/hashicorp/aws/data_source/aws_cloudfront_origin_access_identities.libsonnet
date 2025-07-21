{
  local block = self,
  new():: (
    {}
  ),
  with_comments(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"comments" expected to be of type "set"';
    {
      comments: converted,
    }
  ),
  with_comments_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"comments" expected to be of type "set"';
    {
      comments+: converted,
    }
  ),
  with_iam_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"iam_arns" expected to be of type "set"';
    {
      iam_arns: converted,
    }
  ),
  with_iam_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"iam_arns" expected to be of type "set"';
    {
      iam_arns+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ids" expected to be of type "set"';
    {
      ids: converted,
    }
  ),
  with_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ids" expected to be of type "set"';
    {
      ids+: converted,
    }
  ),
  with_s3_canonical_user_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"s3_canonical_user_ids" expected to be of type "set"';
    {
      s3_canonical_user_ids: converted,
    }
  ),
  with_s3_canonical_user_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"s3_canonical_user_ids" expected to be of type "set"';
    {
      s3_canonical_user_ids+: converted,
    }
  ),
}
