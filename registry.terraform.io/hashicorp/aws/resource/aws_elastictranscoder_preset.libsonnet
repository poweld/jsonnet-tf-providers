{
  local block = self,
  new(container):: (
    {}
    + block.with_container(container)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_container(value):: (
    local converted = value;
    assert std.isString(converted) : '"container" expected to be of type "string"';
    {
      container: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  with_video_codec_options(value):: (
    local converted = value;
    assert std.isObject(converted) : '"video_codec_options" expected to be of type "map"';
    {
      video_codec_options: converted,
    }
  ),
  audio:: {
    local block = self,
    new():: (
      {}
    ),
    with_audio_packing_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"audio_packing_mode" expected to be of type "string"';
      {
        audio_packing_mode: converted,
      }
    ),
    with_bit_rate(value):: (
      local converted = value;
      assert std.isString(converted) : '"bit_rate" expected to be of type "string"';
      {
        bit_rate: converted,
      }
    ),
    with_channels(value):: (
      local converted = value;
      assert std.isString(converted) : '"channels" expected to be of type "string"';
      {
        channels: converted,
      }
    ),
    with_codec(value):: (
      local converted = value;
      assert std.isString(converted) : '"codec" expected to be of type "string"';
      {
        codec: converted,
      }
    ),
    with_sample_rate(value):: (
      local converted = value;
      assert std.isString(converted) : '"sample_rate" expected to be of type "string"';
      {
        sample_rate: converted,
      }
    ),
  },
  audio_codec_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_bit_depth(value):: (
      local converted = value;
      assert std.isString(converted) : '"bit_depth" expected to be of type "string"';
      {
        bit_depth: converted,
      }
    ),
    with_bit_order(value):: (
      local converted = value;
      assert std.isString(converted) : '"bit_order" expected to be of type "string"';
      {
        bit_order: converted,
      }
    ),
    with_profile(value):: (
      local converted = value;
      assert std.isString(converted) : '"profile" expected to be of type "string"';
      {
        profile: converted,
      }
    ),
    with_signed(value):: (
      local converted = value;
      assert std.isString(converted) : '"signed" expected to be of type "string"';
      {
        signed: converted,
      }
    ),
  },
  thumbnails:: {
    local block = self,
    new():: (
      {}
    ),
    with_aspect_ratio(value):: (
      local converted = value;
      assert std.isString(converted) : '"aspect_ratio" expected to be of type "string"';
      {
        aspect_ratio: converted,
      }
    ),
    with_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"format" expected to be of type "string"';
      {
        format: converted,
      }
    ),
    with_interval(value):: (
      local converted = value;
      assert std.isString(converted) : '"interval" expected to be of type "string"';
      {
        interval: converted,
      }
    ),
    with_max_height(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_height" expected to be of type "string"';
      {
        max_height: converted,
      }
    ),
    with_max_width(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_width" expected to be of type "string"';
      {
        max_width: converted,
      }
    ),
    with_padding_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"padding_policy" expected to be of type "string"';
      {
        padding_policy: converted,
      }
    ),
    with_resolution(value):: (
      local converted = value;
      assert std.isString(converted) : '"resolution" expected to be of type "string"';
      {
        resolution: converted,
      }
    ),
    with_sizing_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"sizing_policy" expected to be of type "string"';
      {
        sizing_policy: converted,
      }
    ),
  },
  video:: {
    local block = self,
    new():: (
      {}
    ),
    with_aspect_ratio(value):: (
      local converted = value;
      assert std.isString(converted) : '"aspect_ratio" expected to be of type "string"';
      {
        aspect_ratio: converted,
      }
    ),
    with_bit_rate(value):: (
      local converted = value;
      assert std.isString(converted) : '"bit_rate" expected to be of type "string"';
      {
        bit_rate: converted,
      }
    ),
    with_codec(value):: (
      local converted = value;
      assert std.isString(converted) : '"codec" expected to be of type "string"';
      {
        codec: converted,
      }
    ),
    with_display_aspect_ratio(value):: (
      local converted = value;
      assert std.isString(converted) : '"display_aspect_ratio" expected to be of type "string"';
      {
        display_aspect_ratio: converted,
      }
    ),
    with_fixed_gop(value):: (
      local converted = value;
      assert std.isString(converted) : '"fixed_gop" expected to be of type "string"';
      {
        fixed_gop: converted,
      }
    ),
    with_frame_rate(value):: (
      local converted = value;
      assert std.isString(converted) : '"frame_rate" expected to be of type "string"';
      {
        frame_rate: converted,
      }
    ),
    with_keyframes_max_dist(value):: (
      local converted = value;
      assert std.isString(converted) : '"keyframes_max_dist" expected to be of type "string"';
      {
        keyframes_max_dist: converted,
      }
    ),
    with_max_frame_rate(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_frame_rate" expected to be of type "string"';
      {
        max_frame_rate: converted,
      }
    ),
    with_max_height(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_height" expected to be of type "string"';
      {
        max_height: converted,
      }
    ),
    with_max_width(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_width" expected to be of type "string"';
      {
        max_width: converted,
      }
    ),
    with_padding_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"padding_policy" expected to be of type "string"';
      {
        padding_policy: converted,
      }
    ),
    with_resolution(value):: (
      local converted = value;
      assert std.isString(converted) : '"resolution" expected to be of type "string"';
      {
        resolution: converted,
      }
    ),
    with_sizing_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"sizing_policy" expected to be of type "string"';
      {
        sizing_policy: converted,
      }
    ),
  },
  video_watermarks:: {
    local block = self,
    new():: (
      {}
    ),
    with_horizontal_align(value):: (
      local converted = value;
      assert std.isString(converted) : '"horizontal_align" expected to be of type "string"';
      {
        horizontal_align: converted,
      }
    ),
    with_horizontal_offset(value):: (
      local converted = value;
      assert std.isString(converted) : '"horizontal_offset" expected to be of type "string"';
      {
        horizontal_offset: converted,
      }
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_max_height(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_height" expected to be of type "string"';
      {
        max_height: converted,
      }
    ),
    with_max_width(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_width" expected to be of type "string"';
      {
        max_width: converted,
      }
    ),
    with_opacity(value):: (
      local converted = value;
      assert std.isString(converted) : '"opacity" expected to be of type "string"';
      {
        opacity: converted,
      }
    ),
    with_sizing_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"sizing_policy" expected to be of type "string"';
      {
        sizing_policy: converted,
      }
    ),
    with_target(value):: (
      local converted = value;
      assert std.isString(converted) : '"target" expected to be of type "string"';
      {
        target: converted,
      }
    ),
    with_vertical_align(value):: (
      local converted = value;
      assert std.isString(converted) : '"vertical_align" expected to be of type "string"';
      {
        vertical_align: converted,
      }
    ),
    with_vertical_offset(value):: (
      local converted = value;
      assert std.isString(converted) : '"vertical_offset" expected to be of type "string"';
      {
        vertical_offset: converted,
      }
    ),
  },
  with_audio(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      audio: value,
    }
  ),
  with_audio_codec_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      audio_codec_options: value,
    }
  ),
  with_thumbnails(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thumbnails: value,
    }
  ),
  with_video(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      video: value,
    }
  ),
  with_video_watermarks(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      video_watermarks: value,
    }
  ),
  with_audio_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      audio+: converted,
    }
  ),
  with_audio_codec_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      audio_codec_options+: converted,
    }
  ),
  with_thumbnails_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thumbnails+: converted,
    }
  ),
  with_video_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      video+: converted,
    }
  ),
  with_video_watermarks_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      video_watermarks+: converted,
    }
  ),
}
