{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
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
  csv_classifier:: {
    local block = self,
    new():: (
      {}
    ),
    with_allow_single_column(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_single_column" expected to be of type "bool"';
      {
        allow_single_column: converted,
      }
    ),
    with_contains_header(value):: (
      local converted = value;
      assert std.isString(converted) : '"contains_header" expected to be of type "string"';
      {
        contains_header: converted,
      }
    ),
    with_custom_datatype_configured(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"custom_datatype_configured" expected to be of type "bool"';
      {
        custom_datatype_configured: converted,
      }
    ),
    with_custom_datatypes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"custom_datatypes" expected to be of type "list"';
      {
        custom_datatypes: converted,
      }
    ),
    with_custom_datatypes_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"custom_datatypes" expected to be of type "list"';
      {
        custom_datatypes+: converted,
      }
    ),
    with_delimiter(value):: (
      local converted = value;
      assert std.isString(converted) : '"delimiter" expected to be of type "string"';
      {
        delimiter: converted,
      }
    ),
    with_disable_value_trimming(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disable_value_trimming" expected to be of type "bool"';
      {
        disable_value_trimming: converted,
      }
    ),
    with_header(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"header" expected to be of type "list"';
      {
        header: converted,
      }
    ),
    with_header_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"header" expected to be of type "list"';
      {
        header+: converted,
      }
    ),
    with_quote_symbol(value):: (
      local converted = value;
      assert std.isString(converted) : '"quote_symbol" expected to be of type "string"';
      {
        quote_symbol: converted,
      }
    ),
    with_serde(value):: (
      local converted = value;
      assert std.isString(converted) : '"serde" expected to be of type "string"';
      {
        serde: converted,
      }
    ),
  },
  grok_classifier:: {
    local block = self,
    new(classification, grok_pattern):: (
      {}
      + block.with_classification(classification)
      + block.with_grok_pattern(grok_pattern)
    ),
    with_classification(value):: (
      local converted = value;
      assert std.isString(converted) : '"classification" expected to be of type "string"';
      {
        classification: converted,
      }
    ),
    with_custom_patterns(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_patterns" expected to be of type "string"';
      {
        custom_patterns: converted,
      }
    ),
    with_grok_pattern(value):: (
      local converted = value;
      assert std.isString(converted) : '"grok_pattern" expected to be of type "string"';
      {
        grok_pattern: converted,
      }
    ),
  },
  json_classifier:: {
    local block = self,
    new(json_path):: (
      {}
      + block.with_json_path(json_path)
    ),
    with_json_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"json_path" expected to be of type "string"';
      {
        json_path: converted,
      }
    ),
  },
  xml_classifier:: {
    local block = self,
    new(classification, row_tag):: (
      {}
      + block.with_classification(classification)
      + block.with_row_tag(row_tag)
    ),
    with_classification(value):: (
      local converted = value;
      assert std.isString(converted) : '"classification" expected to be of type "string"';
      {
        classification: converted,
      }
    ),
    with_row_tag(value):: (
      local converted = value;
      assert std.isString(converted) : '"row_tag" expected to be of type "string"';
      {
        row_tag: converted,
      }
    ),
  },
  with_csv_classifier(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      csv_classifier: value,
    }
  ),
  with_grok_classifier(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      grok_classifier: value,
    }
  ),
  with_json_classifier(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      json_classifier: value,
    }
  ),
  with_xml_classifier(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      xml_classifier: value,
    }
  ),
  with_csv_classifier_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      csv_classifier+: converted,
    }
  ),
  with_grok_classifier_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      grok_classifier+: converted,
    }
  ),
  with_json_classifier_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      json_classifier+: converted,
    }
  ),
  with_xml_classifier_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      xml_classifier+: converted,
    }
  ),
}
