{
  local block = self,
  new(channel_class, name):: (
    {}
    + block.with_channel_class(channel_class)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_channel_class(value):: (
    local converted = value;
    assert std.isString(converted) : '"channel_class" expected to be of type "string"';
    {
      channel_class: converted,
    }
  ),
  with_channel_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"channel_id" expected to be of type "string"';
    {
      channel_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_log_level(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_level" expected to be of type "string"';
    {
      log_level: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  with_start_channel(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"start_channel" expected to be of type "bool"';
    {
      start_channel: converted,
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
  cdi_input_specification:: {
    local block = self,
    new(resolution):: (
      {}
      + block.with_resolution(resolution)
    ),
    with_resolution(value):: (
      local converted = value;
      assert std.isString(converted) : '"resolution" expected to be of type "string"';
      {
        resolution: converted,
      }
    ),
  },
  destinations:: {
    local block = self,
    new(id):: (
      {}
      + block.with_id(id)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    media_package_settings:: {
      local block = self,
      new(channel_id):: (
        {}
        + block.with_channel_id(channel_id)
      ),
      with_channel_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"channel_id" expected to be of type "string"';
        {
          channel_id: converted,
        }
      ),
    },
    multiplex_settings:: {
      local block = self,
      new(multiplex_id, program_name):: (
        {}
        + block.with_multiplex_id(multiplex_id)
        + block.with_program_name(program_name)
      ),
      with_multiplex_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"multiplex_id" expected to be of type "string"';
        {
          multiplex_id: converted,
        }
      ),
      with_program_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"program_name" expected to be of type "string"';
        {
          program_name: converted,
        }
      ),
    },
    settings:: {
      local block = self,
      new():: (
        {}
      ),
      with_password_param(value):: (
        local converted = value;
        assert std.isString(converted) : '"password_param" expected to be of type "string"';
        {
          password_param: converted,
        }
      ),
      with_stream_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"stream_name" expected to be of type "string"';
        {
          stream_name: converted,
        }
      ),
      with_url(value):: (
        local converted = value;
        assert std.isString(converted) : '"url" expected to be of type "string"';
        {
          url: converted,
        }
      ),
      with_username(value):: (
        local converted = value;
        assert std.isString(converted) : '"username" expected to be of type "string"';
        {
          username: converted,
        }
      ),
    },
    with_media_package_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        media_package_settings: value,
      }
    ),
    with_multiplex_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        multiplex_settings: value,
      }
    ),
    with_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        settings: value,
      }
    ),
    with_media_package_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        media_package_settings+: converted,
      }
    ),
    with_multiplex_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        multiplex_settings+: converted,
      }
    ),
    with_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        settings+: converted,
      }
    ),
  },
  encoder_settings:: {
    local block = self,
    new():: (
      {}
    ),
    audio_descriptions:: {
      local block = self,
      new(audio_selector_name, name):: (
        {}
        + block.with_audio_selector_name(audio_selector_name)
        + block.with_name(name)
      ),
      with_audio_selector_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"audio_selector_name" expected to be of type "string"';
        {
          audio_selector_name: converted,
        }
      ),
      with_audio_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"audio_type" expected to be of type "string"';
        {
          audio_type: converted,
        }
      ),
      with_audio_type_control(value):: (
        local converted = value;
        assert std.isString(converted) : '"audio_type_control" expected to be of type "string"';
        {
          audio_type_control: converted,
        }
      ),
      with_language_code(value):: (
        local converted = value;
        assert std.isString(converted) : '"language_code" expected to be of type "string"';
        {
          language_code: converted,
        }
      ),
      with_language_code_control(value):: (
        local converted = value;
        assert std.isString(converted) : '"language_code_control" expected to be of type "string"';
        {
          language_code_control: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_stream_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"stream_name" expected to be of type "string"';
        {
          stream_name: converted,
        }
      ),
      audio_normalization_settings:: {
        local block = self,
        new():: (
          {}
        ),
        with_algorithm(value):: (
          local converted = value;
          assert std.isString(converted) : '"algorithm" expected to be of type "string"';
          {
            algorithm: converted,
          }
        ),
        with_algorithm_control(value):: (
          local converted = value;
          assert std.isString(converted) : '"algorithm_control" expected to be of type "string"';
          {
            algorithm_control: converted,
          }
        ),
        with_target_lkfs(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"target_lkfs" expected to be of type "number"';
          {
            target_lkfs: converted,
          }
        ),
      },
      audio_watermark_settings:: {
        local block = self,
        new():: (
          {}
        ),
        nielsen_watermarks_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_nielsen_distribution_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"nielsen_distribution_type" expected to be of type "string"';
            {
              nielsen_distribution_type: converted,
            }
          ),
          nielsen_cbet_settings:: {
            local block = self,
            new(cbet_check_digit_string, cbet_stepaside, csid):: (
              {}
              + block.with_cbet_check_digit_string(cbet_check_digit_string)
              + block.with_cbet_stepaside(cbet_stepaside)
              + block.with_csid(csid)
            ),
            with_cbet_check_digit_string(value):: (
              local converted = value;
              assert std.isString(converted) : '"cbet_check_digit_string" expected to be of type "string"';
              {
                cbet_check_digit_string: converted,
              }
            ),
            with_cbet_stepaside(value):: (
              local converted = value;
              assert std.isString(converted) : '"cbet_stepaside" expected to be of type "string"';
              {
                cbet_stepaside: converted,
              }
            ),
            with_csid(value):: (
              local converted = value;
              assert std.isString(converted) : '"csid" expected to be of type "string"';
              {
                csid: converted,
              }
            ),
          },
          nielsen_naes_ii_nw_settings:: {
            local block = self,
            new(check_digit_string, sid):: (
              {}
              + block.with_check_digit_string(check_digit_string)
              + block.with_sid(sid)
            ),
            with_check_digit_string(value):: (
              local converted = value;
              assert std.isString(converted) : '"check_digit_string" expected to be of type "string"';
              {
                check_digit_string: converted,
              }
            ),
            with_sid(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"sid" expected to be of type "number"';
              {
                sid: converted,
              }
            ),
          },
          with_nielsen_cbet_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              nielsen_cbet_settings: value,
            }
          ),
          with_nielsen_naes_ii_nw_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              nielsen_naes_ii_nw_settings: value,
            }
          ),
          with_nielsen_cbet_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              nielsen_cbet_settings+: converted,
            }
          ),
          with_nielsen_naes_ii_nw_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              nielsen_naes_ii_nw_settings+: converted,
            }
          ),
        },
        with_nielsen_watermarks_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            nielsen_watermarks_settings: value,
          }
        ),
        with_nielsen_watermarks_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            nielsen_watermarks_settings+: converted,
          }
        ),
      },
      codec_settings:: {
        local block = self,
        new():: (
          {}
        ),
        aac_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_bitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
            {
              bitrate: converted,
            }
          ),
          with_coding_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"coding_mode" expected to be of type "string"';
            {
              coding_mode: converted,
            }
          ),
          with_input_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"input_type" expected to be of type "string"';
            {
              input_type: converted,
            }
          ),
          with_profile(value):: (
            local converted = value;
            assert std.isString(converted) : '"profile" expected to be of type "string"';
            {
              profile: converted,
            }
          ),
          with_rate_control_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"rate_control_mode" expected to be of type "string"';
            {
              rate_control_mode: converted,
            }
          ),
          with_raw_format(value):: (
            local converted = value;
            assert std.isString(converted) : '"raw_format" expected to be of type "string"';
            {
              raw_format: converted,
            }
          ),
          with_sample_rate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"sample_rate" expected to be of type "number"';
            {
              sample_rate: converted,
            }
          ),
          with_spec(value):: (
            local converted = value;
            assert std.isString(converted) : '"spec" expected to be of type "string"';
            {
              spec: converted,
            }
          ),
          with_vbr_quality(value):: (
            local converted = value;
            assert std.isString(converted) : '"vbr_quality" expected to be of type "string"';
            {
              vbr_quality: converted,
            }
          ),
        },
        ac3_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_bitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
            {
              bitrate: converted,
            }
          ),
          with_bitstream_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"bitstream_mode" expected to be of type "string"';
            {
              bitstream_mode: converted,
            }
          ),
          with_coding_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"coding_mode" expected to be of type "string"';
            {
              coding_mode: converted,
            }
          ),
          with_dialnorm(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"dialnorm" expected to be of type "number"';
            {
              dialnorm: converted,
            }
          ),
          with_drc_profile(value):: (
            local converted = value;
            assert std.isString(converted) : '"drc_profile" expected to be of type "string"';
            {
              drc_profile: converted,
            }
          ),
          with_lfe_filter(value):: (
            local converted = value;
            assert std.isString(converted) : '"lfe_filter" expected to be of type "string"';
            {
              lfe_filter: converted,
            }
          ),
          with_metadata_control(value):: (
            local converted = value;
            assert std.isString(converted) : '"metadata_control" expected to be of type "string"';
            {
              metadata_control: converted,
            }
          ),
        },
        eac3_atmos_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_bitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
            {
              bitrate: converted,
            }
          ),
          with_coding_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"coding_mode" expected to be of type "string"';
            {
              coding_mode: converted,
            }
          ),
          with_dialnorm(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"dialnorm" expected to be of type "number"';
            {
              dialnorm: converted,
            }
          ),
          with_drc_line(value):: (
            local converted = value;
            assert std.isString(converted) : '"drc_line" expected to be of type "string"';
            {
              drc_line: converted,
            }
          ),
          with_drc_rf(value):: (
            local converted = value;
            assert std.isString(converted) : '"drc_rf" expected to be of type "string"';
            {
              drc_rf: converted,
            }
          ),
          with_height_trim(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"height_trim" expected to be of type "number"';
            {
              height_trim: converted,
            }
          ),
          with_surround_trim(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"surround_trim" expected to be of type "number"';
            {
              surround_trim: converted,
            }
          ),
        },
        eac3_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_attenuation_control(value):: (
            local converted = value;
            assert std.isString(converted) : '"attenuation_control" expected to be of type "string"';
            {
              attenuation_control: converted,
            }
          ),
          with_bitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
            {
              bitrate: converted,
            }
          ),
          with_bitstream_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"bitstream_mode" expected to be of type "string"';
            {
              bitstream_mode: converted,
            }
          ),
          with_coding_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"coding_mode" expected to be of type "string"';
            {
              coding_mode: converted,
            }
          ),
          with_dc_filter(value):: (
            local converted = value;
            assert std.isString(converted) : '"dc_filter" expected to be of type "string"';
            {
              dc_filter: converted,
            }
          ),
          with_dialnorm(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"dialnorm" expected to be of type "number"';
            {
              dialnorm: converted,
            }
          ),
          with_drc_line(value):: (
            local converted = value;
            assert std.isString(converted) : '"drc_line" expected to be of type "string"';
            {
              drc_line: converted,
            }
          ),
          with_drc_rf(value):: (
            local converted = value;
            assert std.isString(converted) : '"drc_rf" expected to be of type "string"';
            {
              drc_rf: converted,
            }
          ),
          with_lfe_control(value):: (
            local converted = value;
            assert std.isString(converted) : '"lfe_control" expected to be of type "string"';
            {
              lfe_control: converted,
            }
          ),
          with_lfe_filter(value):: (
            local converted = value;
            assert std.isString(converted) : '"lfe_filter" expected to be of type "string"';
            {
              lfe_filter: converted,
            }
          ),
          with_lo_ro_center_mix_level(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"lo_ro_center_mix_level" expected to be of type "number"';
            {
              lo_ro_center_mix_level: converted,
            }
          ),
          with_lo_ro_surround_mix_level(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"lo_ro_surround_mix_level" expected to be of type "number"';
            {
              lo_ro_surround_mix_level: converted,
            }
          ),
          with_lt_rt_center_mix_level(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"lt_rt_center_mix_level" expected to be of type "number"';
            {
              lt_rt_center_mix_level: converted,
            }
          ),
          with_lt_rt_surround_mix_level(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"lt_rt_surround_mix_level" expected to be of type "number"';
            {
              lt_rt_surround_mix_level: converted,
            }
          ),
          with_metadata_control(value):: (
            local converted = value;
            assert std.isString(converted) : '"metadata_control" expected to be of type "string"';
            {
              metadata_control: converted,
            }
          ),
          with_passthrough_control(value):: (
            local converted = value;
            assert std.isString(converted) : '"passthrough_control" expected to be of type "string"';
            {
              passthrough_control: converted,
            }
          ),
          with_phase_control(value):: (
            local converted = value;
            assert std.isString(converted) : '"phase_control" expected to be of type "string"';
            {
              phase_control: converted,
            }
          ),
          with_stereo_downmix(value):: (
            local converted = value;
            assert std.isString(converted) : '"stereo_downmix" expected to be of type "string"';
            {
              stereo_downmix: converted,
            }
          ),
          with_surround_ex_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"surround_ex_mode" expected to be of type "string"';
            {
              surround_ex_mode: converted,
            }
          ),
          with_surround_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"surround_mode" expected to be of type "string"';
            {
              surround_mode: converted,
            }
          ),
        },
        mp2_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_bitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
            {
              bitrate: converted,
            }
          ),
          with_coding_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"coding_mode" expected to be of type "string"';
            {
              coding_mode: converted,
            }
          ),
          with_sample_rate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"sample_rate" expected to be of type "number"';
            {
              sample_rate: converted,
            }
          ),
        },
        pass_through_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        wav_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_bit_depth(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bit_depth" expected to be of type "number"';
            {
              bit_depth: converted,
            }
          ),
          with_coding_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"coding_mode" expected to be of type "string"';
            {
              coding_mode: converted,
            }
          ),
          with_sample_rate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"sample_rate" expected to be of type "number"';
            {
              sample_rate: converted,
            }
          ),
        },
        with_aac_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            aac_settings: value,
          }
        ),
        with_ac3_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ac3_settings: value,
          }
        ),
        with_eac3_atmos_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            eac3_atmos_settings: value,
          }
        ),
        with_eac3_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            eac3_settings: value,
          }
        ),
        with_mp2_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            mp2_settings: value,
          }
        ),
        with_pass_through_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            pass_through_settings: value,
          }
        ),
        with_wav_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            wav_settings: value,
          }
        ),
        with_aac_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            aac_settings+: converted,
          }
        ),
        with_ac3_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ac3_settings+: converted,
          }
        ),
        with_eac3_atmos_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            eac3_atmos_settings+: converted,
          }
        ),
        with_eac3_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            eac3_settings+: converted,
          }
        ),
        with_mp2_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            mp2_settings+: converted,
          }
        ),
        with_pass_through_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            pass_through_settings+: converted,
          }
        ),
        with_wav_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            wav_settings+: converted,
          }
        ),
      },
      remix_settings:: {
        local block = self,
        new():: (
          {}
        ),
        with_channels_in(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"channels_in" expected to be of type "number"';
          {
            channels_in: converted,
          }
        ),
        with_channels_out(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"channels_out" expected to be of type "number"';
          {
            channels_out: converted,
          }
        ),
        channel_mappings:: {
          local block = self,
          new(output_channel):: (
            {}
            + block.with_output_channel(output_channel)
          ),
          with_output_channel(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"output_channel" expected to be of type "number"';
            {
              output_channel: converted,
            }
          ),
          input_channel_levels:: {
            local block = self,
            new(gain, input_channel):: (
              {}
              + block.with_gain(gain)
              + block.with_input_channel(input_channel)
            ),
            with_gain(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"gain" expected to be of type "number"';
              {
                gain: converted,
              }
            ),
            with_input_channel(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"input_channel" expected to be of type "number"';
              {
                input_channel: converted,
              }
            ),
          },
          with_input_channel_levels(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              input_channel_levels: value,
            }
          ),
          with_input_channel_levels_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              input_channel_levels+: converted,
            }
          ),
        },
        with_channel_mappings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            channel_mappings: value,
          }
        ),
        with_channel_mappings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            channel_mappings+: converted,
          }
        ),
      },
      with_audio_normalization_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audio_normalization_settings: value,
        }
      ),
      with_audio_watermark_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audio_watermark_settings: value,
        }
      ),
      with_codec_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          codec_settings: value,
        }
      ),
      with_remix_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          remix_settings: value,
        }
      ),
      with_audio_normalization_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audio_normalization_settings+: converted,
        }
      ),
      with_audio_watermark_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audio_watermark_settings+: converted,
        }
      ),
      with_codec_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          codec_settings+: converted,
        }
      ),
      with_remix_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          remix_settings+: converted,
        }
      ),
    },
    avail_blanking:: {
      local block = self,
      new():: (
        {}
      ),
      with_state(value):: (
        local converted = value;
        assert std.isString(converted) : '"state" expected to be of type "string"';
        {
          state: converted,
        }
      ),
      avail_blanking_image:: {
        local block = self,
        new(uri):: (
          {}
          + block.with_uri(uri)
        ),
        with_password_param(value):: (
          local converted = value;
          assert std.isString(converted) : '"password_param" expected to be of type "string"';
          {
            password_param: converted,
          }
        ),
        with_uri(value):: (
          local converted = value;
          assert std.isString(converted) : '"uri" expected to be of type "string"';
          {
            uri: converted,
          }
        ),
        with_username(value):: (
          local converted = value;
          assert std.isString(converted) : '"username" expected to be of type "string"';
          {
            username: converted,
          }
        ),
      },
      with_avail_blanking_image(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          avail_blanking_image: value,
        }
      ),
      with_avail_blanking_image_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          avail_blanking_image+: converted,
        }
      ),
    },
    caption_descriptions:: {
      local block = self,
      new(caption_selector_name, name):: (
        {}
        + block.with_caption_selector_name(caption_selector_name)
        + block.with_name(name)
      ),
      with_accessibility(value):: (
        local converted = value;
        assert std.isString(converted) : '"accessibility" expected to be of type "string"';
        {
          accessibility: converted,
        }
      ),
      with_caption_selector_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"caption_selector_name" expected to be of type "string"';
        {
          caption_selector_name: converted,
        }
      ),
      with_language_code(value):: (
        local converted = value;
        assert std.isString(converted) : '"language_code" expected to be of type "string"';
        {
          language_code: converted,
        }
      ),
      with_language_description(value):: (
        local converted = value;
        assert std.isString(converted) : '"language_description" expected to be of type "string"';
        {
          language_description: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      destination_settings:: {
        local block = self,
        new():: (
          {}
        ),
        arib_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        burn_in_destination_settings:: {
          local block = self,
          new(outline_color, teletext_grid_control):: (
            {}
            + block.with_outline_color(outline_color)
            + block.with_teletext_grid_control(teletext_grid_control)
          ),
          with_alignment(value):: (
            local converted = value;
            assert std.isString(converted) : '"alignment" expected to be of type "string"';
            {
              alignment: converted,
            }
          ),
          with_background_color(value):: (
            local converted = value;
            assert std.isString(converted) : '"background_color" expected to be of type "string"';
            {
              background_color: converted,
            }
          ),
          with_background_opacity(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"background_opacity" expected to be of type "number"';
            {
              background_opacity: converted,
            }
          ),
          with_font_color(value):: (
            local converted = value;
            assert std.isString(converted) : '"font_color" expected to be of type "string"';
            {
              font_color: converted,
            }
          ),
          with_font_opacity(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"font_opacity" expected to be of type "number"';
            {
              font_opacity: converted,
            }
          ),
          with_font_resolution(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"font_resolution" expected to be of type "number"';
            {
              font_resolution: converted,
            }
          ),
          with_font_size(value):: (
            local converted = value;
            assert std.isString(converted) : '"font_size" expected to be of type "string"';
            {
              font_size: converted,
            }
          ),
          with_outline_color(value):: (
            local converted = value;
            assert std.isString(converted) : '"outline_color" expected to be of type "string"';
            {
              outline_color: converted,
            }
          ),
          with_outline_size(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"outline_size" expected to be of type "number"';
            {
              outline_size: converted,
            }
          ),
          with_shadow_color(value):: (
            local converted = value;
            assert std.isString(converted) : '"shadow_color" expected to be of type "string"';
            {
              shadow_color: converted,
            }
          ),
          with_shadow_opacity(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"shadow_opacity" expected to be of type "number"';
            {
              shadow_opacity: converted,
            }
          ),
          with_shadow_x_offset(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"shadow_x_offset" expected to be of type "number"';
            {
              shadow_x_offset: converted,
            }
          ),
          with_shadow_y_offset(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"shadow_y_offset" expected to be of type "number"';
            {
              shadow_y_offset: converted,
            }
          ),
          with_teletext_grid_control(value):: (
            local converted = value;
            assert std.isString(converted) : '"teletext_grid_control" expected to be of type "string"';
            {
              teletext_grid_control: converted,
            }
          ),
          with_x_position(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"x_position" expected to be of type "number"';
            {
              x_position: converted,
            }
          ),
          with_y_position(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"y_position" expected to be of type "number"';
            {
              y_position: converted,
            }
          ),
          font:: {
            local block = self,
            new(uri):: (
              {}
              + block.with_uri(uri)
            ),
            with_password_param(value):: (
              local converted = value;
              assert std.isString(converted) : '"password_param" expected to be of type "string"';
              {
                password_param: converted,
              }
            ),
            with_uri(value):: (
              local converted = value;
              assert std.isString(converted) : '"uri" expected to be of type "string"';
              {
                uri: converted,
              }
            ),
            with_username(value):: (
              local converted = value;
              assert std.isString(converted) : '"username" expected to be of type "string"';
              {
                username: converted,
              }
            ),
          },
          with_font(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              font: value,
            }
          ),
          with_font_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              font+: converted,
            }
          ),
        },
        dvb_sub_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_alignment(value):: (
            local converted = value;
            assert std.isString(converted) : '"alignment" expected to be of type "string"';
            {
              alignment: converted,
            }
          ),
          with_background_color(value):: (
            local converted = value;
            assert std.isString(converted) : '"background_color" expected to be of type "string"';
            {
              background_color: converted,
            }
          ),
          with_background_opacity(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"background_opacity" expected to be of type "number"';
            {
              background_opacity: converted,
            }
          ),
          with_font_color(value):: (
            local converted = value;
            assert std.isString(converted) : '"font_color" expected to be of type "string"';
            {
              font_color: converted,
            }
          ),
          with_font_opacity(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"font_opacity" expected to be of type "number"';
            {
              font_opacity: converted,
            }
          ),
          with_font_resolution(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"font_resolution" expected to be of type "number"';
            {
              font_resolution: converted,
            }
          ),
          with_font_size(value):: (
            local converted = value;
            assert std.isString(converted) : '"font_size" expected to be of type "string"';
            {
              font_size: converted,
            }
          ),
          with_outline_color(value):: (
            local converted = value;
            assert std.isString(converted) : '"outline_color" expected to be of type "string"';
            {
              outline_color: converted,
            }
          ),
          with_outline_size(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"outline_size" expected to be of type "number"';
            {
              outline_size: converted,
            }
          ),
          with_shadow_color(value):: (
            local converted = value;
            assert std.isString(converted) : '"shadow_color" expected to be of type "string"';
            {
              shadow_color: converted,
            }
          ),
          with_shadow_opacity(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"shadow_opacity" expected to be of type "number"';
            {
              shadow_opacity: converted,
            }
          ),
          with_shadow_x_offset(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"shadow_x_offset" expected to be of type "number"';
            {
              shadow_x_offset: converted,
            }
          ),
          with_shadow_y_offset(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"shadow_y_offset" expected to be of type "number"';
            {
              shadow_y_offset: converted,
            }
          ),
          with_teletext_grid_control(value):: (
            local converted = value;
            assert std.isString(converted) : '"teletext_grid_control" expected to be of type "string"';
            {
              teletext_grid_control: converted,
            }
          ),
          with_x_position(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"x_position" expected to be of type "number"';
            {
              x_position: converted,
            }
          ),
          with_y_position(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"y_position" expected to be of type "number"';
            {
              y_position: converted,
            }
          ),
          font:: {
            local block = self,
            new(uri):: (
              {}
              + block.with_uri(uri)
            ),
            with_password_param(value):: (
              local converted = value;
              assert std.isString(converted) : '"password_param" expected to be of type "string"';
              {
                password_param: converted,
              }
            ),
            with_uri(value):: (
              local converted = value;
              assert std.isString(converted) : '"uri" expected to be of type "string"';
              {
                uri: converted,
              }
            ),
            with_username(value):: (
              local converted = value;
              assert std.isString(converted) : '"username" expected to be of type "string"';
              {
                username: converted,
              }
            ),
          },
          with_font(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              font: value,
            }
          ),
          with_font_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              font+: converted,
            }
          ),
        },
        ebu_tt_d_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_copyright_holder(value):: (
            local converted = value;
            assert std.isString(converted) : '"copyright_holder" expected to be of type "string"';
            {
              copyright_holder: converted,
            }
          ),
          with_fill_line_gap(value):: (
            local converted = value;
            assert std.isString(converted) : '"fill_line_gap" expected to be of type "string"';
            {
              fill_line_gap: converted,
            }
          ),
          with_font_family(value):: (
            local converted = value;
            assert std.isString(converted) : '"font_family" expected to be of type "string"';
            {
              font_family: converted,
            }
          ),
          with_style_control(value):: (
            local converted = value;
            assert std.isString(converted) : '"style_control" expected to be of type "string"';
            {
              style_control: converted,
            }
          ),
        },
        embedded_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        embedded_plus_scte20_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        rtmp_caption_info_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        scte20_plus_embedded_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        scte27_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        smpte_tt_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        teletext_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        ttml_destination_settings:: {
          local block = self,
          new(style_control):: (
            {}
            + block.with_style_control(style_control)
          ),
          with_style_control(value):: (
            local converted = value;
            assert std.isString(converted) : '"style_control" expected to be of type "string"';
            {
              style_control: converted,
            }
          ),
        },
        webvtt_destination_settings:: {
          local block = self,
          new(style_control):: (
            {}
            + block.with_style_control(style_control)
          ),
          with_style_control(value):: (
            local converted = value;
            assert std.isString(converted) : '"style_control" expected to be of type "string"';
            {
              style_control: converted,
            }
          ),
        },
        with_arib_destination_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            arib_destination_settings: value,
          }
        ),
        with_burn_in_destination_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            burn_in_destination_settings: value,
          }
        ),
        with_dvb_sub_destination_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            dvb_sub_destination_settings: value,
          }
        ),
        with_ebu_tt_d_destination_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ebu_tt_d_destination_settings: value,
          }
        ),
        with_embedded_destination_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            embedded_destination_settings: value,
          }
        ),
        with_embedded_plus_scte20_destination_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            embedded_plus_scte20_destination_settings: value,
          }
        ),
        with_rtmp_caption_info_destination_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rtmp_caption_info_destination_settings: value,
          }
        ),
        with_scte20_plus_embedded_destination_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            scte20_plus_embedded_destination_settings: value,
          }
        ),
        with_scte27_destination_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            scte27_destination_settings: value,
          }
        ),
        with_smpte_tt_destination_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            smpte_tt_destination_settings: value,
          }
        ),
        with_teletext_destination_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            teletext_destination_settings: value,
          }
        ),
        with_ttml_destination_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ttml_destination_settings: value,
          }
        ),
        with_webvtt_destination_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            webvtt_destination_settings: value,
          }
        ),
        with_arib_destination_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            arib_destination_settings+: converted,
          }
        ),
        with_burn_in_destination_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            burn_in_destination_settings+: converted,
          }
        ),
        with_dvb_sub_destination_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            dvb_sub_destination_settings+: converted,
          }
        ),
        with_ebu_tt_d_destination_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ebu_tt_d_destination_settings+: converted,
          }
        ),
        with_embedded_destination_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            embedded_destination_settings+: converted,
          }
        ),
        with_embedded_plus_scte20_destination_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            embedded_plus_scte20_destination_settings+: converted,
          }
        ),
        with_rtmp_caption_info_destination_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rtmp_caption_info_destination_settings+: converted,
          }
        ),
        with_scte20_plus_embedded_destination_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            scte20_plus_embedded_destination_settings+: converted,
          }
        ),
        with_scte27_destination_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            scte27_destination_settings+: converted,
          }
        ),
        with_smpte_tt_destination_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            smpte_tt_destination_settings+: converted,
          }
        ),
        with_teletext_destination_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            teletext_destination_settings+: converted,
          }
        ),
        with_ttml_destination_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ttml_destination_settings+: converted,
          }
        ),
        with_webvtt_destination_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            webvtt_destination_settings+: converted,
          }
        ),
      },
      with_destination_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_settings: value,
        }
      ),
      with_destination_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_settings+: converted,
        }
      ),
    },
    global_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_initial_audio_gain(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"initial_audio_gain" expected to be of type "number"';
        {
          initial_audio_gain: converted,
        }
      ),
      with_input_end_action(value):: (
        local converted = value;
        assert std.isString(converted) : '"input_end_action" expected to be of type "string"';
        {
          input_end_action: converted,
        }
      ),
      with_output_locking_mode(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_locking_mode" expected to be of type "string"';
        {
          output_locking_mode: converted,
        }
      ),
      with_output_timing_source(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_timing_source" expected to be of type "string"';
        {
          output_timing_source: converted,
        }
      ),
      with_support_low_framerate_inputs(value):: (
        local converted = value;
        assert std.isString(converted) : '"support_low_framerate_inputs" expected to be of type "string"';
        {
          support_low_framerate_inputs: converted,
        }
      ),
      input_loss_behavior:: {
        local block = self,
        new():: (
          {}
        ),
        with_black_frame_msec(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"black_frame_msec" expected to be of type "number"';
          {
            black_frame_msec: converted,
          }
        ),
        with_input_loss_image_color(value):: (
          local converted = value;
          assert std.isString(converted) : '"input_loss_image_color" expected to be of type "string"';
          {
            input_loss_image_color: converted,
          }
        ),
        with_input_loss_image_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"input_loss_image_type" expected to be of type "string"';
          {
            input_loss_image_type: converted,
          }
        ),
        with_repeat_frame_msec(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"repeat_frame_msec" expected to be of type "number"';
          {
            repeat_frame_msec: converted,
          }
        ),
        input_loss_image_slate:: {
          local block = self,
          new(uri):: (
            {}
            + block.with_uri(uri)
          ),
          with_password_param(value):: (
            local converted = value;
            assert std.isString(converted) : '"password_param" expected to be of type "string"';
            {
              password_param: converted,
            }
          ),
          with_uri(value):: (
            local converted = value;
            assert std.isString(converted) : '"uri" expected to be of type "string"';
            {
              uri: converted,
            }
          ),
          with_username(value):: (
            local converted = value;
            assert std.isString(converted) : '"username" expected to be of type "string"';
            {
              username: converted,
            }
          ),
        },
        with_input_loss_image_slate(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_loss_image_slate: value,
          }
        ),
        with_input_loss_image_slate_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_loss_image_slate+: converted,
          }
        ),
      },
      with_input_loss_behavior(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input_loss_behavior: value,
        }
      ),
      with_input_loss_behavior_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input_loss_behavior+: converted,
        }
      ),
    },
    motion_graphics_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_motion_graphics_insertion(value):: (
        local converted = value;
        assert std.isString(converted) : '"motion_graphics_insertion" expected to be of type "string"';
        {
          motion_graphics_insertion: converted,
        }
      ),
      motion_graphics_settings:: {
        local block = self,
        new():: (
          {}
        ),
        html_motion_graphics_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        with_html_motion_graphics_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            html_motion_graphics_settings: value,
          }
        ),
        with_html_motion_graphics_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            html_motion_graphics_settings+: converted,
          }
        ),
      },
      with_motion_graphics_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          motion_graphics_settings: value,
        }
      ),
      with_motion_graphics_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          motion_graphics_settings+: converted,
        }
      ),
    },
    nielsen_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_distributor_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"distributor_id" expected to be of type "string"';
        {
          distributor_id: converted,
        }
      ),
      with_nielsen_pcm_to_id3_tagging(value):: (
        local converted = value;
        assert std.isString(converted) : '"nielsen_pcm_to_id3_tagging" expected to be of type "string"';
        {
          nielsen_pcm_to_id3_tagging: converted,
        }
      ),
    },
    output_groups:: {
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
      output_group_settings:: {
        local block = self,
        new():: (
          {}
        ),
        archive_group_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_rollover_interval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"rollover_interval" expected to be of type "number"';
            {
              rollover_interval: converted,
            }
          ),
          archive_cdn_settings:: {
            local block = self,
            new():: (
              {}
            ),
            archive_s3_settings:: {
              local block = self,
              new():: (
                {}
              ),
              with_canned_acl(value):: (
                local converted = value;
                assert std.isString(converted) : '"canned_acl" expected to be of type "string"';
                {
                  canned_acl: converted,
                }
              ),
            },
            with_archive_s3_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                archive_s3_settings: value,
              }
            ),
            with_archive_s3_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                archive_s3_settings+: converted,
              }
            ),
          },
          destination:: {
            local block = self,
            new(destination_ref_id):: (
              {}
              + block.with_destination_ref_id(destination_ref_id)
            ),
            with_destination_ref_id(value):: (
              local converted = value;
              assert std.isString(converted) : '"destination_ref_id" expected to be of type "string"';
              {
                destination_ref_id: converted,
              }
            ),
          },
          with_archive_cdn_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              archive_cdn_settings: value,
            }
          ),
          with_destination(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination: value,
            }
          ),
          with_archive_cdn_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              archive_cdn_settings+: converted,
            }
          ),
          with_destination_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination+: converted,
            }
          ),
        },
        frame_capture_group_settings:: {
          local block = self,
          new():: (
            {}
          ),
          destination:: {
            local block = self,
            new(destination_ref_id):: (
              {}
              + block.with_destination_ref_id(destination_ref_id)
            ),
            with_destination_ref_id(value):: (
              local converted = value;
              assert std.isString(converted) : '"destination_ref_id" expected to be of type "string"';
              {
                destination_ref_id: converted,
              }
            ),
          },
          frame_capture_cdn_settings:: {
            local block = self,
            new():: (
              {}
            ),
            frame_capture_s3_settings:: {
              local block = self,
              new():: (
                {}
              ),
              with_canned_acl(value):: (
                local converted = value;
                assert std.isString(converted) : '"canned_acl" expected to be of type "string"';
                {
                  canned_acl: converted,
                }
              ),
            },
            with_frame_capture_s3_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                frame_capture_s3_settings: value,
              }
            ),
            with_frame_capture_s3_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                frame_capture_s3_settings+: converted,
              }
            ),
          },
          with_destination(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination: value,
            }
          ),
          with_frame_capture_cdn_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              frame_capture_cdn_settings: value,
            }
          ),
          with_destination_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination+: converted,
            }
          ),
          with_frame_capture_cdn_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              frame_capture_cdn_settings+: converted,
            }
          ),
        },
        hls_group_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_ad_markers(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"ad_markers" expected to be of type "list"';
            {
              ad_markers: converted,
            }
          ),
          with_ad_markers_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"ad_markers" expected to be of type "list"';
            {
              ad_markers+: converted,
            }
          ),
          with_base_url_content(value):: (
            local converted = value;
            assert std.isString(converted) : '"base_url_content" expected to be of type "string"';
            {
              base_url_content: converted,
            }
          ),
          with_base_url_content1(value):: (
            local converted = value;
            assert std.isString(converted) : '"base_url_content1" expected to be of type "string"';
            {
              base_url_content1: converted,
            }
          ),
          with_base_url_manifest(value):: (
            local converted = value;
            assert std.isString(converted) : '"base_url_manifest" expected to be of type "string"';
            {
              base_url_manifest: converted,
            }
          ),
          with_base_url_manifest1(value):: (
            local converted = value;
            assert std.isString(converted) : '"base_url_manifest1" expected to be of type "string"';
            {
              base_url_manifest1: converted,
            }
          ),
          with_caption_language_setting(value):: (
            local converted = value;
            assert std.isString(converted) : '"caption_language_setting" expected to be of type "string"';
            {
              caption_language_setting: converted,
            }
          ),
          with_client_cache(value):: (
            local converted = value;
            assert std.isString(converted) : '"client_cache" expected to be of type "string"';
            {
              client_cache: converted,
            }
          ),
          with_codec_specification(value):: (
            local converted = value;
            assert std.isString(converted) : '"codec_specification" expected to be of type "string"';
            {
              codec_specification: converted,
            }
          ),
          with_constant_iv(value):: (
            local converted = value;
            assert std.isString(converted) : '"constant_iv" expected to be of type "string"';
            {
              constant_iv: converted,
            }
          ),
          with_directory_structure(value):: (
            local converted = value;
            assert std.isString(converted) : '"directory_structure" expected to be of type "string"';
            {
              directory_structure: converted,
            }
          ),
          with_discontinuity_tags(value):: (
            local converted = value;
            assert std.isString(converted) : '"discontinuity_tags" expected to be of type "string"';
            {
              discontinuity_tags: converted,
            }
          ),
          with_encryption_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"encryption_type" expected to be of type "string"';
            {
              encryption_type: converted,
            }
          ),
          with_hls_id3_segment_tagging(value):: (
            local converted = value;
            assert std.isString(converted) : '"hls_id3_segment_tagging" expected to be of type "string"';
            {
              hls_id3_segment_tagging: converted,
            }
          ),
          with_iframe_only_playlists(value):: (
            local converted = value;
            assert std.isString(converted) : '"iframe_only_playlists" expected to be of type "string"';
            {
              iframe_only_playlists: converted,
            }
          ),
          with_incomplete_segment_behavior(value):: (
            local converted = value;
            assert std.isString(converted) : '"incomplete_segment_behavior" expected to be of type "string"';
            {
              incomplete_segment_behavior: converted,
            }
          ),
          with_index_n_segments(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"index_n_segments" expected to be of type "number"';
            {
              index_n_segments: converted,
            }
          ),
          with_input_loss_action(value):: (
            local converted = value;
            assert std.isString(converted) : '"input_loss_action" expected to be of type "string"';
            {
              input_loss_action: converted,
            }
          ),
          with_iv_in_manifest(value):: (
            local converted = value;
            assert std.isString(converted) : '"iv_in_manifest" expected to be of type "string"';
            {
              iv_in_manifest: converted,
            }
          ),
          with_iv_source(value):: (
            local converted = value;
            assert std.isString(converted) : '"iv_source" expected to be of type "string"';
            {
              iv_source: converted,
            }
          ),
          with_keep_segments(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"keep_segments" expected to be of type "number"';
            {
              keep_segments: converted,
            }
          ),
          with_key_format(value):: (
            local converted = value;
            assert std.isString(converted) : '"key_format" expected to be of type "string"';
            {
              key_format: converted,
            }
          ),
          with_key_format_versions(value):: (
            local converted = value;
            assert std.isString(converted) : '"key_format_versions" expected to be of type "string"';
            {
              key_format_versions: converted,
            }
          ),
          with_manifest_compression(value):: (
            local converted = value;
            assert std.isString(converted) : '"manifest_compression" expected to be of type "string"';
            {
              manifest_compression: converted,
            }
          ),
          with_manifest_duration_format(value):: (
            local converted = value;
            assert std.isString(converted) : '"manifest_duration_format" expected to be of type "string"';
            {
              manifest_duration_format: converted,
            }
          ),
          with_min_segment_length(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"min_segment_length" expected to be of type "number"';
            {
              min_segment_length: converted,
            }
          ),
          with_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"mode" expected to be of type "string"';
            {
              mode: converted,
            }
          ),
          with_output_selection(value):: (
            local converted = value;
            assert std.isString(converted) : '"output_selection" expected to be of type "string"';
            {
              output_selection: converted,
            }
          ),
          with_program_date_time(value):: (
            local converted = value;
            assert std.isString(converted) : '"program_date_time" expected to be of type "string"';
            {
              program_date_time: converted,
            }
          ),
          with_program_date_time_clock(value):: (
            local converted = value;
            assert std.isString(converted) : '"program_date_time_clock" expected to be of type "string"';
            {
              program_date_time_clock: converted,
            }
          ),
          with_program_date_time_period(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"program_date_time_period" expected to be of type "number"';
            {
              program_date_time_period: converted,
            }
          ),
          with_redundant_manifest(value):: (
            local converted = value;
            assert std.isString(converted) : '"redundant_manifest" expected to be of type "string"';
            {
              redundant_manifest: converted,
            }
          ),
          with_segment_length(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"segment_length" expected to be of type "number"';
            {
              segment_length: converted,
            }
          ),
          with_segments_per_subdirectory(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"segments_per_subdirectory" expected to be of type "number"';
            {
              segments_per_subdirectory: converted,
            }
          ),
          with_stream_inf_resolution(value):: (
            local converted = value;
            assert std.isString(converted) : '"stream_inf_resolution" expected to be of type "string"';
            {
              stream_inf_resolution: converted,
            }
          ),
          with_timed_metadata_id3_frame(value):: (
            local converted = value;
            assert std.isString(converted) : '"timed_metadata_id3_frame" expected to be of type "string"';
            {
              timed_metadata_id3_frame: converted,
            }
          ),
          with_timed_metadata_id3_period(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"timed_metadata_id3_period" expected to be of type "number"';
            {
              timed_metadata_id3_period: converted,
            }
          ),
          with_timestamp_delta_milliseconds(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"timestamp_delta_milliseconds" expected to be of type "number"';
            {
              timestamp_delta_milliseconds: converted,
            }
          ),
          with_ts_file_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"ts_file_mode" expected to be of type "string"';
            {
              ts_file_mode: converted,
            }
          ),
          caption_language_mappings:: {
            local block = self,
            new(caption_channel, language_code, language_description):: (
              {}
              + block.with_caption_channel(caption_channel)
              + block.with_language_code(language_code)
              + block.with_language_description(language_description)
            ),
            with_caption_channel(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"caption_channel" expected to be of type "number"';
              {
                caption_channel: converted,
              }
            ),
            with_language_code(value):: (
              local converted = value;
              assert std.isString(converted) : '"language_code" expected to be of type "string"';
              {
                language_code: converted,
              }
            ),
            with_language_description(value):: (
              local converted = value;
              assert std.isString(converted) : '"language_description" expected to be of type "string"';
              {
                language_description: converted,
              }
            ),
          },
          destination:: {
            local block = self,
            new(destination_ref_id):: (
              {}
              + block.with_destination_ref_id(destination_ref_id)
            ),
            with_destination_ref_id(value):: (
              local converted = value;
              assert std.isString(converted) : '"destination_ref_id" expected to be of type "string"';
              {
                destination_ref_id: converted,
              }
            ),
          },
          hls_cdn_settings:: {
            local block = self,
            new():: (
              {}
            ),
            hls_akamai_settings:: {
              local block = self,
              new():: (
                {}
              ),
              with_connection_retry_interval(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"connection_retry_interval" expected to be of type "number"';
                {
                  connection_retry_interval: converted,
                }
              ),
              with_filecache_duration(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"filecache_duration" expected to be of type "number"';
                {
                  filecache_duration: converted,
                }
              ),
              with_http_transfer_mode(value):: (
                local converted = value;
                assert std.isString(converted) : '"http_transfer_mode" expected to be of type "string"';
                {
                  http_transfer_mode: converted,
                }
              ),
              with_num_retries(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"num_retries" expected to be of type "number"';
                {
                  num_retries: converted,
                }
              ),
              with_restart_delay(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"restart_delay" expected to be of type "number"';
                {
                  restart_delay: converted,
                }
              ),
              with_salt(value):: (
                local converted = value;
                assert std.isString(converted) : '"salt" expected to be of type "string"';
                {
                  salt: converted,
                }
              ),
              with_token(value):: (
                local converted = value;
                assert std.isString(converted) : '"token" expected to be of type "string"';
                {
                  token: converted,
                }
              ),
            },
            hls_basic_put_settings:: {
              local block = self,
              new():: (
                {}
              ),
              with_connection_retry_interval(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"connection_retry_interval" expected to be of type "number"';
                {
                  connection_retry_interval: converted,
                }
              ),
              with_filecache_duration(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"filecache_duration" expected to be of type "number"';
                {
                  filecache_duration: converted,
                }
              ),
              with_num_retries(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"num_retries" expected to be of type "number"';
                {
                  num_retries: converted,
                }
              ),
              with_restart_delay(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"restart_delay" expected to be of type "number"';
                {
                  restart_delay: converted,
                }
              ),
            },
            hls_media_store_settings:: {
              local block = self,
              new():: (
                {}
              ),
              with_connection_retry_interval(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"connection_retry_interval" expected to be of type "number"';
                {
                  connection_retry_interval: converted,
                }
              ),
              with_filecache_duration(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"filecache_duration" expected to be of type "number"';
                {
                  filecache_duration: converted,
                }
              ),
              with_media_store_storage_class(value):: (
                local converted = value;
                assert std.isString(converted) : '"media_store_storage_class" expected to be of type "string"';
                {
                  media_store_storage_class: converted,
                }
              ),
              with_num_retries(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"num_retries" expected to be of type "number"';
                {
                  num_retries: converted,
                }
              ),
              with_restart_delay(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"restart_delay" expected to be of type "number"';
                {
                  restart_delay: converted,
                }
              ),
            },
            hls_s3_settings:: {
              local block = self,
              new():: (
                {}
              ),
              with_canned_acl(value):: (
                local converted = value;
                assert std.isString(converted) : '"canned_acl" expected to be of type "string"';
                {
                  canned_acl: converted,
                }
              ),
            },
            hls_webdav_settings:: {
              local block = self,
              new():: (
                {}
              ),
              with_connection_retry_interval(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"connection_retry_interval" expected to be of type "number"';
                {
                  connection_retry_interval: converted,
                }
              ),
              with_filecache_duration(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"filecache_duration" expected to be of type "number"';
                {
                  filecache_duration: converted,
                }
              ),
              with_http_transfer_mode(value):: (
                local converted = value;
                assert std.isString(converted) : '"http_transfer_mode" expected to be of type "string"';
                {
                  http_transfer_mode: converted,
                }
              ),
              with_num_retries(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"num_retries" expected to be of type "number"';
                {
                  num_retries: converted,
                }
              ),
              with_restart_delay(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"restart_delay" expected to be of type "number"';
                {
                  restart_delay: converted,
                }
              ),
            },
            with_hls_akamai_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_akamai_settings: value,
              }
            ),
            with_hls_basic_put_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_basic_put_settings: value,
              }
            ),
            with_hls_media_store_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_media_store_settings: value,
              }
            ),
            with_hls_s3_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_s3_settings: value,
              }
            ),
            with_hls_webdav_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_webdav_settings: value,
              }
            ),
            with_hls_akamai_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_akamai_settings+: converted,
              }
            ),
            with_hls_basic_put_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_basic_put_settings+: converted,
              }
            ),
            with_hls_media_store_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_media_store_settings+: converted,
              }
            ),
            with_hls_s3_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_s3_settings+: converted,
              }
            ),
            with_hls_webdav_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_webdav_settings+: converted,
              }
            ),
          },
          key_provider_settings:: {
            local block = self,
            new():: (
              {}
            ),
            static_key_settings:: {
              local block = self,
              new(static_key_value):: (
                {}
                + block.with_static_key_value(static_key_value)
              ),
              with_static_key_value(value):: (
                local converted = value;
                assert std.isString(converted) : '"static_key_value" expected to be of type "string"';
                {
                  static_key_value: converted,
                }
              ),
              key_provider_server:: {
                local block = self,
                new(uri):: (
                  {}
                  + block.with_uri(uri)
                ),
                with_password_param(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"password_param" expected to be of type "string"';
                  {
                    password_param: converted,
                  }
                ),
                with_uri(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"uri" expected to be of type "string"';
                  {
                    uri: converted,
                  }
                ),
                with_username(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"username" expected to be of type "string"';
                  {
                    username: converted,
                  }
                ),
              },
              with_key_provider_server(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  key_provider_server: value,
                }
              ),
              with_key_provider_server_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  key_provider_server+: converted,
                }
              ),
            },
            with_static_key_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                static_key_settings: value,
              }
            ),
            with_static_key_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                static_key_settings+: converted,
              }
            ),
          },
          with_caption_language_mappings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              caption_language_mappings: value,
            }
          ),
          with_destination(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination: value,
            }
          ),
          with_hls_cdn_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hls_cdn_settings: value,
            }
          ),
          with_key_provider_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              key_provider_settings: value,
            }
          ),
          with_caption_language_mappings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              caption_language_mappings+: converted,
            }
          ),
          with_destination_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination+: converted,
            }
          ),
          with_hls_cdn_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hls_cdn_settings+: converted,
            }
          ),
          with_key_provider_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              key_provider_settings+: converted,
            }
          ),
        },
        media_package_group_settings:: {
          local block = self,
          new():: (
            {}
          ),
          destination:: {
            local block = self,
            new(destination_ref_id):: (
              {}
              + block.with_destination_ref_id(destination_ref_id)
            ),
            with_destination_ref_id(value):: (
              local converted = value;
              assert std.isString(converted) : '"destination_ref_id" expected to be of type "string"';
              {
                destination_ref_id: converted,
              }
            ),
          },
          with_destination(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination: value,
            }
          ),
          with_destination_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination+: converted,
            }
          ),
        },
        ms_smooth_group_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_acquisition_point_id(value):: (
            local converted = value;
            assert std.isString(converted) : '"acquisition_point_id" expected to be of type "string"';
            {
              acquisition_point_id: converted,
            }
          ),
          with_audio_only_timecode_control(value):: (
            local converted = value;
            assert std.isString(converted) : '"audio_only_timecode_control" expected to be of type "string"';
            {
              audio_only_timecode_control: converted,
            }
          ),
          with_certificate_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"certificate_mode" expected to be of type "string"';
            {
              certificate_mode: converted,
            }
          ),
          with_connection_retry_interval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"connection_retry_interval" expected to be of type "number"';
            {
              connection_retry_interval: converted,
            }
          ),
          with_event_id(value):: (
            local converted = value;
            assert std.isString(converted) : '"event_id" expected to be of type "string"';
            {
              event_id: converted,
            }
          ),
          with_event_id_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"event_id_mode" expected to be of type "string"';
            {
              event_id_mode: converted,
            }
          ),
          with_event_stop_behavior(value):: (
            local converted = value;
            assert std.isString(converted) : '"event_stop_behavior" expected to be of type "string"';
            {
              event_stop_behavior: converted,
            }
          ),
          with_filecache_duration(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"filecache_duration" expected to be of type "number"';
            {
              filecache_duration: converted,
            }
          ),
          with_fragment_length(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"fragment_length" expected to be of type "number"';
            {
              fragment_length: converted,
            }
          ),
          with_input_loss_action(value):: (
            local converted = value;
            assert std.isString(converted) : '"input_loss_action" expected to be of type "string"';
            {
              input_loss_action: converted,
            }
          ),
          with_num_retries(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"num_retries" expected to be of type "number"';
            {
              num_retries: converted,
            }
          ),
          with_restart_delay(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"restart_delay" expected to be of type "number"';
            {
              restart_delay: converted,
            }
          ),
          with_segmentation_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"segmentation_mode" expected to be of type "string"';
            {
              segmentation_mode: converted,
            }
          ),
          with_send_delay_ms(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"send_delay_ms" expected to be of type "number"';
            {
              send_delay_ms: converted,
            }
          ),
          with_sparse_track_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"sparse_track_type" expected to be of type "string"';
            {
              sparse_track_type: converted,
            }
          ),
          with_stream_manifest_behavior(value):: (
            local converted = value;
            assert std.isString(converted) : '"stream_manifest_behavior" expected to be of type "string"';
            {
              stream_manifest_behavior: converted,
            }
          ),
          with_timestamp_offset(value):: (
            local converted = value;
            assert std.isString(converted) : '"timestamp_offset" expected to be of type "string"';
            {
              timestamp_offset: converted,
            }
          ),
          with_timestamp_offset_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"timestamp_offset_mode" expected to be of type "string"';
            {
              timestamp_offset_mode: converted,
            }
          ),
          destination:: {
            local block = self,
            new(destination_ref_id):: (
              {}
              + block.with_destination_ref_id(destination_ref_id)
            ),
            with_destination_ref_id(value):: (
              local converted = value;
              assert std.isString(converted) : '"destination_ref_id" expected to be of type "string"';
              {
                destination_ref_id: converted,
              }
            ),
          },
          with_destination(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination: value,
            }
          ),
          with_destination_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination+: converted,
            }
          ),
        },
        multiplex_group_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        rtmp_group_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_ad_markers(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"ad_markers" expected to be of type "list"';
            {
              ad_markers: converted,
            }
          ),
          with_ad_markers_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"ad_markers" expected to be of type "list"';
            {
              ad_markers+: converted,
            }
          ),
          with_authentication_scheme(value):: (
            local converted = value;
            assert std.isString(converted) : '"authentication_scheme" expected to be of type "string"';
            {
              authentication_scheme: converted,
            }
          ),
          with_cache_full_behavior(value):: (
            local converted = value;
            assert std.isString(converted) : '"cache_full_behavior" expected to be of type "string"';
            {
              cache_full_behavior: converted,
            }
          ),
          with_cache_length(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"cache_length" expected to be of type "number"';
            {
              cache_length: converted,
            }
          ),
          with_caption_data(value):: (
            local converted = value;
            assert std.isString(converted) : '"caption_data" expected to be of type "string"';
            {
              caption_data: converted,
            }
          ),
          with_input_loss_action(value):: (
            local converted = value;
            assert std.isString(converted) : '"input_loss_action" expected to be of type "string"';
            {
              input_loss_action: converted,
            }
          ),
          with_restart_delay(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"restart_delay" expected to be of type "number"';
            {
              restart_delay: converted,
            }
          ),
        },
        udp_group_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_input_loss_action(value):: (
            local converted = value;
            assert std.isString(converted) : '"input_loss_action" expected to be of type "string"';
            {
              input_loss_action: converted,
            }
          ),
          with_timed_metadata_id3_frame(value):: (
            local converted = value;
            assert std.isString(converted) : '"timed_metadata_id3_frame" expected to be of type "string"';
            {
              timed_metadata_id3_frame: converted,
            }
          ),
          with_timed_metadata_id3_period(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"timed_metadata_id3_period" expected to be of type "number"';
            {
              timed_metadata_id3_period: converted,
            }
          ),
        },
        with_archive_group_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            archive_group_settings: value,
          }
        ),
        with_frame_capture_group_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            frame_capture_group_settings: value,
          }
        ),
        with_hls_group_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            hls_group_settings: value,
          }
        ),
        with_media_package_group_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            media_package_group_settings: value,
          }
        ),
        with_ms_smooth_group_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ms_smooth_group_settings: value,
          }
        ),
        with_multiplex_group_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            multiplex_group_settings: value,
          }
        ),
        with_rtmp_group_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rtmp_group_settings: value,
          }
        ),
        with_udp_group_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            udp_group_settings: value,
          }
        ),
        with_archive_group_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            archive_group_settings+: converted,
          }
        ),
        with_frame_capture_group_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            frame_capture_group_settings+: converted,
          }
        ),
        with_hls_group_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            hls_group_settings+: converted,
          }
        ),
        with_media_package_group_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            media_package_group_settings+: converted,
          }
        ),
        with_ms_smooth_group_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ms_smooth_group_settings+: converted,
          }
        ),
        with_multiplex_group_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            multiplex_group_settings+: converted,
          }
        ),
        with_rtmp_group_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rtmp_group_settings+: converted,
          }
        ),
        with_udp_group_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            udp_group_settings+: converted,
          }
        ),
      },
      outputs:: {
        local block = self,
        new():: (
          {}
        ),
        with_audio_description_names(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audio_description_names" expected to be of type "set"';
          {
            audio_description_names: converted,
          }
        ),
        with_audio_description_names_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audio_description_names" expected to be of type "set"';
          {
            audio_description_names+: converted,
          }
        ),
        with_caption_description_names(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"caption_description_names" expected to be of type "set"';
          {
            caption_description_names: converted,
          }
        ),
        with_caption_description_names_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"caption_description_names" expected to be of type "set"';
          {
            caption_description_names+: converted,
          }
        ),
        with_output_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"output_name" expected to be of type "string"';
          {
            output_name: converted,
          }
        ),
        with_video_description_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"video_description_name" expected to be of type "string"';
          {
            video_description_name: converted,
          }
        ),
        output_settings:: {
          local block = self,
          new():: (
            {}
          ),
          archive_output_settings:: {
            local block = self,
            new():: (
              {}
            ),
            with_extension(value):: (
              local converted = value;
              assert std.isString(converted) : '"extension" expected to be of type "string"';
              {
                extension: converted,
              }
            ),
            with_name_modifier(value):: (
              local converted = value;
              assert std.isString(converted) : '"name_modifier" expected to be of type "string"';
              {
                name_modifier: converted,
              }
            ),
            container_settings:: {
              local block = self,
              new():: (
                {}
              ),
              m2ts_settings:: {
                local block = self,
                new():: (
                  {}
                ),
                with_absent_input_audio_behavior(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"absent_input_audio_behavior" expected to be of type "string"';
                  {
                    absent_input_audio_behavior: converted,
                  }
                ),
                with_arib(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"arib" expected to be of type "string"';
                  {
                    arib: converted,
                  }
                ),
                with_arib_captions_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"arib_captions_pid" expected to be of type "string"';
                  {
                    arib_captions_pid: converted,
                  }
                ),
                with_arib_captions_pid_control(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"arib_captions_pid_control" expected to be of type "string"';
                  {
                    arib_captions_pid_control: converted,
                  }
                ),
                with_audio_buffer_model(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_buffer_model" expected to be of type "string"';
                  {
                    audio_buffer_model: converted,
                  }
                ),
                with_audio_frames_per_pes(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"audio_frames_per_pes" expected to be of type "number"';
                  {
                    audio_frames_per_pes: converted,
                  }
                ),
                with_audio_pids(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_pids" expected to be of type "string"';
                  {
                    audio_pids: converted,
                  }
                ),
                with_audio_stream_type(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_stream_type" expected to be of type "string"';
                  {
                    audio_stream_type: converted,
                  }
                ),
                with_bitrate(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
                  {
                    bitrate: converted,
                  }
                ),
                with_buffer_model(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"buffer_model" expected to be of type "string"';
                  {
                    buffer_model: converted,
                  }
                ),
                with_cc_descriptor(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"cc_descriptor" expected to be of type "string"';
                  {
                    cc_descriptor: converted,
                  }
                ),
                with_dvb_sub_pids(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"dvb_sub_pids" expected to be of type "string"';
                  {
                    dvb_sub_pids: converted,
                  }
                ),
                with_dvb_teletext_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"dvb_teletext_pid" expected to be of type "string"';
                  {
                    dvb_teletext_pid: converted,
                  }
                ),
                with_ebif(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"ebif" expected to be of type "string"';
                  {
                    ebif: converted,
                  }
                ),
                with_ebp_audio_interval(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"ebp_audio_interval" expected to be of type "string"';
                  {
                    ebp_audio_interval: converted,
                  }
                ),
                with_ebp_lookahead_ms(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"ebp_lookahead_ms" expected to be of type "number"';
                  {
                    ebp_lookahead_ms: converted,
                  }
                ),
                with_ebp_placement(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"ebp_placement" expected to be of type "string"';
                  {
                    ebp_placement: converted,
                  }
                ),
                with_ecm_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"ecm_pid" expected to be of type "string"';
                  {
                    ecm_pid: converted,
                  }
                ),
                with_es_rate_in_pes(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"es_rate_in_pes" expected to be of type "string"';
                  {
                    es_rate_in_pes: converted,
                  }
                ),
                with_etv_platform_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"etv_platform_pid" expected to be of type "string"';
                  {
                    etv_platform_pid: converted,
                  }
                ),
                with_etv_signal_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"etv_signal_pid" expected to be of type "string"';
                  {
                    etv_signal_pid: converted,
                  }
                ),
                with_fragment_time(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"fragment_time" expected to be of type "number"';
                  {
                    fragment_time: converted,
                  }
                ),
                with_klv(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"klv" expected to be of type "string"';
                  {
                    klv: converted,
                  }
                ),
                with_klv_data_pids(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"klv_data_pids" expected to be of type "string"';
                  {
                    klv_data_pids: converted,
                  }
                ),
                with_nielsen_id3_behavior(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"nielsen_id3_behavior" expected to be of type "string"';
                  {
                    nielsen_id3_behavior: converted,
                  }
                ),
                with_null_packet_bitrate(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"null_packet_bitrate" expected to be of type "number"';
                  {
                    null_packet_bitrate: converted,
                  }
                ),
                with_pat_interval(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"pat_interval" expected to be of type "number"';
                  {
                    pat_interval: converted,
                  }
                ),
                with_pcr_control(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"pcr_control" expected to be of type "string"';
                  {
                    pcr_control: converted,
                  }
                ),
                with_pcr_period(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"pcr_period" expected to be of type "number"';
                  {
                    pcr_period: converted,
                  }
                ),
                with_pcr_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"pcr_pid" expected to be of type "string"';
                  {
                    pcr_pid: converted,
                  }
                ),
                with_pmt_interval(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"pmt_interval" expected to be of type "number"';
                  {
                    pmt_interval: converted,
                  }
                ),
                with_pmt_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"pmt_pid" expected to be of type "string"';
                  {
                    pmt_pid: converted,
                  }
                ),
                with_program_num(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"program_num" expected to be of type "number"';
                  {
                    program_num: converted,
                  }
                ),
                with_rate_mode(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"rate_mode" expected to be of type "string"';
                  {
                    rate_mode: converted,
                  }
                ),
                with_scte27_pids(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"scte27_pids" expected to be of type "string"';
                  {
                    scte27_pids: converted,
                  }
                ),
                with_scte35_control(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"scte35_control" expected to be of type "string"';
                  {
                    scte35_control: converted,
                  }
                ),
                with_scte35_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"scte35_pid" expected to be of type "string"';
                  {
                    scte35_pid: converted,
                  }
                ),
                with_segmentation_markers(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"segmentation_markers" expected to be of type "string"';
                  {
                    segmentation_markers: converted,
                  }
                ),
                with_segmentation_style(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"segmentation_style" expected to be of type "string"';
                  {
                    segmentation_style: converted,
                  }
                ),
                with_segmentation_time(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"segmentation_time" expected to be of type "number"';
                  {
                    segmentation_time: converted,
                  }
                ),
                with_timed_metadata_behavior(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"timed_metadata_behavior" expected to be of type "string"';
                  {
                    timed_metadata_behavior: converted,
                  }
                ),
                with_timed_metadata_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"timed_metadata_pid" expected to be of type "string"';
                  {
                    timed_metadata_pid: converted,
                  }
                ),
                with_transport_stream_id(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"transport_stream_id" expected to be of type "number"';
                  {
                    transport_stream_id: converted,
                  }
                ),
                with_video_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"video_pid" expected to be of type "string"';
                  {
                    video_pid: converted,
                  }
                ),
                dvb_nit_settings:: {
                  local block = self,
                  new(network_id, network_name):: (
                    {}
                    + block.with_network_id(network_id)
                    + block.with_network_name(network_name)
                  ),
                  with_network_id(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"network_id" expected to be of type "number"';
                    {
                      network_id: converted,
                    }
                  ),
                  with_network_name(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"network_name" expected to be of type "string"';
                    {
                      network_name: converted,
                    }
                  ),
                  with_rep_interval(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"rep_interval" expected to be of type "number"';
                    {
                      rep_interval: converted,
                    }
                  ),
                },
                dvb_sdt_settings:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  with_output_sdt(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"output_sdt" expected to be of type "string"';
                    {
                      output_sdt: converted,
                    }
                  ),
                  with_rep_interval(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"rep_interval" expected to be of type "number"';
                    {
                      rep_interval: converted,
                    }
                  ),
                  with_service_name(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"service_name" expected to be of type "string"';
                    {
                      service_name: converted,
                    }
                  ),
                  with_service_provider_name(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"service_provider_name" expected to be of type "string"';
                    {
                      service_provider_name: converted,
                    }
                  ),
                },
                dvb_tdt_settings:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  with_rep_interval(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"rep_interval" expected to be of type "number"';
                    {
                      rep_interval: converted,
                    }
                  ),
                },
                with_dvb_nit_settings(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_nit_settings: value,
                  }
                ),
                with_dvb_sdt_settings(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_sdt_settings: value,
                  }
                ),
                with_dvb_tdt_settings(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_tdt_settings: value,
                  }
                ),
                with_dvb_nit_settings_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_nit_settings+: converted,
                  }
                ),
                with_dvb_sdt_settings_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_sdt_settings+: converted,
                  }
                ),
                with_dvb_tdt_settings_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_tdt_settings+: converted,
                  }
                ),
              },
              raw_settings:: {
                local block = self,
                new():: (
                  {}
                ),
              },
              with_m2ts_settings(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  m2ts_settings: value,
                }
              ),
              with_raw_settings(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  raw_settings: value,
                }
              ),
              with_m2ts_settings_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  m2ts_settings+: converted,
                }
              ),
              with_raw_settings_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  raw_settings+: converted,
                }
              ),
            },
            with_container_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                container_settings: value,
              }
            ),
            with_container_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                container_settings+: converted,
              }
            ),
          },
          frame_capture_output_settings:: {
            local block = self,
            new():: (
              {}
            ),
            with_name_modifier(value):: (
              local converted = value;
              assert std.isString(converted) : '"name_modifier" expected to be of type "string"';
              {
                name_modifier: converted,
              }
            ),
          },
          hls_output_settings:: {
            local block = self,
            new():: (
              {}
            ),
            with_h265_packaging_type(value):: (
              local converted = value;
              assert std.isString(converted) : '"h265_packaging_type" expected to be of type "string"';
              {
                h265_packaging_type: converted,
              }
            ),
            with_name_modifier(value):: (
              local converted = value;
              assert std.isString(converted) : '"name_modifier" expected to be of type "string"';
              {
                name_modifier: converted,
              }
            ),
            with_segment_modifier(value):: (
              local converted = value;
              assert std.isString(converted) : '"segment_modifier" expected to be of type "string"';
              {
                segment_modifier: converted,
              }
            ),
            hls_settings:: {
              local block = self,
              new():: (
                {}
              ),
              audio_only_hls_settings:: {
                local block = self,
                new():: (
                  {}
                ),
                with_audio_group_id(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_group_id" expected to be of type "string"';
                  {
                    audio_group_id: converted,
                  }
                ),
                with_audio_track_type(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_track_type" expected to be of type "string"';
                  {
                    audio_track_type: converted,
                  }
                ),
                with_segment_type(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"segment_type" expected to be of type "string"';
                  {
                    segment_type: converted,
                  }
                ),
                audio_only_image:: {
                  local block = self,
                  new(uri):: (
                    {}
                    + block.with_uri(uri)
                  ),
                  with_password_param(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"password_param" expected to be of type "string"';
                    {
                      password_param: converted,
                    }
                  ),
                  with_uri(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"uri" expected to be of type "string"';
                    {
                      uri: converted,
                    }
                  ),
                  with_username(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"username" expected to be of type "string"';
                    {
                      username: converted,
                    }
                  ),
                },
                with_audio_only_image(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    audio_only_image: value,
                  }
                ),
                with_audio_only_image_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    audio_only_image+: converted,
                  }
                ),
              },
              fmp4_hls_settings:: {
                local block = self,
                new():: (
                  {}
                ),
                with_audio_rendition_sets(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_rendition_sets" expected to be of type "string"';
                  {
                    audio_rendition_sets: converted,
                  }
                ),
                with_nielsen_id3_behavior(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"nielsen_id3_behavior" expected to be of type "string"';
                  {
                    nielsen_id3_behavior: converted,
                  }
                ),
                with_timed_metadata_behavior(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"timed_metadata_behavior" expected to be of type "string"';
                  {
                    timed_metadata_behavior: converted,
                  }
                ),
              },
              frame_capture_hls_settings:: {
                local block = self,
                new():: (
                  {}
                ),
              },
              standard_hls_settings:: {
                local block = self,
                new():: (
                  {}
                ),
                with_audio_rendition_sets(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_rendition_sets" expected to be of type "string"';
                  {
                    audio_rendition_sets: converted,
                  }
                ),
                m3u8_settings:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  with_audio_frames_per_pes(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"audio_frames_per_pes" expected to be of type "number"';
                    {
                      audio_frames_per_pes: converted,
                    }
                  ),
                  with_audio_pids(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"audio_pids" expected to be of type "string"';
                    {
                      audio_pids: converted,
                    }
                  ),
                  with_ecm_pid(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"ecm_pid" expected to be of type "string"';
                    {
                      ecm_pid: converted,
                    }
                  ),
                  with_nielsen_id3_behavior(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"nielsen_id3_behavior" expected to be of type "string"';
                    {
                      nielsen_id3_behavior: converted,
                    }
                  ),
                  with_pat_interval(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"pat_interval" expected to be of type "number"';
                    {
                      pat_interval: converted,
                    }
                  ),
                  with_pcr_control(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"pcr_control" expected to be of type "string"';
                    {
                      pcr_control: converted,
                    }
                  ),
                  with_pcr_period(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"pcr_period" expected to be of type "number"';
                    {
                      pcr_period: converted,
                    }
                  ),
                  with_pcr_pid(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"pcr_pid" expected to be of type "string"';
                    {
                      pcr_pid: converted,
                    }
                  ),
                  with_pmt_interval(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"pmt_interval" expected to be of type "number"';
                    {
                      pmt_interval: converted,
                    }
                  ),
                  with_pmt_pid(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"pmt_pid" expected to be of type "string"';
                    {
                      pmt_pid: converted,
                    }
                  ),
                  with_program_num(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"program_num" expected to be of type "number"';
                    {
                      program_num: converted,
                    }
                  ),
                  with_scte35_behavior(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"scte35_behavior" expected to be of type "string"';
                    {
                      scte35_behavior: converted,
                    }
                  ),
                  with_scte35_pid(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"scte35_pid" expected to be of type "string"';
                    {
                      scte35_pid: converted,
                    }
                  ),
                  with_timed_metadata_behavior(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"timed_metadata_behavior" expected to be of type "string"';
                    {
                      timed_metadata_behavior: converted,
                    }
                  ),
                  with_timed_metadata_pid(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"timed_metadata_pid" expected to be of type "string"';
                    {
                      timed_metadata_pid: converted,
                    }
                  ),
                  with_transport_stream_id(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"transport_stream_id" expected to be of type "number"';
                    {
                      transport_stream_id: converted,
                    }
                  ),
                  with_video_pid(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"video_pid" expected to be of type "string"';
                    {
                      video_pid: converted,
                    }
                  ),
                },
                with_m3u8_settings(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    m3u8_settings: value,
                  }
                ),
                with_m3u8_settings_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    m3u8_settings+: converted,
                  }
                ),
              },
              with_audio_only_hls_settings(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  audio_only_hls_settings: value,
                }
              ),
              with_fmp4_hls_settings(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  fmp4_hls_settings: value,
                }
              ),
              with_frame_capture_hls_settings(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  frame_capture_hls_settings: value,
                }
              ),
              with_standard_hls_settings(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  standard_hls_settings: value,
                }
              ),
              with_audio_only_hls_settings_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  audio_only_hls_settings+: converted,
                }
              ),
              with_fmp4_hls_settings_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  fmp4_hls_settings+: converted,
                }
              ),
              with_frame_capture_hls_settings_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  frame_capture_hls_settings+: converted,
                }
              ),
              with_standard_hls_settings_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  standard_hls_settings+: converted,
                }
              ),
            },
            with_hls_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_settings: value,
              }
            ),
            with_hls_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_settings+: converted,
              }
            ),
          },
          media_package_output_settings:: {
            local block = self,
            new():: (
              {}
            ),
          },
          ms_smooth_output_settings:: {
            local block = self,
            new():: (
              {}
            ),
            with_h265_packaging_type(value):: (
              local converted = value;
              assert std.isString(converted) : '"h265_packaging_type" expected to be of type "string"';
              {
                h265_packaging_type: converted,
              }
            ),
            with_name_modifier(value):: (
              local converted = value;
              assert std.isString(converted) : '"name_modifier" expected to be of type "string"';
              {
                name_modifier: converted,
              }
            ),
          },
          multiplex_output_settings:: {
            local block = self,
            new():: (
              {}
            ),
            destination:: {
              local block = self,
              new(destination_ref_id):: (
                {}
                + block.with_destination_ref_id(destination_ref_id)
              ),
              with_destination_ref_id(value):: (
                local converted = value;
                assert std.isString(converted) : '"destination_ref_id" expected to be of type "string"';
                {
                  destination_ref_id: converted,
                }
              ),
            },
            with_destination(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                destination: value,
              }
            ),
            with_destination_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                destination+: converted,
              }
            ),
          },
          rtmp_output_settings:: {
            local block = self,
            new():: (
              {}
            ),
            with_certificate_mode(value):: (
              local converted = value;
              assert std.isString(converted) : '"certificate_mode" expected to be of type "string"';
              {
                certificate_mode: converted,
              }
            ),
            with_connection_retry_interval(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"connection_retry_interval" expected to be of type "number"';
              {
                connection_retry_interval: converted,
              }
            ),
            with_num_retries(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"num_retries" expected to be of type "number"';
              {
                num_retries: converted,
              }
            ),
            destination:: {
              local block = self,
              new(destination_ref_id):: (
                {}
                + block.with_destination_ref_id(destination_ref_id)
              ),
              with_destination_ref_id(value):: (
                local converted = value;
                assert std.isString(converted) : '"destination_ref_id" expected to be of type "string"';
                {
                  destination_ref_id: converted,
                }
              ),
            },
            with_destination(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                destination: value,
              }
            ),
            with_destination_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                destination+: converted,
              }
            ),
          },
          udp_output_settings:: {
            local block = self,
            new():: (
              {}
            ),
            with_buffer_msec(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"buffer_msec" expected to be of type "number"';
              {
                buffer_msec: converted,
              }
            ),
            container_settings:: {
              local block = self,
              new():: (
                {}
              ),
              m2ts_settings:: {
                local block = self,
                new():: (
                  {}
                ),
                with_absent_input_audio_behavior(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"absent_input_audio_behavior" expected to be of type "string"';
                  {
                    absent_input_audio_behavior: converted,
                  }
                ),
                with_arib(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"arib" expected to be of type "string"';
                  {
                    arib: converted,
                  }
                ),
                with_arib_captions_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"arib_captions_pid" expected to be of type "string"';
                  {
                    arib_captions_pid: converted,
                  }
                ),
                with_arib_captions_pid_control(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"arib_captions_pid_control" expected to be of type "string"';
                  {
                    arib_captions_pid_control: converted,
                  }
                ),
                with_audio_buffer_model(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_buffer_model" expected to be of type "string"';
                  {
                    audio_buffer_model: converted,
                  }
                ),
                with_audio_frames_per_pes(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"audio_frames_per_pes" expected to be of type "number"';
                  {
                    audio_frames_per_pes: converted,
                  }
                ),
                with_audio_pids(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_pids" expected to be of type "string"';
                  {
                    audio_pids: converted,
                  }
                ),
                with_audio_stream_type(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_stream_type" expected to be of type "string"';
                  {
                    audio_stream_type: converted,
                  }
                ),
                with_bitrate(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
                  {
                    bitrate: converted,
                  }
                ),
                with_buffer_model(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"buffer_model" expected to be of type "string"';
                  {
                    buffer_model: converted,
                  }
                ),
                with_cc_descriptor(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"cc_descriptor" expected to be of type "string"';
                  {
                    cc_descriptor: converted,
                  }
                ),
                with_dvb_sub_pids(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"dvb_sub_pids" expected to be of type "string"';
                  {
                    dvb_sub_pids: converted,
                  }
                ),
                with_dvb_teletext_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"dvb_teletext_pid" expected to be of type "string"';
                  {
                    dvb_teletext_pid: converted,
                  }
                ),
                with_ebif(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"ebif" expected to be of type "string"';
                  {
                    ebif: converted,
                  }
                ),
                with_ebp_audio_interval(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"ebp_audio_interval" expected to be of type "string"';
                  {
                    ebp_audio_interval: converted,
                  }
                ),
                with_ebp_lookahead_ms(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"ebp_lookahead_ms" expected to be of type "number"';
                  {
                    ebp_lookahead_ms: converted,
                  }
                ),
                with_ebp_placement(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"ebp_placement" expected to be of type "string"';
                  {
                    ebp_placement: converted,
                  }
                ),
                with_ecm_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"ecm_pid" expected to be of type "string"';
                  {
                    ecm_pid: converted,
                  }
                ),
                with_es_rate_in_pes(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"es_rate_in_pes" expected to be of type "string"';
                  {
                    es_rate_in_pes: converted,
                  }
                ),
                with_etv_platform_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"etv_platform_pid" expected to be of type "string"';
                  {
                    etv_platform_pid: converted,
                  }
                ),
                with_etv_signal_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"etv_signal_pid" expected to be of type "string"';
                  {
                    etv_signal_pid: converted,
                  }
                ),
                with_fragment_time(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"fragment_time" expected to be of type "number"';
                  {
                    fragment_time: converted,
                  }
                ),
                with_klv(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"klv" expected to be of type "string"';
                  {
                    klv: converted,
                  }
                ),
                with_klv_data_pids(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"klv_data_pids" expected to be of type "string"';
                  {
                    klv_data_pids: converted,
                  }
                ),
                with_nielsen_id3_behavior(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"nielsen_id3_behavior" expected to be of type "string"';
                  {
                    nielsen_id3_behavior: converted,
                  }
                ),
                with_null_packet_bitrate(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"null_packet_bitrate" expected to be of type "number"';
                  {
                    null_packet_bitrate: converted,
                  }
                ),
                with_pat_interval(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"pat_interval" expected to be of type "number"';
                  {
                    pat_interval: converted,
                  }
                ),
                with_pcr_control(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"pcr_control" expected to be of type "string"';
                  {
                    pcr_control: converted,
                  }
                ),
                with_pcr_period(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"pcr_period" expected to be of type "number"';
                  {
                    pcr_period: converted,
                  }
                ),
                with_pcr_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"pcr_pid" expected to be of type "string"';
                  {
                    pcr_pid: converted,
                  }
                ),
                with_pmt_interval(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"pmt_interval" expected to be of type "number"';
                  {
                    pmt_interval: converted,
                  }
                ),
                with_pmt_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"pmt_pid" expected to be of type "string"';
                  {
                    pmt_pid: converted,
                  }
                ),
                with_program_num(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"program_num" expected to be of type "number"';
                  {
                    program_num: converted,
                  }
                ),
                with_rate_mode(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"rate_mode" expected to be of type "string"';
                  {
                    rate_mode: converted,
                  }
                ),
                with_scte27_pids(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"scte27_pids" expected to be of type "string"';
                  {
                    scte27_pids: converted,
                  }
                ),
                with_scte35_control(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"scte35_control" expected to be of type "string"';
                  {
                    scte35_control: converted,
                  }
                ),
                with_scte35_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"scte35_pid" expected to be of type "string"';
                  {
                    scte35_pid: converted,
                  }
                ),
                with_segmentation_markers(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"segmentation_markers" expected to be of type "string"';
                  {
                    segmentation_markers: converted,
                  }
                ),
                with_segmentation_style(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"segmentation_style" expected to be of type "string"';
                  {
                    segmentation_style: converted,
                  }
                ),
                with_segmentation_time(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"segmentation_time" expected to be of type "number"';
                  {
                    segmentation_time: converted,
                  }
                ),
                with_timed_metadata_behavior(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"timed_metadata_behavior" expected to be of type "string"';
                  {
                    timed_metadata_behavior: converted,
                  }
                ),
                with_timed_metadata_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"timed_metadata_pid" expected to be of type "string"';
                  {
                    timed_metadata_pid: converted,
                  }
                ),
                with_transport_stream_id(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"transport_stream_id" expected to be of type "number"';
                  {
                    transport_stream_id: converted,
                  }
                ),
                with_video_pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"video_pid" expected to be of type "string"';
                  {
                    video_pid: converted,
                  }
                ),
                dvb_nit_settings:: {
                  local block = self,
                  new(network_id, network_name):: (
                    {}
                    + block.with_network_id(network_id)
                    + block.with_network_name(network_name)
                  ),
                  with_network_id(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"network_id" expected to be of type "number"';
                    {
                      network_id: converted,
                    }
                  ),
                  with_network_name(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"network_name" expected to be of type "string"';
                    {
                      network_name: converted,
                    }
                  ),
                  with_rep_interval(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"rep_interval" expected to be of type "number"';
                    {
                      rep_interval: converted,
                    }
                  ),
                },
                dvb_sdt_settings:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  with_output_sdt(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"output_sdt" expected to be of type "string"';
                    {
                      output_sdt: converted,
                    }
                  ),
                  with_rep_interval(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"rep_interval" expected to be of type "number"';
                    {
                      rep_interval: converted,
                    }
                  ),
                  with_service_name(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"service_name" expected to be of type "string"';
                    {
                      service_name: converted,
                    }
                  ),
                  with_service_provider_name(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"service_provider_name" expected to be of type "string"';
                    {
                      service_provider_name: converted,
                    }
                  ),
                },
                dvb_tdt_settings:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  with_rep_interval(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"rep_interval" expected to be of type "number"';
                    {
                      rep_interval: converted,
                    }
                  ),
                },
                with_dvb_nit_settings(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_nit_settings: value,
                  }
                ),
                with_dvb_sdt_settings(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_sdt_settings: value,
                  }
                ),
                with_dvb_tdt_settings(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_tdt_settings: value,
                  }
                ),
                with_dvb_nit_settings_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_nit_settings+: converted,
                  }
                ),
                with_dvb_sdt_settings_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_sdt_settings+: converted,
                  }
                ),
                with_dvb_tdt_settings_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_tdt_settings+: converted,
                  }
                ),
              },
              with_m2ts_settings(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  m2ts_settings: value,
                }
              ),
              with_m2ts_settings_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  m2ts_settings+: converted,
                }
              ),
            },
            destination:: {
              local block = self,
              new(destination_ref_id):: (
                {}
                + block.with_destination_ref_id(destination_ref_id)
              ),
              with_destination_ref_id(value):: (
                local converted = value;
                assert std.isString(converted) : '"destination_ref_id" expected to be of type "string"';
                {
                  destination_ref_id: converted,
                }
              ),
            },
            fec_output_settings:: {
              local block = self,
              new():: (
                {}
              ),
              with_column_depth(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"column_depth" expected to be of type "number"';
                {
                  column_depth: converted,
                }
              ),
              with_include_fec(value):: (
                local converted = value;
                assert std.isString(converted) : '"include_fec" expected to be of type "string"';
                {
                  include_fec: converted,
                }
              ),
              with_row_length(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"row_length" expected to be of type "number"';
                {
                  row_length: converted,
                }
              ),
            },
            with_container_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                container_settings: value,
              }
            ),
            with_destination(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                destination: value,
              }
            ),
            with_fec_output_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                fec_output_settings: value,
              }
            ),
            with_container_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                container_settings+: converted,
              }
            ),
            with_destination_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                destination+: converted,
              }
            ),
            with_fec_output_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                fec_output_settings+: converted,
              }
            ),
          },
          with_archive_output_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              archive_output_settings: value,
            }
          ),
          with_frame_capture_output_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              frame_capture_output_settings: value,
            }
          ),
          with_hls_output_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hls_output_settings: value,
            }
          ),
          with_media_package_output_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              media_package_output_settings: value,
            }
          ),
          with_ms_smooth_output_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              ms_smooth_output_settings: value,
            }
          ),
          with_multiplex_output_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              multiplex_output_settings: value,
            }
          ),
          with_rtmp_output_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rtmp_output_settings: value,
            }
          ),
          with_udp_output_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              udp_output_settings: value,
            }
          ),
          with_archive_output_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              archive_output_settings+: converted,
            }
          ),
          with_frame_capture_output_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              frame_capture_output_settings+: converted,
            }
          ),
          with_hls_output_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hls_output_settings+: converted,
            }
          ),
          with_media_package_output_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              media_package_output_settings+: converted,
            }
          ),
          with_ms_smooth_output_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              ms_smooth_output_settings+: converted,
            }
          ),
          with_multiplex_output_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              multiplex_output_settings+: converted,
            }
          ),
          with_rtmp_output_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rtmp_output_settings+: converted,
            }
          ),
          with_udp_output_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              udp_output_settings+: converted,
            }
          ),
        },
        with_output_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            output_settings: value,
          }
        ),
        with_output_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            output_settings+: converted,
          }
        ),
      },
      with_output_group_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          output_group_settings: value,
        }
      ),
      with_outputs(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          outputs: value,
        }
      ),
      with_output_group_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          output_group_settings+: converted,
        }
      ),
      with_outputs_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          outputs+: converted,
        }
      ),
    },
    timecode_config:: {
      local block = self,
      new(source):: (
        {}
        + block.with_source(source)
      ),
      with_source(value):: (
        local converted = value;
        assert std.isString(converted) : '"source" expected to be of type "string"';
        {
          source: converted,
        }
      ),
      with_sync_threshold(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"sync_threshold" expected to be of type "number"';
        {
          sync_threshold: converted,
        }
      ),
    },
    video_descriptions:: {
      local block = self,
      new(name):: (
        {}
        + block.with_name(name)
      ),
      with_height(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"height" expected to be of type "number"';
        {
          height: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_respond_to_afd(value):: (
        local converted = value;
        assert std.isString(converted) : '"respond_to_afd" expected to be of type "string"';
        {
          respond_to_afd: converted,
        }
      ),
      with_scaling_behavior(value):: (
        local converted = value;
        assert std.isString(converted) : '"scaling_behavior" expected to be of type "string"';
        {
          scaling_behavior: converted,
        }
      ),
      with_sharpness(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"sharpness" expected to be of type "number"';
        {
          sharpness: converted,
        }
      ),
      with_width(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"width" expected to be of type "number"';
        {
          width: converted,
        }
      ),
      codec_settings:: {
        local block = self,
        new():: (
          {}
        ),
        frame_capture_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_capture_interval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"capture_interval" expected to be of type "number"';
            {
              capture_interval: converted,
            }
          ),
          with_capture_interval_units(value):: (
            local converted = value;
            assert std.isString(converted) : '"capture_interval_units" expected to be of type "string"';
            {
              capture_interval_units: converted,
            }
          ),
        },
        h264_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_adaptive_quantization(value):: (
            local converted = value;
            assert std.isString(converted) : '"adaptive_quantization" expected to be of type "string"';
            {
              adaptive_quantization: converted,
            }
          ),
          with_afd_signaling(value):: (
            local converted = value;
            assert std.isString(converted) : '"afd_signaling" expected to be of type "string"';
            {
              afd_signaling: converted,
            }
          ),
          with_bitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
            {
              bitrate: converted,
            }
          ),
          with_buf_fill_pct(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"buf_fill_pct" expected to be of type "number"';
            {
              buf_fill_pct: converted,
            }
          ),
          with_buf_size(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"buf_size" expected to be of type "number"';
            {
              buf_size: converted,
            }
          ),
          with_color_metadata(value):: (
            local converted = value;
            assert std.isString(converted) : '"color_metadata" expected to be of type "string"';
            {
              color_metadata: converted,
            }
          ),
          with_entropy_encoding(value):: (
            local converted = value;
            assert std.isString(converted) : '"entropy_encoding" expected to be of type "string"';
            {
              entropy_encoding: converted,
            }
          ),
          with_fixed_afd(value):: (
            local converted = value;
            assert std.isString(converted) : '"fixed_afd" expected to be of type "string"';
            {
              fixed_afd: converted,
            }
          ),
          with_flicker_aq(value):: (
            local converted = value;
            assert std.isString(converted) : '"flicker_aq" expected to be of type "string"';
            {
              flicker_aq: converted,
            }
          ),
          with_force_field_pictures(value):: (
            local converted = value;
            assert std.isString(converted) : '"force_field_pictures" expected to be of type "string"';
            {
              force_field_pictures: converted,
            }
          ),
          with_framerate_control(value):: (
            local converted = value;
            assert std.isString(converted) : '"framerate_control" expected to be of type "string"';
            {
              framerate_control: converted,
            }
          ),
          with_framerate_denominator(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"framerate_denominator" expected to be of type "number"';
            {
              framerate_denominator: converted,
            }
          ),
          with_framerate_numerator(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"framerate_numerator" expected to be of type "number"';
            {
              framerate_numerator: converted,
            }
          ),
          with_gop_b_reference(value):: (
            local converted = value;
            assert std.isString(converted) : '"gop_b_reference" expected to be of type "string"';
            {
              gop_b_reference: converted,
            }
          ),
          with_gop_closed_cadence(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"gop_closed_cadence" expected to be of type "number"';
            {
              gop_closed_cadence: converted,
            }
          ),
          with_gop_num_b_frames(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"gop_num_b_frames" expected to be of type "number"';
            {
              gop_num_b_frames: converted,
            }
          ),
          with_gop_size(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"gop_size" expected to be of type "number"';
            {
              gop_size: converted,
            }
          ),
          with_gop_size_units(value):: (
            local converted = value;
            assert std.isString(converted) : '"gop_size_units" expected to be of type "string"';
            {
              gop_size_units: converted,
            }
          ),
          with_level(value):: (
            local converted = value;
            assert std.isString(converted) : '"level" expected to be of type "string"';
            {
              level: converted,
            }
          ),
          with_look_ahead_rate_control(value):: (
            local converted = value;
            assert std.isString(converted) : '"look_ahead_rate_control" expected to be of type "string"';
            {
              look_ahead_rate_control: converted,
            }
          ),
          with_max_bitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_bitrate" expected to be of type "number"';
            {
              max_bitrate: converted,
            }
          ),
          with_min_i_interval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"min_i_interval" expected to be of type "number"';
            {
              min_i_interval: converted,
            }
          ),
          with_num_ref_frames(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"num_ref_frames" expected to be of type "number"';
            {
              num_ref_frames: converted,
            }
          ),
          with_par_control(value):: (
            local converted = value;
            assert std.isString(converted) : '"par_control" expected to be of type "string"';
            {
              par_control: converted,
            }
          ),
          with_par_denominator(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"par_denominator" expected to be of type "number"';
            {
              par_denominator: converted,
            }
          ),
          with_par_numerator(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"par_numerator" expected to be of type "number"';
            {
              par_numerator: converted,
            }
          ),
          with_profile(value):: (
            local converted = value;
            assert std.isString(converted) : '"profile" expected to be of type "string"';
            {
              profile: converted,
            }
          ),
          with_quality_level(value):: (
            local converted = value;
            assert std.isString(converted) : '"quality_level" expected to be of type "string"';
            {
              quality_level: converted,
            }
          ),
          with_qvbr_quality_level(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"qvbr_quality_level" expected to be of type "number"';
            {
              qvbr_quality_level: converted,
            }
          ),
          with_rate_control_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"rate_control_mode" expected to be of type "string"';
            {
              rate_control_mode: converted,
            }
          ),
          with_scan_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"scan_type" expected to be of type "string"';
            {
              scan_type: converted,
            }
          ),
          with_scene_change_detect(value):: (
            local converted = value;
            assert std.isString(converted) : '"scene_change_detect" expected to be of type "string"';
            {
              scene_change_detect: converted,
            }
          ),
          with_slices(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"slices" expected to be of type "number"';
            {
              slices: converted,
            }
          ),
          with_softness(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"softness" expected to be of type "number"';
            {
              softness: converted,
            }
          ),
          with_spatial_aq(value):: (
            local converted = value;
            assert std.isString(converted) : '"spatial_aq" expected to be of type "string"';
            {
              spatial_aq: converted,
            }
          ),
          with_subgop_length(value):: (
            local converted = value;
            assert std.isString(converted) : '"subgop_length" expected to be of type "string"';
            {
              subgop_length: converted,
            }
          ),
          with_syntax(value):: (
            local converted = value;
            assert std.isString(converted) : '"syntax" expected to be of type "string"';
            {
              syntax: converted,
            }
          ),
          with_temporal_aq(value):: (
            local converted = value;
            assert std.isString(converted) : '"temporal_aq" expected to be of type "string"';
            {
              temporal_aq: converted,
            }
          ),
          with_timecode_insertion(value):: (
            local converted = value;
            assert std.isString(converted) : '"timecode_insertion" expected to be of type "string"';
            {
              timecode_insertion: converted,
            }
          ),
          filter_settings:: {
            local block = self,
            new():: (
              {}
            ),
            temporal_filter_settings:: {
              local block = self,
              new():: (
                {}
              ),
              with_post_filter_sharpening(value):: (
                local converted = value;
                assert std.isString(converted) : '"post_filter_sharpening" expected to be of type "string"';
                {
                  post_filter_sharpening: converted,
                }
              ),
              with_strength(value):: (
                local converted = value;
                assert std.isString(converted) : '"strength" expected to be of type "string"';
                {
                  strength: converted,
                }
              ),
            },
            with_temporal_filter_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                temporal_filter_settings: value,
              }
            ),
            with_temporal_filter_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                temporal_filter_settings+: converted,
              }
            ),
          },
          with_filter_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              filter_settings: value,
            }
          ),
          with_filter_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              filter_settings+: converted,
            }
          ),
        },
        h265_settings:: {
          local block = self,
          new(bitrate, framerate_denominator, framerate_numerator):: (
            {}
            + block.with_bitrate(bitrate)
            + block.with_framerate_denominator(framerate_denominator)
            + block.with_framerate_numerator(framerate_numerator)
          ),
          with_adaptive_quantization(value):: (
            local converted = value;
            assert std.isString(converted) : '"adaptive_quantization" expected to be of type "string"';
            {
              adaptive_quantization: converted,
            }
          ),
          with_afd_signaling(value):: (
            local converted = value;
            assert std.isString(converted) : '"afd_signaling" expected to be of type "string"';
            {
              afd_signaling: converted,
            }
          ),
          with_alternative_transfer_function(value):: (
            local converted = value;
            assert std.isString(converted) : '"alternative_transfer_function" expected to be of type "string"';
            {
              alternative_transfer_function: converted,
            }
          ),
          with_bitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
            {
              bitrate: converted,
            }
          ),
          with_buf_size(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"buf_size" expected to be of type "number"';
            {
              buf_size: converted,
            }
          ),
          with_color_metadata(value):: (
            local converted = value;
            assert std.isString(converted) : '"color_metadata" expected to be of type "string"';
            {
              color_metadata: converted,
            }
          ),
          with_fixed_afd(value):: (
            local converted = value;
            assert std.isString(converted) : '"fixed_afd" expected to be of type "string"';
            {
              fixed_afd: converted,
            }
          ),
          with_flicker_aq(value):: (
            local converted = value;
            assert std.isString(converted) : '"flicker_aq" expected to be of type "string"';
            {
              flicker_aq: converted,
            }
          ),
          with_framerate_denominator(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"framerate_denominator" expected to be of type "number"';
            {
              framerate_denominator: converted,
            }
          ),
          with_framerate_numerator(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"framerate_numerator" expected to be of type "number"';
            {
              framerate_numerator: converted,
            }
          ),
          with_gop_closed_cadence(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"gop_closed_cadence" expected to be of type "number"';
            {
              gop_closed_cadence: converted,
            }
          ),
          with_gop_size(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"gop_size" expected to be of type "number"';
            {
              gop_size: converted,
            }
          ),
          with_gop_size_units(value):: (
            local converted = value;
            assert std.isString(converted) : '"gop_size_units" expected to be of type "string"';
            {
              gop_size_units: converted,
            }
          ),
          with_level(value):: (
            local converted = value;
            assert std.isString(converted) : '"level" expected to be of type "string"';
            {
              level: converted,
            }
          ),
          with_look_ahead_rate_control(value):: (
            local converted = value;
            assert std.isString(converted) : '"look_ahead_rate_control" expected to be of type "string"';
            {
              look_ahead_rate_control: converted,
            }
          ),
          with_max_bitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_bitrate" expected to be of type "number"';
            {
              max_bitrate: converted,
            }
          ),
          with_min_i_interval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"min_i_interval" expected to be of type "number"';
            {
              min_i_interval: converted,
            }
          ),
          with_min_qp(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"min_qp" expected to be of type "number"';
            {
              min_qp: converted,
            }
          ),
          with_mv_over_picture_boundaries(value):: (
            local converted = value;
            assert std.isString(converted) : '"mv_over_picture_boundaries" expected to be of type "string"';
            {
              mv_over_picture_boundaries: converted,
            }
          ),
          with_mv_temporal_predictor(value):: (
            local converted = value;
            assert std.isString(converted) : '"mv_temporal_predictor" expected to be of type "string"';
            {
              mv_temporal_predictor: converted,
            }
          ),
          with_par_denominator(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"par_denominator" expected to be of type "number"';
            {
              par_denominator: converted,
            }
          ),
          with_par_numerator(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"par_numerator" expected to be of type "number"';
            {
              par_numerator: converted,
            }
          ),
          with_profile(value):: (
            local converted = value;
            assert std.isString(converted) : '"profile" expected to be of type "string"';
            {
              profile: converted,
            }
          ),
          with_qvbr_quality_level(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"qvbr_quality_level" expected to be of type "number"';
            {
              qvbr_quality_level: converted,
            }
          ),
          with_rate_control_mode(value):: (
            local converted = value;
            assert std.isString(converted) : '"rate_control_mode" expected to be of type "string"';
            {
              rate_control_mode: converted,
            }
          ),
          with_scan_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"scan_type" expected to be of type "string"';
            {
              scan_type: converted,
            }
          ),
          with_scene_change_detect(value):: (
            local converted = value;
            assert std.isString(converted) : '"scene_change_detect" expected to be of type "string"';
            {
              scene_change_detect: converted,
            }
          ),
          with_slices(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"slices" expected to be of type "number"';
            {
              slices: converted,
            }
          ),
          with_tier(value):: (
            local converted = value;
            assert std.isString(converted) : '"tier" expected to be of type "string"';
            {
              tier: converted,
            }
          ),
          with_tile_height(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"tile_height" expected to be of type "number"';
            {
              tile_height: converted,
            }
          ),
          with_tile_padding(value):: (
            local converted = value;
            assert std.isString(converted) : '"tile_padding" expected to be of type "string"';
            {
              tile_padding: converted,
            }
          ),
          with_tile_width(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"tile_width" expected to be of type "number"';
            {
              tile_width: converted,
            }
          ),
          with_timecode_insertion(value):: (
            local converted = value;
            assert std.isString(converted) : '"timecode_insertion" expected to be of type "string"';
            {
              timecode_insertion: converted,
            }
          ),
          with_treeblock_size(value):: (
            local converted = value;
            assert std.isString(converted) : '"treeblock_size" expected to be of type "string"';
            {
              treeblock_size: converted,
            }
          ),
          color_space_settings:: {
            local block = self,
            new():: (
              {}
            ),
            color_space_passthrough_settings:: {
              local block = self,
              new():: (
                {}
              ),
            },
            dolby_vision81_settings:: {
              local block = self,
              new():: (
                {}
              ),
            },
            hdr10_settings:: {
              local block = self,
              new():: (
                {}
              ),
              with_max_cll(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"max_cll" expected to be of type "number"';
                {
                  max_cll: converted,
                }
              ),
              with_max_fall(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"max_fall" expected to be of type "number"';
                {
                  max_fall: converted,
                }
              ),
            },
            rec601_settings:: {
              local block = self,
              new():: (
                {}
              ),
            },
            rec709_settings:: {
              local block = self,
              new():: (
                {}
              ),
            },
            with_color_space_passthrough_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                color_space_passthrough_settings: value,
              }
            ),
            with_dolby_vision81_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dolby_vision81_settings: value,
              }
            ),
            with_hdr10_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hdr10_settings: value,
              }
            ),
            with_rec601_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                rec601_settings: value,
              }
            ),
            with_rec709_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                rec709_settings: value,
              }
            ),
            with_color_space_passthrough_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                color_space_passthrough_settings+: converted,
              }
            ),
            with_dolby_vision81_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dolby_vision81_settings+: converted,
              }
            ),
            with_hdr10_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hdr10_settings+: converted,
              }
            ),
            with_rec601_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                rec601_settings+: converted,
              }
            ),
            with_rec709_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                rec709_settings+: converted,
              }
            ),
          },
          filter_settings:: {
            local block = self,
            new():: (
              {}
            ),
            temporal_filter_settings:: {
              local block = self,
              new():: (
                {}
              ),
              with_post_filter_sharpening(value):: (
                local converted = value;
                assert std.isString(converted) : '"post_filter_sharpening" expected to be of type "string"';
                {
                  post_filter_sharpening: converted,
                }
              ),
              with_strength(value):: (
                local converted = value;
                assert std.isString(converted) : '"strength" expected to be of type "string"';
                {
                  strength: converted,
                }
              ),
            },
            with_temporal_filter_settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                temporal_filter_settings: value,
              }
            ),
            with_temporal_filter_settings_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                temporal_filter_settings+: converted,
              }
            ),
          },
          timecode_burnin_settings:: {
            local block = self,
            new():: (
              {}
            ),
            with_prefix(value):: (
              local converted = value;
              assert std.isString(converted) : '"prefix" expected to be of type "string"';
              {
                prefix: converted,
              }
            ),
            with_timecode_burnin_font_size(value):: (
              local converted = value;
              assert std.isString(converted) : '"timecode_burnin_font_size" expected to be of type "string"';
              {
                timecode_burnin_font_size: converted,
              }
            ),
            with_timecode_burnin_position(value):: (
              local converted = value;
              assert std.isString(converted) : '"timecode_burnin_position" expected to be of type "string"';
              {
                timecode_burnin_position: converted,
              }
            ),
          },
          with_color_space_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              color_space_settings: value,
            }
          ),
          with_filter_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              filter_settings: value,
            }
          ),
          with_timecode_burnin_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              timecode_burnin_settings: value,
            }
          ),
          with_color_space_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              color_space_settings+: converted,
            }
          ),
          with_filter_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              filter_settings+: converted,
            }
          ),
          with_timecode_burnin_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              timecode_burnin_settings+: converted,
            }
          ),
        },
        with_frame_capture_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            frame_capture_settings: value,
          }
        ),
        with_h264_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            h264_settings: value,
          }
        ),
        with_h265_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            h265_settings: value,
          }
        ),
        with_frame_capture_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            frame_capture_settings+: converted,
          }
        ),
        with_h264_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            h264_settings+: converted,
          }
        ),
        with_h265_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            h265_settings+: converted,
          }
        ),
      },
      with_codec_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          codec_settings: value,
        }
      ),
      with_codec_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          codec_settings+: converted,
        }
      ),
    },
    with_audio_descriptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        audio_descriptions: value,
      }
    ),
    with_avail_blanking(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        avail_blanking: value,
      }
    ),
    with_caption_descriptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        caption_descriptions: value,
      }
    ),
    with_global_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        global_configuration: value,
      }
    ),
    with_motion_graphics_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        motion_graphics_configuration: value,
      }
    ),
    with_nielsen_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        nielsen_configuration: value,
      }
    ),
    with_output_groups(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        output_groups: value,
      }
    ),
    with_timecode_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        timecode_config: value,
      }
    ),
    with_video_descriptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        video_descriptions: value,
      }
    ),
    with_audio_descriptions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        audio_descriptions+: converted,
      }
    ),
    with_avail_blanking_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        avail_blanking+: converted,
      }
    ),
    with_caption_descriptions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        caption_descriptions+: converted,
      }
    ),
    with_global_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        global_configuration+: converted,
      }
    ),
    with_motion_graphics_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        motion_graphics_configuration+: converted,
      }
    ),
    with_nielsen_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        nielsen_configuration+: converted,
      }
    ),
    with_output_groups_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        output_groups+: converted,
      }
    ),
    with_timecode_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        timecode_config+: converted,
      }
    ),
    with_video_descriptions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        video_descriptions+: converted,
      }
    ),
  },
  input_attachments:: {
    local block = self,
    new(input_attachment_name, input_id):: (
      {}
      + block.with_input_attachment_name(input_attachment_name)
      + block.with_input_id(input_id)
    ),
    with_input_attachment_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_attachment_name" expected to be of type "string"';
      {
        input_attachment_name: converted,
      }
    ),
    with_input_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_id" expected to be of type "string"';
      {
        input_id: converted,
      }
    ),
    automatic_input_failover_settings:: {
      local block = self,
      new(secondary_input_id):: (
        {}
        + block.with_secondary_input_id(secondary_input_id)
      ),
      with_error_clear_time_msec(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"error_clear_time_msec" expected to be of type "number"';
        {
          error_clear_time_msec: converted,
        }
      ),
      with_input_preference(value):: (
        local converted = value;
        assert std.isString(converted) : '"input_preference" expected to be of type "string"';
        {
          input_preference: converted,
        }
      ),
      with_secondary_input_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"secondary_input_id" expected to be of type "string"';
        {
          secondary_input_id: converted,
        }
      ),
      failover_condition:: {
        local block = self,
        new():: (
          {}
        ),
        failover_condition_settings:: {
          local block = self,
          new():: (
            {}
          ),
          audio_silence_settings:: {
            local block = self,
            new(audio_selector_name):: (
              {}
              + block.with_audio_selector_name(audio_selector_name)
            ),
            with_audio_selector_name(value):: (
              local converted = value;
              assert std.isString(converted) : '"audio_selector_name" expected to be of type "string"';
              {
                audio_selector_name: converted,
              }
            ),
            with_audio_silence_threshold_msec(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"audio_silence_threshold_msec" expected to be of type "number"';
              {
                audio_silence_threshold_msec: converted,
              }
            ),
          },
          input_loss_settings:: {
            local block = self,
            new():: (
              {}
            ),
            with_input_loss_threshold_msec(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"input_loss_threshold_msec" expected to be of type "number"';
              {
                input_loss_threshold_msec: converted,
              }
            ),
          },
          video_black_settings:: {
            local block = self,
            new():: (
              {}
            ),
            with_black_detect_threshold(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"black_detect_threshold" expected to be of type "number"';
              {
                black_detect_threshold: converted,
              }
            ),
            with_video_black_threshold_msec(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"video_black_threshold_msec" expected to be of type "number"';
              {
                video_black_threshold_msec: converted,
              }
            ),
          },
          with_audio_silence_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_silence_settings: value,
            }
          ),
          with_input_loss_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              input_loss_settings: value,
            }
          ),
          with_video_black_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              video_black_settings: value,
            }
          ),
          with_audio_silence_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_silence_settings+: converted,
            }
          ),
          with_input_loss_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              input_loss_settings+: converted,
            }
          ),
          with_video_black_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              video_black_settings+: converted,
            }
          ),
        },
        with_failover_condition_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failover_condition_settings: value,
          }
        ),
        with_failover_condition_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failover_condition_settings+: converted,
          }
        ),
      },
      with_failover_condition(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          failover_condition: value,
        }
      ),
      with_failover_condition_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          failover_condition+: converted,
        }
      ),
    },
    input_settings:: {
      local block = self,
      new():: (
        {}
      ),
      with_deblock_filter(value):: (
        local converted = value;
        assert std.isString(converted) : '"deblock_filter" expected to be of type "string"';
        {
          deblock_filter: converted,
        }
      ),
      with_denoise_filter(value):: (
        local converted = value;
        assert std.isString(converted) : '"denoise_filter" expected to be of type "string"';
        {
          denoise_filter: converted,
        }
      ),
      with_filter_strength(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"filter_strength" expected to be of type "number"';
        {
          filter_strength: converted,
        }
      ),
      with_input_filter(value):: (
        local converted = value;
        assert std.isString(converted) : '"input_filter" expected to be of type "string"';
        {
          input_filter: converted,
        }
      ),
      with_scte35_pid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"scte35_pid" expected to be of type "number"';
        {
          scte35_pid: converted,
        }
      ),
      with_smpte2038_data_preference(value):: (
        local converted = value;
        assert std.isString(converted) : '"smpte2038_data_preference" expected to be of type "string"';
        {
          smpte2038_data_preference: converted,
        }
      ),
      with_source_end_behavior(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_end_behavior" expected to be of type "string"';
        {
          source_end_behavior: converted,
        }
      ),
      audio_selector:: {
        local block = self,
        new(name):: (
          {}
          + block.with_name(name)
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        selector_settings:: {
          local block = self,
          new():: (
            {}
          ),
          audio_hls_rendition_selection:: {
            local block = self,
            new(group_id, name):: (
              {}
              + block.with_group_id(group_id)
              + block.with_name(name)
            ),
            with_group_id(value):: (
              local converted = value;
              assert std.isString(converted) : '"group_id" expected to be of type "string"';
              {
                group_id: converted,
              }
            ),
            with_name(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
          },
          audio_language_selection:: {
            local block = self,
            new(language_code):: (
              {}
              + block.with_language_code(language_code)
            ),
            with_language_code(value):: (
              local converted = value;
              assert std.isString(converted) : '"language_code" expected to be of type "string"';
              {
                language_code: converted,
              }
            ),
            with_language_selection_policy(value):: (
              local converted = value;
              assert std.isString(converted) : '"language_selection_policy" expected to be of type "string"';
              {
                language_selection_policy: converted,
              }
            ),
          },
          audio_pid_selection:: {
            local block = self,
            new(pid):: (
              {}
              + block.with_pid(pid)
            ),
            with_pid(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"pid" expected to be of type "number"';
              {
                pid: converted,
              }
            ),
          },
          audio_track_selection:: {
            local block = self,
            new():: (
              {}
            ),
            dolby_e_decode:: {
              local block = self,
              new(program_selection):: (
                {}
                + block.with_program_selection(program_selection)
              ),
              with_program_selection(value):: (
                local converted = value;
                assert std.isString(converted) : '"program_selection" expected to be of type "string"';
                {
                  program_selection: converted,
                }
              ),
            },
            tracks:: {
              local block = self,
              new(track):: (
                {}
                + block.with_track(track)
              ),
              with_track(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"track" expected to be of type "number"';
                {
                  track: converted,
                }
              ),
            },
            with_dolby_e_decode(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dolby_e_decode: value,
              }
            ),
            with_tracks(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tracks: value,
              }
            ),
            with_dolby_e_decode_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dolby_e_decode+: converted,
              }
            ),
            with_tracks_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tracks+: converted,
              }
            ),
          },
          with_audio_hls_rendition_selection(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_hls_rendition_selection: value,
            }
          ),
          with_audio_language_selection(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_language_selection: value,
            }
          ),
          with_audio_pid_selection(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_pid_selection: value,
            }
          ),
          with_audio_track_selection(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_track_selection: value,
            }
          ),
          with_audio_hls_rendition_selection_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_hls_rendition_selection+: converted,
            }
          ),
          with_audio_language_selection_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_language_selection+: converted,
            }
          ),
          with_audio_pid_selection_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_pid_selection+: converted,
            }
          ),
          with_audio_track_selection_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_track_selection+: converted,
            }
          ),
        },
        with_selector_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            selector_settings: value,
          }
        ),
        with_selector_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            selector_settings+: converted,
          }
        ),
      },
      caption_selector:: {
        local block = self,
        new(name):: (
          {}
          + block.with_name(name)
        ),
        with_language_code(value):: (
          local converted = value;
          assert std.isString(converted) : '"language_code" expected to be of type "string"';
          {
            language_code: converted,
          }
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        selector_settings:: {
          local block = self,
          new():: (
            {}
          ),
          ancillary_source_settings:: {
            local block = self,
            new():: (
              {}
            ),
            with_source_ancillary_channel_number(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"source_ancillary_channel_number" expected to be of type "number"';
              {
                source_ancillary_channel_number: converted,
              }
            ),
          },
          arib_source_settings:: {
            local block = self,
            new():: (
              {}
            ),
          },
          dvb_sub_source_settings:: {
            local block = self,
            new():: (
              {}
            ),
            with_ocr_language(value):: (
              local converted = value;
              assert std.isString(converted) : '"ocr_language" expected to be of type "string"';
              {
                ocr_language: converted,
              }
            ),
            with_pid(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"pid" expected to be of type "number"';
              {
                pid: converted,
              }
            ),
          },
          embedded_source_settings:: {
            local block = self,
            new():: (
              {}
            ),
            with_convert_608_to_708(value):: (
              local converted = value;
              assert std.isString(converted) : '"convert_608_to_708" expected to be of type "string"';
              {
                convert_608_to_708: converted,
              }
            ),
            with_scte20_detection(value):: (
              local converted = value;
              assert std.isString(converted) : '"scte20_detection" expected to be of type "string"';
              {
                scte20_detection: converted,
              }
            ),
            with_source_608_channel_number(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"source_608_channel_number" expected to be of type "number"';
              {
                source_608_channel_number: converted,
              }
            ),
          },
          scte20_source_settings:: {
            local block = self,
            new():: (
              {}
            ),
            with_convert_608_to_708(value):: (
              local converted = value;
              assert std.isString(converted) : '"convert_608_to_708" expected to be of type "string"';
              {
                convert_608_to_708: converted,
              }
            ),
            with_source_608_channel_number(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"source_608_channel_number" expected to be of type "number"';
              {
                source_608_channel_number: converted,
              }
            ),
          },
          scte27_source_settings:: {
            local block = self,
            new():: (
              {}
            ),
            with_ocr_language(value):: (
              local converted = value;
              assert std.isString(converted) : '"ocr_language" expected to be of type "string"';
              {
                ocr_language: converted,
              }
            ),
            with_pid(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"pid" expected to be of type "number"';
              {
                pid: converted,
              }
            ),
          },
          teletext_source_settings:: {
            local block = self,
            new():: (
              {}
            ),
            with_page_number(value):: (
              local converted = value;
              assert std.isString(converted) : '"page_number" expected to be of type "string"';
              {
                page_number: converted,
              }
            ),
            output_rectangle:: {
              local block = self,
              new(height, left_offset, top_offset, width):: (
                {}
                + block.with_height(height)
                + block.with_left_offset(left_offset)
                + block.with_top_offset(top_offset)
                + block.with_width(width)
              ),
              with_height(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"height" expected to be of type "number"';
                {
                  height: converted,
                }
              ),
              with_left_offset(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"left_offset" expected to be of type "number"';
                {
                  left_offset: converted,
                }
              ),
              with_top_offset(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"top_offset" expected to be of type "number"';
                {
                  top_offset: converted,
                }
              ),
              with_width(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"width" expected to be of type "number"';
                {
                  width: converted,
                }
              ),
            },
            with_output_rectangle(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                output_rectangle: value,
              }
            ),
            with_output_rectangle_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                output_rectangle+: converted,
              }
            ),
          },
          with_ancillary_source_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              ancillary_source_settings: value,
            }
          ),
          with_arib_source_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              arib_source_settings: value,
            }
          ),
          with_dvb_sub_source_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dvb_sub_source_settings: value,
            }
          ),
          with_embedded_source_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              embedded_source_settings: value,
            }
          ),
          with_scte20_source_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              scte20_source_settings: value,
            }
          ),
          with_scte27_source_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              scte27_source_settings: value,
            }
          ),
          with_teletext_source_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              teletext_source_settings: value,
            }
          ),
          with_ancillary_source_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              ancillary_source_settings+: converted,
            }
          ),
          with_arib_source_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              arib_source_settings+: converted,
            }
          ),
          with_dvb_sub_source_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dvb_sub_source_settings+: converted,
            }
          ),
          with_embedded_source_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              embedded_source_settings+: converted,
            }
          ),
          with_scte20_source_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              scte20_source_settings+: converted,
            }
          ),
          with_scte27_source_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              scte27_source_settings+: converted,
            }
          ),
          with_teletext_source_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              teletext_source_settings+: converted,
            }
          ),
        },
        with_selector_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            selector_settings: value,
          }
        ),
        with_selector_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            selector_settings+: converted,
          }
        ),
      },
      network_input_settings:: {
        local block = self,
        new():: (
          {}
        ),
        with_server_validation(value):: (
          local converted = value;
          assert std.isString(converted) : '"server_validation" expected to be of type "string"';
          {
            server_validation: converted,
          }
        ),
        hls_input_settings:: {
          local block = self,
          new():: (
            {}
          ),
          with_bandwidth(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bandwidth" expected to be of type "number"';
            {
              bandwidth: converted,
            }
          ),
          with_buffer_segments(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"buffer_segments" expected to be of type "number"';
            {
              buffer_segments: converted,
            }
          ),
          with_retries(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"retries" expected to be of type "number"';
            {
              retries: converted,
            }
          ),
          with_retry_interval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"retry_interval" expected to be of type "number"';
            {
              retry_interval: converted,
            }
          ),
          with_scte35_source(value):: (
            local converted = value;
            assert std.isString(converted) : '"scte35_source" expected to be of type "string"';
            {
              scte35_source: converted,
            }
          ),
        },
        with_hls_input_settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            hls_input_settings: value,
          }
        ),
        with_hls_input_settings_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            hls_input_settings+: converted,
          }
        ),
      },
      video_selector:: {
        local block = self,
        new():: (
          {}
        ),
        with_color_space(value):: (
          local converted = value;
          assert std.isString(converted) : '"color_space" expected to be of type "string"';
          {
            color_space: converted,
          }
        ),
        with_color_space_usage(value):: (
          local converted = value;
          assert std.isString(converted) : '"color_space_usage" expected to be of type "string"';
          {
            color_space_usage: converted,
          }
        ),
      },
      with_audio_selector(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audio_selector: value,
        }
      ),
      with_caption_selector(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          caption_selector: value,
        }
      ),
      with_network_input_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_input_settings: value,
        }
      ),
      with_video_selector(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          video_selector: value,
        }
      ),
      with_audio_selector_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audio_selector+: converted,
        }
      ),
      with_caption_selector_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          caption_selector+: converted,
        }
      ),
      with_network_input_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_input_settings+: converted,
        }
      ),
      with_video_selector_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          video_selector+: converted,
        }
      ),
    },
    with_automatic_input_failover_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        automatic_input_failover_settings: value,
      }
    ),
    with_input_settings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        input_settings: value,
      }
    ),
    with_automatic_input_failover_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        automatic_input_failover_settings+: converted,
      }
    ),
    with_input_settings_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        input_settings+: converted,
      }
    ),
  },
  input_specification:: {
    local block = self,
    new(codec, input_resolution, maximum_bitrate):: (
      {}
      + block.with_codec(codec)
      + block.with_input_resolution(input_resolution)
      + block.with_maximum_bitrate(maximum_bitrate)
    ),
    with_codec(value):: (
      local converted = value;
      assert std.isString(converted) : '"codec" expected to be of type "string"';
      {
        codec: converted,
      }
    ),
    with_input_resolution(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_resolution" expected to be of type "string"';
      {
        input_resolution: converted,
      }
    ),
    with_maximum_bitrate(value):: (
      local converted = value;
      assert std.isString(converted) : '"maximum_bitrate" expected to be of type "string"';
      {
        maximum_bitrate: converted,
      }
    ),
  },
  maintenance:: {
    local block = self,
    new(maintenance_day, maintenance_start_time):: (
      {}
      + block.with_maintenance_day(maintenance_day)
      + block.with_maintenance_start_time(maintenance_start_time)
    ),
    with_maintenance_day(value):: (
      local converted = value;
      assert std.isString(converted) : '"maintenance_day" expected to be of type "string"';
      {
        maintenance_day: converted,
      }
    ),
    with_maintenance_start_time(value):: (
      local converted = value;
      assert std.isString(converted) : '"maintenance_start_time" expected to be of type "string"';
      {
        maintenance_start_time: converted,
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
  vpc:: {
    local block = self,
    new(public_address_allocation_ids, subnet_ids):: (
      {}
      + block.with_public_address_allocation_ids(public_address_allocation_ids)
      + block.with_subnet_ids(subnet_ids)
    ),
    with_availability_zones(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
      {
        availability_zones: converted,
      }
    ),
    with_availability_zones_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
      {
        availability_zones+: converted,
      }
    ),
    with_network_interface_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_interface_ids" expected to be of type "set"';
      {
        network_interface_ids: converted,
      }
    ),
    with_network_interface_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_interface_ids" expected to be of type "set"';
      {
        network_interface_ids+: converted,
      }
    ),
    with_public_address_allocation_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"public_address_allocation_ids" expected to be of type "list"';
      {
        public_address_allocation_ids: converted,
      }
    ),
    with_public_address_allocation_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"public_address_allocation_ids" expected to be of type "list"';
      {
        public_address_allocation_ids+: converted,
      }
    ),
    with_security_group_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    with_security_group_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
      }
    ),
    with_subnet_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    with_subnet_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
      }
    ),
  },
  with_cdi_input_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cdi_input_specification: value,
    }
  ),
  with_destinations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destinations: value,
    }
  ),
  with_encoder_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encoder_settings: value,
    }
  ),
  with_input_attachments(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_attachments: value,
    }
  ),
  with_input_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_specification: value,
    }
  ),
  with_maintenance(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_vpc(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc: value,
    }
  ),
  with_cdi_input_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cdi_input_specification+: converted,
    }
  ),
  with_destinations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destinations+: converted,
    }
  ),
  with_encoder_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encoder_settings+: converted,
    }
  ),
  with_input_attachments_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_attachments+: converted,
    }
  ),
  with_input_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_specification+: converted,
    }
  ),
  with_maintenance_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance+: converted,
    }
  ),
  with_vpc_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc+: converted,
    }
  ),
}
