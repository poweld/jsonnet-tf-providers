{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_alias_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alias_attributes" expected to be of type "set"';
    {
      alias_attributes: converted,
    }
  ),
  with_alias_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alias_attributes" expected to be of type "set"';
    {
      alias_attributes+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auto_verified_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"auto_verified_attributes" expected to be of type "set"';
    {
      auto_verified_attributes: converted,
    }
  ),
  with_auto_verified_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"auto_verified_attributes" expected to be of type "set"';
    {
      auto_verified_attributes+: converted,
    }
  ),
  with_creation_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_date" expected to be of type "string"';
    {
      creation_date: converted,
    }
  ),
  with_custom_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_domain" expected to be of type "string"';
    {
      custom_domain: converted,
    }
  ),
  with_deletion_protection(value):: (
    local converted = value;
    assert std.isString(converted) : '"deletion_protection" expected to be of type "string"';
    {
      deletion_protection: converted,
    }
  ),
  with_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  with_email_verification_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_verification_message" expected to be of type "string"';
    {
      email_verification_message: converted,
    }
  ),
  with_email_verification_subject(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_verification_subject" expected to be of type "string"';
    {
      email_verification_subject: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint" expected to be of type "string"';
    {
      endpoint: converted,
    }
  ),
  with_estimated_number_of_users(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"estimated_number_of_users" expected to be of type "number"';
    {
      estimated_number_of_users: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_modified_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_date" expected to be of type "string"';
    {
      last_modified_date: converted,
    }
  ),
  with_mfa_configuration(value):: (
    local converted = value;
    assert std.isString(converted) : '"mfa_configuration" expected to be of type "string"';
    {
      mfa_configuration: converted,
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
  with_sms_authentication_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"sms_authentication_message" expected to be of type "string"';
    {
      sms_authentication_message: converted,
    }
  ),
  with_sms_verification_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"sms_verification_message" expected to be of type "string"';
    {
      sms_verification_message: converted,
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
  with_user_pool_tier(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_tier" expected to be of type "string"';
    {
      user_pool_tier: converted,
    }
  ),
  with_username_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"username_attributes" expected to be of type "set"';
    {
      username_attributes: converted,
    }
  ),
  with_username_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"username_attributes" expected to be of type "set"';
    {
      username_attributes+: converted,
    }
  ),
  account_recovery_setting:: {
    local block = self,
    new():: (
      {}
    ),
    recovery_mechanism:: {
      local block = self,
      new(name, priority):: (
        {}
        + block.with_name(name)
        + block.with_priority(priority)
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_priority(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"priority" expected to be of type "number"';
        {
          priority: converted,
        }
      ),
    },
    with_recovery_mechanism(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recovery_mechanism: value,
      }
    ),
    with_recovery_mechanism_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recovery_mechanism+: converted,
      }
    ),
  },
  admin_create_user_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_allow_admin_create_user_only(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_admin_create_user_only" expected to be of type "bool"';
      {
        allow_admin_create_user_only: converted,
      }
    ),
    invite_message_template:: {
      local block = self,
      new():: (
        {}
      ),
      with_email_message(value):: (
        local converted = value;
        assert std.isString(converted) : '"email_message" expected to be of type "string"';
        {
          email_message: converted,
        }
      ),
      with_email_subject(value):: (
        local converted = value;
        assert std.isString(converted) : '"email_subject" expected to be of type "string"';
        {
          email_subject: converted,
        }
      ),
      with_sms_message(value):: (
        local converted = value;
        assert std.isString(converted) : '"sms_message" expected to be of type "string"';
        {
          sms_message: converted,
        }
      ),
    },
    with_invite_message_template(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        invite_message_template: value,
      }
    ),
    with_invite_message_template_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        invite_message_template+: converted,
      }
    ),
  },
  device_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_challenge_required_on_new_device(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"challenge_required_on_new_device" expected to be of type "bool"';
      {
        challenge_required_on_new_device: converted,
      }
    ),
    with_device_only_remembered_on_user_prompt(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"device_only_remembered_on_user_prompt" expected to be of type "bool"';
      {
        device_only_remembered_on_user_prompt: converted,
      }
    ),
  },
  email_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_configuration_set(value):: (
      local converted = value;
      assert std.isString(converted) : '"configuration_set" expected to be of type "string"';
      {
        configuration_set: converted,
      }
    ),
    with_email_sending_account(value):: (
      local converted = value;
      assert std.isString(converted) : '"email_sending_account" expected to be of type "string"';
      {
        email_sending_account: converted,
      }
    ),
    with_from_email_address(value):: (
      local converted = value;
      assert std.isString(converted) : '"from_email_address" expected to be of type "string"';
      {
        from_email_address: converted,
      }
    ),
    with_reply_to_email_address(value):: (
      local converted = value;
      assert std.isString(converted) : '"reply_to_email_address" expected to be of type "string"';
      {
        reply_to_email_address: converted,
      }
    ),
    with_source_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_arn" expected to be of type "string"';
      {
        source_arn: converted,
      }
    ),
  },
  email_mfa_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_message(value):: (
      local converted = value;
      assert std.isString(converted) : '"message" expected to be of type "string"';
      {
        message: converted,
      }
    ),
    with_subject(value):: (
      local converted = value;
      assert std.isString(converted) : '"subject" expected to be of type "string"';
      {
        subject: converted,
      }
    ),
  },
  lambda_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_create_auth_challenge(value):: (
      local converted = value;
      assert std.isString(converted) : '"create_auth_challenge" expected to be of type "string"';
      {
        create_auth_challenge: converted,
      }
    ),
    with_custom_message(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_message" expected to be of type "string"';
      {
        custom_message: converted,
      }
    ),
    with_define_auth_challenge(value):: (
      local converted = value;
      assert std.isString(converted) : '"define_auth_challenge" expected to be of type "string"';
      {
        define_auth_challenge: converted,
      }
    ),
    with_kms_key_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    with_post_authentication(value):: (
      local converted = value;
      assert std.isString(converted) : '"post_authentication" expected to be of type "string"';
      {
        post_authentication: converted,
      }
    ),
    with_post_confirmation(value):: (
      local converted = value;
      assert std.isString(converted) : '"post_confirmation" expected to be of type "string"';
      {
        post_confirmation: converted,
      }
    ),
    with_pre_authentication(value):: (
      local converted = value;
      assert std.isString(converted) : '"pre_authentication" expected to be of type "string"';
      {
        pre_authentication: converted,
      }
    ),
    with_pre_sign_up(value):: (
      local converted = value;
      assert std.isString(converted) : '"pre_sign_up" expected to be of type "string"';
      {
        pre_sign_up: converted,
      }
    ),
    with_pre_token_generation(value):: (
      local converted = value;
      assert std.isString(converted) : '"pre_token_generation" expected to be of type "string"';
      {
        pre_token_generation: converted,
      }
    ),
    with_user_migration(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_migration" expected to be of type "string"';
      {
        user_migration: converted,
      }
    ),
    with_verify_auth_challenge_response(value):: (
      local converted = value;
      assert std.isString(converted) : '"verify_auth_challenge_response" expected to be of type "string"';
      {
        verify_auth_challenge_response: converted,
      }
    ),
    custom_email_sender:: {
      local block = self,
      new(lambda_arn, lambda_version):: (
        {}
        + block.with_lambda_arn(lambda_arn)
        + block.with_lambda_version(lambda_version)
      ),
      with_lambda_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
        {
          lambda_arn: converted,
        }
      ),
      with_lambda_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_version" expected to be of type "string"';
        {
          lambda_version: converted,
        }
      ),
    },
    custom_sms_sender:: {
      local block = self,
      new(lambda_arn, lambda_version):: (
        {}
        + block.with_lambda_arn(lambda_arn)
        + block.with_lambda_version(lambda_version)
      ),
      with_lambda_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
        {
          lambda_arn: converted,
        }
      ),
      with_lambda_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_version" expected to be of type "string"';
        {
          lambda_version: converted,
        }
      ),
    },
    pre_token_generation_config:: {
      local block = self,
      new(lambda_arn, lambda_version):: (
        {}
        + block.with_lambda_arn(lambda_arn)
        + block.with_lambda_version(lambda_version)
      ),
      with_lambda_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
        {
          lambda_arn: converted,
        }
      ),
      with_lambda_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_version" expected to be of type "string"';
        {
          lambda_version: converted,
        }
      ),
    },
    with_custom_email_sender(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_email_sender: value,
      }
    ),
    with_custom_sms_sender(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_sms_sender: value,
      }
    ),
    with_pre_token_generation_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pre_token_generation_config: value,
      }
    ),
    with_custom_email_sender_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_email_sender+: converted,
      }
    ),
    with_custom_sms_sender_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_sms_sender+: converted,
      }
    ),
    with_pre_token_generation_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pre_token_generation_config+: converted,
      }
    ),
  },
  password_policy:: {
    local block = self,
    new():: (
      {}
    ),
    with_minimum_length(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"minimum_length" expected to be of type "number"';
      {
        minimum_length: converted,
      }
    ),
    with_password_history_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"password_history_size" expected to be of type "number"';
      {
        password_history_size: converted,
      }
    ),
    with_require_lowercase(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"require_lowercase" expected to be of type "bool"';
      {
        require_lowercase: converted,
      }
    ),
    with_require_numbers(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"require_numbers" expected to be of type "bool"';
      {
        require_numbers: converted,
      }
    ),
    with_require_symbols(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"require_symbols" expected to be of type "bool"';
      {
        require_symbols: converted,
      }
    ),
    with_require_uppercase(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"require_uppercase" expected to be of type "bool"';
      {
        require_uppercase: converted,
      }
    ),
    with_temporary_password_validity_days(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"temporary_password_validity_days" expected to be of type "number"';
      {
        temporary_password_validity_days: converted,
      }
    ),
  },
  schema:: {
    local block = self,
    new(attribute_data_type, name):: (
      {}
      + block.with_attribute_data_type(attribute_data_type)
      + block.with_name(name)
    ),
    with_attribute_data_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"attribute_data_type" expected to be of type "string"';
      {
        attribute_data_type: converted,
      }
    ),
    with_developer_only_attribute(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"developer_only_attribute" expected to be of type "bool"';
      {
        developer_only_attribute: converted,
      }
    ),
    with_mutable(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"mutable" expected to be of type "bool"';
      {
        mutable: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_required(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
      {
        required: converted,
      }
    ),
    number_attribute_constraints:: {
      local block = self,
      new():: (
        {}
      ),
      with_max_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"max_value" expected to be of type "string"';
        {
          max_value: converted,
        }
      ),
      with_min_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"min_value" expected to be of type "string"';
        {
          min_value: converted,
        }
      ),
    },
    string_attribute_constraints:: {
      local block = self,
      new():: (
        {}
      ),
      with_max_length(value):: (
        local converted = value;
        assert std.isString(converted) : '"max_length" expected to be of type "string"';
        {
          max_length: converted,
        }
      ),
      with_min_length(value):: (
        local converted = value;
        assert std.isString(converted) : '"min_length" expected to be of type "string"';
        {
          min_length: converted,
        }
      ),
    },
    with_number_attribute_constraints(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        number_attribute_constraints: value,
      }
    ),
    with_string_attribute_constraints(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_attribute_constraints: value,
      }
    ),
    with_number_attribute_constraints_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        number_attribute_constraints+: converted,
      }
    ),
    with_string_attribute_constraints_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_attribute_constraints+: converted,
      }
    ),
  },
  sign_in_policy:: {
    local block = self,
    new():: (
      {}
    ),
    with_allowed_first_auth_factors(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_first_auth_factors" expected to be of type "set"';
      {
        allowed_first_auth_factors: converted,
      }
    ),
    with_allowed_first_auth_factors_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_first_auth_factors" expected to be of type "set"';
      {
        allowed_first_auth_factors+: converted,
      }
    ),
  },
  sms_configuration:: {
    local block = self,
    new(external_id, sns_caller_arn):: (
      {}
      + block.with_external_id(external_id)
      + block.with_sns_caller_arn(sns_caller_arn)
    ),
    with_external_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"external_id" expected to be of type "string"';
      {
        external_id: converted,
      }
    ),
    with_sns_caller_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"sns_caller_arn" expected to be of type "string"';
      {
        sns_caller_arn: converted,
      }
    ),
    with_sns_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"sns_region" expected to be of type "string"';
      {
        sns_region: converted,
      }
    ),
  },
  software_token_mfa_configuration:: {
    local block = self,
    new(enabled):: (
      {}
      + block.with_enabled(enabled)
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
  },
  user_attribute_update_settings:: {
    local block = self,
    new(attributes_require_verification_before_update):: (
      {}
      + block.with_attributes_require_verification_before_update(attributes_require_verification_before_update)
    ),
    with_attributes_require_verification_before_update(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"attributes_require_verification_before_update" expected to be of type "set"';
      {
        attributes_require_verification_before_update: converted,
      }
    ),
    with_attributes_require_verification_before_update_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"attributes_require_verification_before_update" expected to be of type "set"';
      {
        attributes_require_verification_before_update+: converted,
      }
    ),
  },
  user_pool_add_ons:: {
    local block = self,
    new(advanced_security_mode):: (
      {}
      + block.with_advanced_security_mode(advanced_security_mode)
    ),
    with_advanced_security_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"advanced_security_mode" expected to be of type "string"';
      {
        advanced_security_mode: converted,
      }
    ),
    advanced_security_additional_flows:: {
      local block = self,
      new():: (
        {}
      ),
      with_custom_auth_mode(value):: (
        local converted = value;
        assert std.isString(converted) : '"custom_auth_mode" expected to be of type "string"';
        {
          custom_auth_mode: converted,
        }
      ),
    },
    with_advanced_security_additional_flows(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        advanced_security_additional_flows: value,
      }
    ),
    with_advanced_security_additional_flows_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        advanced_security_additional_flows+: converted,
      }
    ),
  },
  username_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_case_sensitive(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"case_sensitive" expected to be of type "bool"';
      {
        case_sensitive: converted,
      }
    ),
  },
  verification_message_template:: {
    local block = self,
    new():: (
      {}
    ),
    with_default_email_option(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_email_option" expected to be of type "string"';
      {
        default_email_option: converted,
      }
    ),
    with_email_message(value):: (
      local converted = value;
      assert std.isString(converted) : '"email_message" expected to be of type "string"';
      {
        email_message: converted,
      }
    ),
    with_email_message_by_link(value):: (
      local converted = value;
      assert std.isString(converted) : '"email_message_by_link" expected to be of type "string"';
      {
        email_message_by_link: converted,
      }
    ),
    with_email_subject(value):: (
      local converted = value;
      assert std.isString(converted) : '"email_subject" expected to be of type "string"';
      {
        email_subject: converted,
      }
    ),
    with_email_subject_by_link(value):: (
      local converted = value;
      assert std.isString(converted) : '"email_subject_by_link" expected to be of type "string"';
      {
        email_subject_by_link: converted,
      }
    ),
    with_sms_message(value):: (
      local converted = value;
      assert std.isString(converted) : '"sms_message" expected to be of type "string"';
      {
        sms_message: converted,
      }
    ),
  },
  web_authn_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_relying_party_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"relying_party_id" expected to be of type "string"';
      {
        relying_party_id: converted,
      }
    ),
    with_user_verification(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_verification" expected to be of type "string"';
      {
        user_verification: converted,
      }
    ),
  },
  with_account_recovery_setting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      account_recovery_setting: value,
    }
  ),
  with_admin_create_user_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      admin_create_user_config: value,
    }
  ),
  with_device_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      device_configuration: value,
    }
  ),
  with_email_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      email_configuration: value,
    }
  ),
  with_email_mfa_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      email_mfa_configuration: value,
    }
  ),
  with_lambda_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_config: value,
    }
  ),
  with_password_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      password_policy: value,
    }
  ),
  with_schema(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schema: value,
    }
  ),
  with_sign_in_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sign_in_policy: value,
    }
  ),
  with_sms_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sms_configuration: value,
    }
  ),
  with_software_token_mfa_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      software_token_mfa_configuration: value,
    }
  ),
  with_user_attribute_update_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_attribute_update_settings: value,
    }
  ),
  with_user_pool_add_ons(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_pool_add_ons: value,
    }
  ),
  with_username_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      username_configuration: value,
    }
  ),
  with_verification_message_template(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      verification_message_template: value,
    }
  ),
  with_web_authn_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      web_authn_configuration: value,
    }
  ),
  with_account_recovery_setting_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      account_recovery_setting+: converted,
    }
  ),
  with_admin_create_user_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      admin_create_user_config+: converted,
    }
  ),
  with_device_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      device_configuration+: converted,
    }
  ),
  with_email_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      email_configuration+: converted,
    }
  ),
  with_email_mfa_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      email_mfa_configuration+: converted,
    }
  ),
  with_lambda_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_config+: converted,
    }
  ),
  with_password_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      password_policy+: converted,
    }
  ),
  with_schema_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schema+: converted,
    }
  ),
  with_sign_in_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sign_in_policy+: converted,
    }
  ),
  with_sms_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sms_configuration+: converted,
    }
  ),
  with_software_token_mfa_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      software_token_mfa_configuration+: converted,
    }
  ),
  with_user_attribute_update_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_attribute_update_settings+: converted,
    }
  ),
  with_user_pool_add_ons_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_pool_add_ons+: converted,
    }
  ),
  with_username_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      username_configuration+: converted,
    }
  ),
  with_verification_message_template_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      verification_message_template+: converted,
    }
  ),
  with_web_authn_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      web_authn_configuration+: converted,
    }
  ),
}
