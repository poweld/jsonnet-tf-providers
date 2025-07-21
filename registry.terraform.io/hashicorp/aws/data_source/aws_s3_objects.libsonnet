{
  local block = self,
  new(bucket):: (
    {}
    + block.with_bucket(bucket)
  ),
  with_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  with_common_prefixes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"common_prefixes" expected to be of type "list"';
    {
      common_prefixes: converted,
    }
  ),
  with_common_prefixes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"common_prefixes" expected to be of type "list"';
    {
      common_prefixes+: converted,
    }
  ),
  with_delimiter(value):: (
    local converted = value;
    assert std.isString(converted) : '"delimiter" expected to be of type "string"';
    {
      delimiter: converted,
    }
  ),
  with_encoding_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"encoding_type" expected to be of type "string"';
    {
      encoding_type: converted,
    }
  ),
  with_fetch_owner(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"fetch_owner" expected to be of type "bool"';
    {
      fetch_owner: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_keys(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"keys" expected to be of type "list"';
    {
      keys: converted,
    }
  ),
  with_keys_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"keys" expected to be of type "list"';
    {
      keys+: converted,
    }
  ),
  with_max_keys(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_keys" expected to be of type "number"';
    {
      max_keys: converted,
    }
  ),
  with_owners(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"owners" expected to be of type "list"';
    {
      owners: converted,
    }
  ),
  with_owners_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"owners" expected to be of type "list"';
    {
      owners+: converted,
    }
  ),
  with_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"prefix" expected to be of type "string"';
    {
      prefix: converted,
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
  with_request_charged(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_charged" expected to be of type "string"';
    {
      request_charged: converted,
    }
  ),
  with_request_payer(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_payer" expected to be of type "string"';
    {
      request_payer: converted,
    }
  ),
  with_start_after(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_after" expected to be of type "string"';
    {
      start_after: converted,
    }
  ),
}
