{
  local block = self,
  new(language_code, vocabulary_filter_name):: (
    {}
    + block.with_language_code(language_code)
    + block.with_vocabulary_filter_name(vocabulary_filter_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_download_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"download_uri" expected to be of type "string"';
    {
      download_uri: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_language_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"language_code" expected to be of type "string"';
    {
      language_code: converted,
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
  with_vocabulary_filter_file_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"vocabulary_filter_file_uri" expected to be of type "string"';
    {
      vocabulary_filter_file_uri: converted,
    }
  ),
  with_vocabulary_filter_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"vocabulary_filter_name" expected to be of type "string"';
    {
      vocabulary_filter_name: converted,
    }
  ),
  with_words(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"words" expected to be of type "list"';
    {
      words: converted,
    }
  ),
  with_words_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"words" expected to be of type "list"';
    {
      words+: converted,
    }
  ),
}
