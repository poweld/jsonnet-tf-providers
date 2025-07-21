{
  local block = self,
  new(security_group_arns, storage_virtual_machine_arn):: (
    {}
    + block.with_security_group_arns(security_group_arns)
    + block.with_storage_virtual_machine_arn(storage_virtual_machine_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_creation_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_time" expected to be of type "string"';
    {
      creation_time: converted,
    }
  ),
  with_fsx_filesystem_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"fsx_filesystem_arn" expected to be of type "string"';
    {
      fsx_filesystem_arn: converted,
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
  with_security_group_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_arns" expected to be of type "set"';
    {
      security_group_arns: converted,
    }
  ),
  with_security_group_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_arns" expected to be of type "set"';
    {
      security_group_arns+: converted,
    }
  ),
  with_storage_virtual_machine_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_virtual_machine_arn" expected to be of type "string"';
    {
      storage_virtual_machine_arn: converted,
    }
  ),
  with_subdirectory(value):: (
    local converted = value;
    assert std.isString(converted) : '"subdirectory" expected to be of type "string"';
    {
      subdirectory: converted,
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
  with_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"uri" expected to be of type "string"';
    {
      uri: converted,
    }
  ),
  protocol:: {
    local block = self,
    new():: (
      {}
    ),
    nfs:: {
      local block = self,
      new():: (
        {}
      ),
      mount_options:: {
        local block = self,
        new():: (
          {}
        ),
        with_version(value):: (
          local converted = value;
          assert std.isString(converted) : '"version" expected to be of type "string"';
          {
            version: converted,
          }
        ),
      },
      with_mount_options(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          mount_options: value,
        }
      ),
      with_mount_options_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          mount_options+: converted,
        }
      ),
    },
    smb:: {
      local block = self,
      new(password, user):: (
        {}
        + block.with_password(password)
        + block.with_user(user)
      ),
      with_domain(value):: (
        local converted = value;
        assert std.isString(converted) : '"domain" expected to be of type "string"';
        {
          domain: converted,
        }
      ),
      with_password(value):: (
        local converted = value;
        assert std.isString(converted) : '"password" expected to be of type "string"';
        {
          password: converted,
        }
      ),
      with_user(value):: (
        local converted = value;
        assert std.isString(converted) : '"user" expected to be of type "string"';
        {
          user: converted,
        }
      ),
      mount_options:: {
        local block = self,
        new():: (
          {}
        ),
        with_version(value):: (
          local converted = value;
          assert std.isString(converted) : '"version" expected to be of type "string"';
          {
            version: converted,
          }
        ),
      },
      with_mount_options(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          mount_options: value,
        }
      ),
      with_mount_options_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          mount_options+: converted,
        }
      ),
    },
    with_nfs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        nfs: value,
      }
    ),
    with_smb(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        smb: value,
      }
    ),
    with_nfs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        nfs+: converted,
      }
    ),
    with_smb_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        smb+: converted,
      }
    ),
  },
  with_protocol(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      protocol: value,
    }
  ),
  with_protocol_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      protocol+: converted,
    }
  ),
}
