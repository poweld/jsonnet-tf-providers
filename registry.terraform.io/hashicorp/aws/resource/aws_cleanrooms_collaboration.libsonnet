{
  local block = self,
  new(creator_display_name, creator_member_abilities, description, name, query_log_status):: (
    {}
    + block.with_creator_display_name(creator_display_name)
    + block.with_creator_member_abilities(creator_member_abilities)
    + block.with_description(description)
    + block.with_name(name)
    + block.with_query_log_status(query_log_status)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_create_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"create_time" expected to be of type "string"';
    {
      create_time: converted,
    }
  ),
  with_creator_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"creator_display_name" expected to be of type "string"';
    {
      creator_display_name: converted,
    }
  ),
  with_creator_member_abilities(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"creator_member_abilities" expected to be of type "list"';
    {
      creator_member_abilities: converted,
    }
  ),
  with_creator_member_abilities_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"creator_member_abilities" expected to be of type "list"';
    {
      creator_member_abilities+: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
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
  with_query_log_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"query_log_status" expected to be of type "string"';
    {
      query_log_status: converted,
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
  with_update_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"update_time" expected to be of type "string"';
    {
      update_time: converted,
    }
  ),
  data_encryption_metadata:: {
    local block = self,
    new(allow_clear_text, allow_duplicates, allow_joins_on_columns_with_different_names, preserve_nulls):: (
      {}
      + block.with_allow_clear_text(allow_clear_text)
      + block.with_allow_duplicates(allow_duplicates)
      + block.with_allow_joins_on_columns_with_different_names(allow_joins_on_columns_with_different_names)
      + block.with_preserve_nulls(preserve_nulls)
    ),
    with_allow_clear_text(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_clear_text" expected to be of type "bool"';
      {
        allow_clear_text: converted,
      }
    ),
    with_allow_duplicates(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_duplicates" expected to be of type "bool"';
      {
        allow_duplicates: converted,
      }
    ),
    with_allow_joins_on_columns_with_different_names(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_joins_on_columns_with_different_names" expected to be of type "bool"';
      {
        allow_joins_on_columns_with_different_names: converted,
      }
    ),
    with_preserve_nulls(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"preserve_nulls" expected to be of type "bool"';
      {
        preserve_nulls: converted,
      }
    ),
  },
  member:: {
    local block = self,
    new(account_id, display_name, member_abilities):: (
      {}
      + block.with_account_id(account_id)
      + block.with_display_name(display_name)
      + block.with_member_abilities(member_abilities)
    ),
    with_account_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_id" expected to be of type "string"';
      {
        account_id: converted,
      }
    ),
    with_display_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"display_name" expected to be of type "string"';
      {
        display_name: converted,
      }
    ),
    with_member_abilities(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"member_abilities" expected to be of type "list"';
      {
        member_abilities: converted,
      }
    ),
    with_member_abilities_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"member_abilities" expected to be of type "list"';
      {
        member_abilities+: converted,
      }
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_data_encryption_metadata(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_encryption_metadata: value,
    }
  ),
  with_member(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      member: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_data_encryption_metadata_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_encryption_metadata+: converted,
    }
  ),
  with_member_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      member+: converted,
    }
  ),
}
