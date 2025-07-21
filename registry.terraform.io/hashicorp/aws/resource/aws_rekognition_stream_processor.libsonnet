{
  local block = self,
  new(name, role_arn):: (
    {}
    + block.with_name(name)
    + block.with_role_arn(role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  '#with_kms_key_id':: 'The identifier for your AWS Key Management Service key (AWS KMS key). You can supply the Amazon Resource Name (ARN) of your KMS key, the ID of your KMS key, an alias for your KMS key, or an alias ARN.',
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  '#with_name':: 'An identifier you assign to the stream processor.',
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
  '#with_role_arn':: 'The Amazon Resource Number (ARN) of the IAM role that allows access to the stream processor.',
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  with_stream_processor_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"stream_processor_arn" expected to be of type "string"';
    {
      stream_processor_arn: converted,
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
  data_sharing_preference:: {
    local block = self,
    new(opt_in):: (
      {}
      + block.with_opt_in(opt_in)
    ),
    '#with_opt_in':: 'Do you want to share data with Rekognition to improve model performance.',
    with_opt_in(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"opt_in" expected to be of type "bool"';
      {
        opt_in: converted,
      }
    ),
  },
  input:: {
    local block = self,
    new():: (
      {}
    ),
    kinesis_video_stream:: {
      local block = self,
      new(arn):: (
        {}
        + block.with_arn(arn)
      ),
      '#with_arn':: 'ARN of the Kinesis video stream stream that streams the source video.',
      with_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"arn" expected to be of type "string"';
        {
          arn: converted,
        }
      ),
    },
    with_kinesis_video_stream(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_video_stream: value,
      }
    ),
    with_kinesis_video_stream_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_video_stream+: converted,
      }
    ),
  },
  notification_channel:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_sns_topic_arn':: 'The Amazon Resource Number (ARN) of the Amazon Amazon Simple Notification Service topic to which Amazon Rekognition posts the completion status.',
    with_sns_topic_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"sns_topic_arn" expected to be of type "string"';
      {
        sns_topic_arn: converted,
      }
    ),
  },
  output:: {
    local block = self,
    new():: (
      {}
    ),
    kinesis_data_stream:: {
      local block = self,
      new():: (
        {}
      ),
      '#with_arn':: 'ARN of the output Amazon Kinesis Data Streams stream.',
      with_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"arn" expected to be of type "string"';
        {
          arn: converted,
        }
      ),
    },
    s3_destination:: {
      local block = self,
      new():: (
        {}
      ),
      '#with_bucket':: 'The name of the Amazon S3 bucket you want to associate with the streaming video project.',
      with_bucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket" expected to be of type "string"';
        {
          bucket: converted,
        }
      ),
      '#with_key_prefix':: 'The prefix value of the location within the bucket that you want the information to be published to.',
      with_key_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"key_prefix" expected to be of type "string"';
        {
          key_prefix: converted,
        }
      ),
    },
    with_kinesis_data_stream(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_data_stream: value,
      }
    ),
    with_s3_destination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_destination: value,
      }
    ),
    with_kinesis_data_stream_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_data_stream+: converted,
      }
    ),
    with_s3_destination_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_destination+: converted,
      }
    ),
  },
  regions_of_interest:: {
    local block = self,
    new():: (
      {}
    ),
    bounding_box:: {
      local block = self,
      new():: (
        {}
      ),
      '#with_height':: 'Height of the bounding box as a ratio of the overall image height.',
      with_height(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"height" expected to be of type "number"';
        {
          height: converted,
        }
      ),
      '#with_left':: 'Left coordinate of the bounding box as a ratio of overall image width.',
      with_left(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"left" expected to be of type "number"';
        {
          left: converted,
        }
      ),
      '#with_top':: 'Top coordinate of the bounding box as a ratio of overall image height.',
      with_top(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"top" expected to be of type "number"';
        {
          top: converted,
        }
      ),
      '#with_width':: 'Width of the bounding box as a ratio of the overall image width.',
      with_width(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"width" expected to be of type "number"';
        {
          width: converted,
        }
      ),
    },
    polygon:: {
      local block = self,
      new():: (
        {}
      ),
      '#with_x':: 'The value of the X coordinate for a point on a Polygon.',
      with_x(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"x" expected to be of type "number"';
        {
          x: converted,
        }
      ),
      '#with_y':: 'The value of the Y coordinate for a point on a Polygon.',
      with_y(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"y" expected to be of type "number"';
        {
          y: converted,
        }
      ),
    },
    with_bounding_box(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bounding_box: value,
      }
    ),
    with_polygon(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        polygon: value,
      }
    ),
    with_bounding_box_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bounding_box+: converted,
      }
    ),
    with_polygon_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        polygon+: converted,
      }
    ),
  },
  settings:: {
    local block = self,
    new():: (
      {}
    ),
    connected_home:: {
      local block = self,
      new():: (
        {}
      ),
      '#with_labels':: 'Specifies what you want to detect in the video, such as people, packages, or pets.',
      with_labels(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"labels" expected to be of type "list"';
        {
          labels: converted,
        }
      ),
      '#with_labels_mixin':: 'Specifies what you want to detect in the video, such as people, packages, or pets.',
      with_labels_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"labels" expected to be of type "list"';
        {
          labels+: converted,
        }
      ),
      '#with_min_confidence':: 'The minimum confidence required to label an object in the video.',
      with_min_confidence(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"min_confidence" expected to be of type "number"';
        {
          min_confidence: converted,
        }
      ),
    },
    face_search:: {
      local block = self,
      new(collection_id):: (
        {}
        + block.with_collection_id(collection_id)
      ),
      '#with_collection_id':: 'The ID of a collection that contains faces that you want to search for.',
      with_collection_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"collection_id" expected to be of type "string"';
        {
          collection_id: converted,
        }
      ),
      '#with_face_match_threshold':: 'Minimum face match confidence score that must be met to return a result for a recognized face.',
      with_face_match_threshold(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"face_match_threshold" expected to be of type "number"';
        {
          face_match_threshold: converted,
        }
      ),
    },
    with_connected_home(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connected_home: value,
      }
    ),
    with_face_search(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        face_search: value,
      }
    ),
    with_connected_home_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connected_home+: converted,
      }
    ),
    with_face_search_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        face_search+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_data_sharing_preference(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_sharing_preference: value,
    }
  ),
  with_input(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input: value,
    }
  ),
  with_notification_channel(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_channel: value,
    }
  ),
  with_output(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output: value,
    }
  ),
  with_regions_of_interest(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      regions_of_interest: value,
    }
  ),
  with_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      settings: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_data_sharing_preference_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_sharing_preference+: converted,
    }
  ),
  with_input_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input+: converted,
    }
  ),
  with_notification_channel_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_channel+: converted,
    }
  ),
  with_output_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output+: converted,
    }
  ),
  with_regions_of_interest_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      regions_of_interest+: converted,
    }
  ),
  with_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      settings+: converted,
    }
  ),
}
