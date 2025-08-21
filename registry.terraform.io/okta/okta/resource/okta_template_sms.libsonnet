{
  local block = self,
  new(name, template, type):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_template_sms",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["id", "template", "type"],
      },
    }
    + block.withTemplate(template)
    + block.withType(type)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withTemplate":: "SMS default template",
  withTemplate(value):: (
    local converted = value;
    assert std.isString(converted) : '"template" expected to be of type "string"';
    {
      template: converted,
    }
  ),
  "#withType":: "SMS template type",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  translations:: {
    local block = self,
    new(name, language, template):: (
      {
        jsonnetTfMetadata:: {
          terraformObject:: "okta_template_sms",
          terraformType:: "resource",
          terraformPrefix:: "",
          terraformName:: name,
          terraformAttributes:: ["language", "template"],
        },
      }
      + block.withLanguage(language)
      + block.withTemplate(template)
    ),
    "#withLanguage":: "The language to map the template to.",
    withLanguage(value):: (
      local converted = value;
      assert std.isString(converted) : '"language" expected to be of type "string"';
      {
        language: converted,
      }
    ),
    "#withTemplate":: "The SMS message.",
    withTemplate(value):: (
      local converted = value;
      assert std.isString(converted) : '"template" expected to be of type "string"';
      {
        template: converted,
      }
    ),
  },
  withTranslations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      translations: value,
    }
  ),
  withTranslationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      translations+: converted,
    }
  ),
}
