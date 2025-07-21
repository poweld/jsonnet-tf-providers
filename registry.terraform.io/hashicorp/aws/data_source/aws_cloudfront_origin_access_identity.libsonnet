{
  local block = self,
  new(id):: (
    {}
    + block.with_id(id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_caller_reference(value):: (
    local converted = value;
    assert std.isString(converted) : '"caller_reference" expected to be of type "string"';
    {
      caller_reference: converted,
    }
  ),
  with_cloudfront_access_identity_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudfront_access_identity_path" expected to be of type "string"';
    {
      cloudfront_access_identity_path: converted,
    }
  ),
  with_comment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  with_etag(value):: (
    local converted = value;
    assert std.isString(converted) : '"etag" expected to be of type "string"';
    {
      etag: converted,
    }
  ),
  with_iam_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_arn" expected to be of type "string"';
    {
      iam_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_s3_canonical_user_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_canonical_user_id" expected to be of type "string"';
    {
      s3_canonical_user_id: converted,
    }
  ),
}
