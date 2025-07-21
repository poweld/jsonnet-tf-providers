{
  local block = self,
  new(instance_id, name):: (
    {}
    + block.with_instance_id(instance_id)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_quick_connect_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"quick_connect_id" expected to be of type "string"';
    {
      quick_connect_id: converted,
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
  quick_connect_config:: {
    local block = self,
    new(quick_connect_type):: (
      {}
      + block.with_quick_connect_type(quick_connect_type)
    ),
    with_quick_connect_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"quick_connect_type" expected to be of type "string"';
      {
        quick_connect_type: converted,
      }
    ),
    phone_config:: {
      local block = self,
      new(phone_number):: (
        {}
        + block.with_phone_number(phone_number)
      ),
      with_phone_number(value):: (
        local converted = value;
        assert std.isString(converted) : '"phone_number" expected to be of type "string"';
        {
          phone_number: converted,
        }
      ),
    },
    queue_config:: {
      local block = self,
      new(contact_flow_id, queue_id):: (
        {}
        + block.with_contact_flow_id(contact_flow_id)
        + block.with_queue_id(queue_id)
      ),
      with_contact_flow_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"contact_flow_id" expected to be of type "string"';
        {
          contact_flow_id: converted,
        }
      ),
      with_queue_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"queue_id" expected to be of type "string"';
        {
          queue_id: converted,
        }
      ),
    },
    user_config:: {
      local block = self,
      new(contact_flow_id, user_id):: (
        {}
        + block.with_contact_flow_id(contact_flow_id)
        + block.with_user_id(user_id)
      ),
      with_contact_flow_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"contact_flow_id" expected to be of type "string"';
        {
          contact_flow_id: converted,
        }
      ),
      with_user_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_id" expected to be of type "string"';
        {
          user_id: converted,
        }
      ),
    },
    with_phone_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        phone_config: value,
      }
    ),
    with_queue_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        queue_config: value,
      }
    ),
    with_user_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_config: value,
      }
    ),
    with_phone_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        phone_config+: converted,
      }
    ),
    with_queue_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        queue_config+: converted,
      }
    ),
    with_user_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_config+: converted,
      }
    ),
  },
  with_quick_connect_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      quick_connect_config: value,
    }
  ),
  with_quick_connect_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      quick_connect_config+: converted,
    }
  ),
}
