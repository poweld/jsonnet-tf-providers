{
  local block = self,
  new(template_name):: (
    {}
    + block.with_template_name(template_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_template_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_name" expected to be of type "string"';
    {
      template_name: converted,
    }
  ),
  email_template:: {
    local block = self,
    new():: (
      {}
    ),
    with_default_substitutions(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_substitutions" expected to be of type "string"';
      {
        default_substitutions: converted,
      }
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_html_part(value):: (
      local converted = value;
      assert std.isString(converted) : '"html_part" expected to be of type "string"';
      {
        html_part: converted,
      }
    ),
    with_recommender_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"recommender_id" expected to be of type "string"';
      {
        recommender_id: converted,
      }
    ),
    with_subject(value):: (
      local converted = value;
      assert std.isString(converted) : '"subject" expected to be of type "string"';
      {
        subject: converted,
      }
    ),
    with_text_part(value):: (
      local converted = value;
      assert std.isString(converted) : '"text_part" expected to be of type "string"';
      {
        text_part: converted,
      }
    ),
    header:: {
      local block = self,
      new():: (
        {}
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    with_header(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        header: value,
      }
    ),
    with_header_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        header+: converted,
      }
    ),
  },
  with_email_template(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      email_template: value,
    }
  ),
  with_email_template_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      email_template+: converted,
    }
  ),
}
