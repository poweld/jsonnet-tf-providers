{
  local block = self,
  new(base_theme_id, name, theme_id):: (
    {}
    + block.with_base_theme_id(base_theme_id)
    + block.with_name(name)
    + block.with_theme_id(theme_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_aws_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  with_base_theme_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_theme_id" expected to be of type "string"';
    {
      base_theme_id: converted,
    }
  ),
  with_created_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_time" expected to be of type "string"';
    {
      created_time: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_updated_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_time" expected to be of type "string"';
    {
      last_updated_time: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  with_theme_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"theme_id" expected to be of type "string"';
    {
      theme_id: converted,
    }
  ),
  with_version_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_description" expected to be of type "string"';
    {
      version_description: converted,
    }
  ),
  with_version_number(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"version_number" expected to be of type "number"';
    {
      version_number: converted,
    }
  ),
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    data_color_palette:: {
      local block = self,
      new():: (
        {}
      ),
      with_colors(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"colors" expected to be of type "list"';
        {
          colors: converted,
        }
      ),
      with_colors_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"colors" expected to be of type "list"';
        {
          colors+: converted,
        }
      ),
      with_empty_fill_color(value):: (
        local converted = value;
        assert std.isString(converted) : '"empty_fill_color" expected to be of type "string"';
        {
          empty_fill_color: converted,
        }
      ),
      with_min_max_gradient(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"min_max_gradient" expected to be of type "list"';
        {
          min_max_gradient: converted,
        }
      ),
      with_min_max_gradient_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"min_max_gradient" expected to be of type "list"';
        {
          min_max_gradient+: converted,
        }
      ),
    },
    sheet:: {
      local block = self,
      new():: (
        {}
      ),
      tile:: {
        local block = self,
        new():: (
          {}
        ),
        border:: {
          local block = self,
          new():: (
            {}
          ),
          with_show(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"show" expected to be of type "bool"';
            {
              show: converted,
            }
          ),
        },
        with_border(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            border: value,
          }
        ),
        with_border_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            border+: converted,
          }
        ),
      },
      tile_layout:: {
        local block = self,
        new():: (
          {}
        ),
        gutter:: {
          local block = self,
          new():: (
            {}
          ),
          with_show(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"show" expected to be of type "bool"';
            {
              show: converted,
            }
          ),
        },
        margin:: {
          local block = self,
          new():: (
            {}
          ),
          with_show(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"show" expected to be of type "bool"';
            {
              show: converted,
            }
          ),
        },
        with_gutter(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            gutter: value,
          }
        ),
        with_margin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            margin: value,
          }
        ),
        with_gutter_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            gutter+: converted,
          }
        ),
        with_margin_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            margin+: converted,
          }
        ),
      },
      with_tile(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tile: value,
        }
      ),
      with_tile_layout(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tile_layout: value,
        }
      ),
      with_tile_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tile+: converted,
        }
      ),
      with_tile_layout_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tile_layout+: converted,
        }
      ),
    },
    typography:: {
      local block = self,
      new():: (
        {}
      ),
      font_families:: {
        local block = self,
        new():: (
          {}
        ),
        with_font_family(value):: (
          local converted = value;
          assert std.isString(converted) : '"font_family" expected to be of type "string"';
          {
            font_family: converted,
          }
        ),
      },
      with_font_families(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          font_families: value,
        }
      ),
      with_font_families_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          font_families+: converted,
        }
      ),
    },
    ui_color_palette:: {
      local block = self,
      new():: (
        {}
      ),
      with_accent(value):: (
        local converted = value;
        assert std.isString(converted) : '"accent" expected to be of type "string"';
        {
          accent: converted,
        }
      ),
      with_accent_foreground(value):: (
        local converted = value;
        assert std.isString(converted) : '"accent_foreground" expected to be of type "string"';
        {
          accent_foreground: converted,
        }
      ),
      with_danger(value):: (
        local converted = value;
        assert std.isString(converted) : '"danger" expected to be of type "string"';
        {
          danger: converted,
        }
      ),
      with_danger_foreground(value):: (
        local converted = value;
        assert std.isString(converted) : '"danger_foreground" expected to be of type "string"';
        {
          danger_foreground: converted,
        }
      ),
      with_dimension(value):: (
        local converted = value;
        assert std.isString(converted) : '"dimension" expected to be of type "string"';
        {
          dimension: converted,
        }
      ),
      with_dimension_foreground(value):: (
        local converted = value;
        assert std.isString(converted) : '"dimension_foreground" expected to be of type "string"';
        {
          dimension_foreground: converted,
        }
      ),
      with_measure(value):: (
        local converted = value;
        assert std.isString(converted) : '"measure" expected to be of type "string"';
        {
          measure: converted,
        }
      ),
      with_measure_foreground(value):: (
        local converted = value;
        assert std.isString(converted) : '"measure_foreground" expected to be of type "string"';
        {
          measure_foreground: converted,
        }
      ),
      with_primary_background(value):: (
        local converted = value;
        assert std.isString(converted) : '"primary_background" expected to be of type "string"';
        {
          primary_background: converted,
        }
      ),
      with_primary_foreground(value):: (
        local converted = value;
        assert std.isString(converted) : '"primary_foreground" expected to be of type "string"';
        {
          primary_foreground: converted,
        }
      ),
      with_secondary_background(value):: (
        local converted = value;
        assert std.isString(converted) : '"secondary_background" expected to be of type "string"';
        {
          secondary_background: converted,
        }
      ),
      with_secondary_foreground(value):: (
        local converted = value;
        assert std.isString(converted) : '"secondary_foreground" expected to be of type "string"';
        {
          secondary_foreground: converted,
        }
      ),
      with_success(value):: (
        local converted = value;
        assert std.isString(converted) : '"success" expected to be of type "string"';
        {
          success: converted,
        }
      ),
      with_success_foreground(value):: (
        local converted = value;
        assert std.isString(converted) : '"success_foreground" expected to be of type "string"';
        {
          success_foreground: converted,
        }
      ),
      with_warning(value):: (
        local converted = value;
        assert std.isString(converted) : '"warning" expected to be of type "string"';
        {
          warning: converted,
        }
      ),
      with_warning_foreground(value):: (
        local converted = value;
        assert std.isString(converted) : '"warning_foreground" expected to be of type "string"';
        {
          warning_foreground: converted,
        }
      ),
    },
    with_data_color_palette(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_color_palette: value,
      }
    ),
    with_sheet(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sheet: value,
      }
    ),
    with_typography(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        typography: value,
      }
    ),
    with_ui_color_palette(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ui_color_palette: value,
      }
    ),
    with_data_color_palette_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_color_palette+: converted,
      }
    ),
    with_sheet_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sheet+: converted,
      }
    ),
    with_typography_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        typography+: converted,
      }
    ),
    with_ui_color_palette_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ui_color_palette+: converted,
      }
    ),
  },
  permissions:: {
    local block = self,
    new(actions, principal):: (
      {}
      + block.with_actions(actions)
      + block.with_principal(principal)
    ),
    with_actions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
      {
        actions: converted,
      }
    ),
    with_actions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
      {
        actions+: converted,
      }
    ),
    with_principal(value):: (
      local converted = value;
      assert std.isString(converted) : '"principal" expected to be of type "string"';
      {
        principal: converted,
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
  with_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  with_permissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permissions: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
  with_permissions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permissions+: converted,
    }
  ),
}
