{
  local block = self,
  new(name, resource_access_role_arn):: (
    {}
    + block.with_name(name)
    + block.with_resource_access_role_arn(resource_access_role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_resource_access_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_access_role_arn" expected to be of type "string"';
    {
      resource_access_role_arn: converted,
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
  elements:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    amazon_transcribe_call_analytics_processor_configuration:: {
      local block = self,
      new(language_code):: (
        {}
        + block.with_language_code(language_code)
      ),
      with_call_analytics_stream_categories(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"call_analytics_stream_categories" expected to be of type "list"';
        {
          call_analytics_stream_categories: converted,
        }
      ),
      with_call_analytics_stream_categories_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"call_analytics_stream_categories" expected to be of type "list"';
        {
          call_analytics_stream_categories+: converted,
        }
      ),
      with_content_identification_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_identification_type" expected to be of type "string"';
        {
          content_identification_type: converted,
        }
      ),
      with_content_redaction_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_redaction_type" expected to be of type "string"';
        {
          content_redaction_type: converted,
        }
      ),
      with_enable_partial_results_stabilization(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_partial_results_stabilization" expected to be of type "bool"';
        {
          enable_partial_results_stabilization: converted,
        }
      ),
      with_filter_partial_results(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"filter_partial_results" expected to be of type "bool"';
        {
          filter_partial_results: converted,
        }
      ),
      with_language_code(value):: (
        local converted = value;
        assert std.isString(converted) : '"language_code" expected to be of type "string"';
        {
          language_code: converted,
        }
      ),
      with_language_model_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"language_model_name" expected to be of type "string"';
        {
          language_model_name: converted,
        }
      ),
      with_partial_results_stability(value):: (
        local converted = value;
        assert std.isString(converted) : '"partial_results_stability" expected to be of type "string"';
        {
          partial_results_stability: converted,
        }
      ),
      with_pii_entity_types(value):: (
        local converted = value;
        assert std.isString(converted) : '"pii_entity_types" expected to be of type "string"';
        {
          pii_entity_types: converted,
        }
      ),
      with_vocabulary_filter_method(value):: (
        local converted = value;
        assert std.isString(converted) : '"vocabulary_filter_method" expected to be of type "string"';
        {
          vocabulary_filter_method: converted,
        }
      ),
      with_vocabulary_filter_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"vocabulary_filter_name" expected to be of type "string"';
        {
          vocabulary_filter_name: converted,
        }
      ),
      with_vocabulary_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"vocabulary_name" expected to be of type "string"';
        {
          vocabulary_name: converted,
        }
      ),
      post_call_analytics_settings:: {
        local block = self,
        new(data_access_role_arn, output_location):: (
          {}
          + block.with_data_access_role_arn(data_access_role_arn)
          + block.with_output_location(output_location)
        ),
        with_content_redaction_output(value):: (
          local converted = value;
          assert std.isString(converted) : '"content_redaction_output" expected to be of type "string"';
          {
            content_redaction_output: converted,
          }
        ),
        with_data_access_role_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"data_access_role_arn" expected to be of type "string"';
          {
            data_access_role_arn: converted,
          }
        ),
        with_output_encryption_kms_key_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"output_encryption_kms_key_id" expected to be of type "string"';
          {
            output_encryption_kms_key_id: converted,
          }
        ),
        with_output_location(value):: (
          local converted = value;
          assert std.isString(converted) : '"output_location" expected to be of type "string"';
          {
            output_location: converted,
          }
        ),
      },
      with_post_call_analytics_settings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          post_call_analytics_settings: value,
        }
      ),
      with_post_call_analytics_settings_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          post_call_analytics_settings+: converted,
        }
      ),
    },
    amazon_transcribe_processor_configuration:: {
      local block = self,
      new(language_code):: (
        {}
        + block.with_language_code(language_code)
      ),
      with_content_identification_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_identification_type" expected to be of type "string"';
        {
          content_identification_type: converted,
        }
      ),
      with_content_redaction_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_redaction_type" expected to be of type "string"';
        {
          content_redaction_type: converted,
        }
      ),
      with_enable_partial_results_stabilization(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_partial_results_stabilization" expected to be of type "bool"';
        {
          enable_partial_results_stabilization: converted,
        }
      ),
      with_filter_partial_results(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"filter_partial_results" expected to be of type "bool"';
        {
          filter_partial_results: converted,
        }
      ),
      with_language_code(value):: (
        local converted = value;
        assert std.isString(converted) : '"language_code" expected to be of type "string"';
        {
          language_code: converted,
        }
      ),
      with_language_model_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"language_model_name" expected to be of type "string"';
        {
          language_model_name: converted,
        }
      ),
      with_partial_results_stability(value):: (
        local converted = value;
        assert std.isString(converted) : '"partial_results_stability" expected to be of type "string"';
        {
          partial_results_stability: converted,
        }
      ),
      with_pii_entity_types(value):: (
        local converted = value;
        assert std.isString(converted) : '"pii_entity_types" expected to be of type "string"';
        {
          pii_entity_types: converted,
        }
      ),
      with_show_speaker_label(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"show_speaker_label" expected to be of type "bool"';
        {
          show_speaker_label: converted,
        }
      ),
      with_vocabulary_filter_method(value):: (
        local converted = value;
        assert std.isString(converted) : '"vocabulary_filter_method" expected to be of type "string"';
        {
          vocabulary_filter_method: converted,
        }
      ),
      with_vocabulary_filter_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"vocabulary_filter_name" expected to be of type "string"';
        {
          vocabulary_filter_name: converted,
        }
      ),
      with_vocabulary_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"vocabulary_name" expected to be of type "string"';
        {
          vocabulary_name: converted,
        }
      ),
    },
    kinesis_data_stream_sink_configuration:: {
      local block = self,
      new(insights_target):: (
        {}
        + block.with_insights_target(insights_target)
      ),
      with_insights_target(value):: (
        local converted = value;
        assert std.isString(converted) : '"insights_target" expected to be of type "string"';
        {
          insights_target: converted,
        }
      ),
    },
    lambda_function_sink_configuration:: {
      local block = self,
      new(insights_target):: (
        {}
        + block.with_insights_target(insights_target)
      ),
      with_insights_target(value):: (
        local converted = value;
        assert std.isString(converted) : '"insights_target" expected to be of type "string"';
        {
          insights_target: converted,
        }
      ),
    },
    s3_recording_sink_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_destination(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination" expected to be of type "string"';
        {
          destination: converted,
        }
      ),
    },
    sns_topic_sink_configuration:: {
      local block = self,
      new(insights_target):: (
        {}
        + block.with_insights_target(insights_target)
      ),
      with_insights_target(value):: (
        local converted = value;
        assert std.isString(converted) : '"insights_target" expected to be of type "string"';
        {
          insights_target: converted,
        }
      ),
    },
    sqs_queue_sink_configuration:: {
      local block = self,
      new(insights_target):: (
        {}
        + block.with_insights_target(insights_target)
      ),
      with_insights_target(value):: (
        local converted = value;
        assert std.isString(converted) : '"insights_target" expected to be of type "string"';
        {
          insights_target: converted,
        }
      ),
    },
    voice_analytics_processor_configuration:: {
      local block = self,
      new(speaker_search_status, voice_tone_analysis_status):: (
        {}
        + block.with_speaker_search_status(speaker_search_status)
        + block.with_voice_tone_analysis_status(voice_tone_analysis_status)
      ),
      with_speaker_search_status(value):: (
        local converted = value;
        assert std.isString(converted) : '"speaker_search_status" expected to be of type "string"';
        {
          speaker_search_status: converted,
        }
      ),
      with_voice_tone_analysis_status(value):: (
        local converted = value;
        assert std.isString(converted) : '"voice_tone_analysis_status" expected to be of type "string"';
        {
          voice_tone_analysis_status: converted,
        }
      ),
    },
    with_amazon_transcribe_call_analytics_processor_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_transcribe_call_analytics_processor_configuration: value,
      }
    ),
    with_amazon_transcribe_processor_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_transcribe_processor_configuration: value,
      }
    ),
    with_kinesis_data_stream_sink_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_data_stream_sink_configuration: value,
      }
    ),
    with_lambda_function_sink_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_sink_configuration: value,
      }
    ),
    with_s3_recording_sink_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_recording_sink_configuration: value,
      }
    ),
    with_sns_topic_sink_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sns_topic_sink_configuration: value,
      }
    ),
    with_sqs_queue_sink_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_queue_sink_configuration: value,
      }
    ),
    with_voice_analytics_processor_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        voice_analytics_processor_configuration: value,
      }
    ),
    with_amazon_transcribe_call_analytics_processor_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_transcribe_call_analytics_processor_configuration+: converted,
      }
    ),
    with_amazon_transcribe_processor_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_transcribe_processor_configuration+: converted,
      }
    ),
    with_kinesis_data_stream_sink_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_data_stream_sink_configuration+: converted,
      }
    ),
    with_lambda_function_sink_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_sink_configuration+: converted,
      }
    ),
    with_s3_recording_sink_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_recording_sink_configuration+: converted,
      }
    ),
    with_sns_topic_sink_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sns_topic_sink_configuration+: converted,
      }
    ),
    with_sqs_queue_sink_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_queue_sink_configuration+: converted,
      }
    ),
    with_voice_analytics_processor_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        voice_analytics_processor_configuration+: converted,
      }
    ),
  },
  real_time_alert_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_disabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disabled" expected to be of type "bool"';
      {
        disabled: converted,
      }
    ),
    rules:: {
      local block = self,
      new(type):: (
        {}
        + block.with_type(type)
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      issue_detection_configuration:: {
        local block = self,
        new(rule_name):: (
          {}
          + block.with_rule_name(rule_name)
        ),
        with_rule_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"rule_name" expected to be of type "string"';
          {
            rule_name: converted,
          }
        ),
      },
      keyword_match_configuration:: {
        local block = self,
        new(keywords, rule_name):: (
          {}
          + block.with_keywords(keywords)
          + block.with_rule_name(rule_name)
        ),
        with_keywords(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"keywords" expected to be of type "list"';
          {
            keywords: converted,
          }
        ),
        with_keywords_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"keywords" expected to be of type "list"';
          {
            keywords+: converted,
          }
        ),
        with_negate(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"negate" expected to be of type "bool"';
          {
            negate: converted,
          }
        ),
        with_rule_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"rule_name" expected to be of type "string"';
          {
            rule_name: converted,
          }
        ),
      },
      sentiment_configuration:: {
        local block = self,
        new(rule_name, sentiment_type, time_period):: (
          {}
          + block.with_rule_name(rule_name)
          + block.with_sentiment_type(sentiment_type)
          + block.with_time_period(time_period)
        ),
        with_rule_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"rule_name" expected to be of type "string"';
          {
            rule_name: converted,
          }
        ),
        with_sentiment_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"sentiment_type" expected to be of type "string"';
          {
            sentiment_type: converted,
          }
        ),
        with_time_period(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"time_period" expected to be of type "number"';
          {
            time_period: converted,
          }
        ),
      },
      with_issue_detection_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          issue_detection_configuration: value,
        }
      ),
      with_keyword_match_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          keyword_match_configuration: value,
        }
      ),
      with_sentiment_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sentiment_configuration: value,
        }
      ),
      with_issue_detection_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          issue_detection_configuration+: converted,
        }
      ),
      with_keyword_match_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          keyword_match_configuration+: converted,
        }
      ),
      with_sentiment_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sentiment_configuration+: converted,
        }
      ),
    },
    with_rules(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rules: value,
      }
    ),
    with_rules_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rules+: converted,
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
  with_elements(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elements: value,
    }
  ),
  with_real_time_alert_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      real_time_alert_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_elements_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elements+: converted,
    }
  ),
  with_real_time_alert_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      real_time_alert_configuration+: converted,
    }
  ),
}
