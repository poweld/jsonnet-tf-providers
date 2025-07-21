{
  local block = self,
  new(index_id, thesaurus_id):: (
    {}
    + block.with_index_id(index_id)
    + block.with_thesaurus_id(thesaurus_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_error_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"error_message" expected to be of type "string"';
    {
      error_message: converted,
    }
  ),
  with_file_size_bytes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"file_size_bytes" expected to be of type "number"';
    {
      file_size_bytes: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_index_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"index_id" expected to be of type "string"';
    {
      index_id: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  with_source_s3_path(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"source_s3_path" expected to be of type "list"';
    {
      source_s3_path: converted,
    }
  ),
  with_source_s3_path_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"source_s3_path" expected to be of type "list"';
    {
      source_s3_path+: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_synonym_rule_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"synonym_rule_count" expected to be of type "number"';
    {
      synonym_rule_count: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_term_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"term_count" expected to be of type "number"';
    {
      term_count: converted,
    }
  ),
  with_thesaurus_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"thesaurus_id" expected to be of type "string"';
    {
      thesaurus_id: converted,
    }
  ),
  with_updated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"updated_at" expected to be of type "string"';
    {
      updated_at: converted,
    }
  ),
}
