{
  local block = self,
  new(brand_id, customization_id, template_name):: (
    {}
    + block.with_brand_id(brand_id)
    + block.with_customization_id(customization_id)
    + block.with_template_name(template_name)
  ),
  '#with_body':: 'The body of the customization',
  with_body(value):: (
    local converted = value;
    assert std.isString(converted) : '"body" expected to be of type "string"';
    {
      body: converted,
    }
  ),
  '#with_brand_id':: 'Brand ID',
  with_brand_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  '#with_customization_id':: 'The ID of the customization',
  with_customization_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"customization_id" expected to be of type "string"';
    {
      customization_id: converted,
    }
  ),
  '#with_id':: 'The ID of the customization',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_is_default':: 'Whether the customization is the default',
  with_is_default(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_default" expected to be of type "bool"';
    {
      is_default: converted,
    }
  ),
  '#with_language':: 'The language supported by the customization',
  with_language(value):: (
    local converted = value;
    assert std.isString(converted) : '"language" expected to be of type "string"';
    {
      language: converted,
    }
  ),
  '#with_links':: 'Link relations for this object - JSON HAL - Discoverable resources related to the email template',
  with_links(value):: (
    local converted = value;
    assert std.isString(converted) : '"links" expected to be of type "string"';
    {
      links: converted,
    }
  ),
  '#with_subject':: 'The subject of the customization',
  with_subject(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject" expected to be of type "string"';
    {
      subject: converted,
    }
  ),
  '#with_template_name':: 'Template Name',
  with_template_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_name" expected to be of type "string"';
    {
      template_name: converted,
    }
  ),
}
