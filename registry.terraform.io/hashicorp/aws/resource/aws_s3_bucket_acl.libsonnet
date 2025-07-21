{
  local block = self,
  new(bucket):: (
    {}
    + block.with_bucket(bucket)
  ),
  with_acl(value):: (
    local converted = value;
    assert std.isString(converted) : '"acl" expected to be of type "string"';
    {
      acl: converted,
    }
  ),
  with_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  with_expected_bucket_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
    {
      expected_bucket_owner: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  access_control_policy:: {
    local block = self,
    new():: (
      {}
    ),
    grant:: {
      local block = self,
      new(permission):: (
        {}
        + block.with_permission(permission)
      ),
      with_permission(value):: (
        local converted = value;
        assert std.isString(converted) : '"permission" expected to be of type "string"';
        {
          permission: converted,
        }
      ),
      grantee:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_display_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"display_name" expected to be of type "string"';
          {
            display_name: converted,
          }
        ),
        with_email_address(value):: (
          local converted = value;
          assert std.isString(converted) : '"email_address" expected to be of type "string"';
          {
            email_address: converted,
          }
        ),
        with_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"id" expected to be of type "string"';
          {
            id: converted,
          }
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        with_uri(value):: (
          local converted = value;
          assert std.isString(converted) : '"uri" expected to be of type "string"';
          {
            uri: converted,
          }
        ),
      },
      with_grantee(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          grantee: value,
        }
      ),
      with_grantee_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          grantee+: converted,
        }
      ),
    },
    owner:: {
      local block = self,
      new(id):: (
        {}
        + block.with_id(id)
      ),
      with_display_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"display_name" expected to be of type "string"';
        {
          display_name: converted,
        }
      ),
      with_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"id" expected to be of type "string"';
        {
          id: converted,
        }
      ),
    },
    with_grant(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grant: value,
      }
    ),
    with_owner(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        owner: value,
      }
    ),
    with_grant_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grant+: converted,
      }
    ),
    with_owner_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        owner+: converted,
      }
    ),
  },
  with_access_control_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_control_policy: value,
    }
  ),
  with_access_control_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_control_policy+: converted,
    }
  ),
}
