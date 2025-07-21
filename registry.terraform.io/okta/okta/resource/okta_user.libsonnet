{
  local block = self,
  new(email, first_name, last_name, login):: (
    {}
    + block.with_email(email)
    + block.with_first_name(first_name)
    + block.with_last_name(last_name)
    + block.with_login(login)
  ),
  '#with_city':: 'User city',
  with_city(value):: (
    local converted = value;
    assert std.isString(converted) : '"city" expected to be of type "string"';
    {
      city: converted,
    }
  ),
  '#with_cost_center':: 'User cost center',
  with_cost_center(value):: (
    local converted = value;
    assert std.isString(converted) : '"cost_center" expected to be of type "string"';
    {
      cost_center: converted,
    }
  ),
  '#with_country_code':: 'User country code',
  with_country_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"country_code" expected to be of type "string"';
    {
      country_code: converted,
    }
  ),
  '#with_custom_profile_attributes':: 'JSON formatted custom attributes for a user. It must be JSON due to various types Okta allows.',
  with_custom_profile_attributes(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_profile_attributes" expected to be of type "string"';
    {
      custom_profile_attributes: converted,
    }
  ),
  '#with_custom_profile_attributes_to_ignore':: 'List of custom_profile_attribute keys that should be excluded from being managed by Terraform. This is useful in situations where specific custom fields may contain sensitive information and should be managed outside of Terraform.',
  with_custom_profile_attributes_to_ignore(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"custom_profile_attributes_to_ignore" expected to be of type "set"';
    {
      custom_profile_attributes_to_ignore: converted,
    }
  ),
  '#with_custom_profile_attributes_to_ignore_mixin':: 'List of custom_profile_attribute keys that should be excluded from being managed by Terraform. This is useful in situations where specific custom fields may contain sensitive information and should be managed outside of Terraform.',
  with_custom_profile_attributes_to_ignore_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"custom_profile_attributes_to_ignore" expected to be of type "set"';
    {
      custom_profile_attributes_to_ignore+: converted,
    }
  ),
  '#with_department':: 'User department',
  with_department(value):: (
    local converted = value;
    assert std.isString(converted) : '"department" expected to be of type "string"';
    {
      department: converted,
    }
  ),
  '#with_display_name':: 'User display name, suitable to show end users',
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  '#with_division':: 'User division',
  with_division(value):: (
    local converted = value;
    assert std.isString(converted) : '"division" expected to be of type "string"';
    {
      division: converted,
    }
  ),
  '#with_email':: 'User primary email address',
  with_email(value):: (
    local converted = value;
    assert std.isString(converted) : '"email" expected to be of type "string"';
    {
      email: converted,
    }
  ),
  '#with_employee_number':: 'User employee number',
  with_employee_number(value):: (
    local converted = value;
    assert std.isString(converted) : '"employee_number" expected to be of type "string"';
    {
      employee_number: converted,
    }
  ),
  '#with_expire_password_on_create':: 'If set to `true`, the user will have to change the password at the next login. This property will be used when user is being created and works only when `password` field is set. Default: `false`',
  with_expire_password_on_create(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"expire_password_on_create" expected to be of type "bool"';
    {
      expire_password_on_create: converted,
    }
  ),
  '#with_first_name':: 'User first name',
  with_first_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"first_name" expected to be of type "string"';
    {
      first_name: converted,
    }
  ),
  '#with_honorific_prefix':: 'User honorific prefix',
  with_honorific_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"honorific_prefix" expected to be of type "string"';
    {
      honorific_prefix: converted,
    }
  ),
  '#with_honorific_suffix':: 'User honorific suffix',
  with_honorific_suffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"honorific_suffix" expected to be of type "string"';
    {
      honorific_suffix: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_last_name':: 'User last name',
  with_last_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_name" expected to be of type "string"';
    {
      last_name: converted,
    }
  ),
  '#with_locale':: 'User default location',
  with_locale(value):: (
    local converted = value;
    assert std.isString(converted) : '"locale" expected to be of type "string"';
    {
      locale: converted,
    }
  ),
  '#with_login':: 'User Okta login',
  with_login(value):: (
    local converted = value;
    assert std.isString(converted) : '"login" expected to be of type "string"';
    {
      login: converted,
    }
  ),
  '#with_manager':: 'Manager of User',
  with_manager(value):: (
    local converted = value;
    assert std.isString(converted) : '"manager" expected to be of type "string"';
    {
      manager: converted,
    }
  ),
  '#with_manager_id':: 'Manager ID of User',
  with_manager_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"manager_id" expected to be of type "string"';
    {
      manager_id: converted,
    }
  ),
  '#with_middle_name':: 'User middle name',
  with_middle_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"middle_name" expected to be of type "string"';
    {
      middle_name: converted,
    }
  ),
  '#with_mobile_phone':: 'User mobile phone number',
  with_mobile_phone(value):: (
    local converted = value;
    assert std.isString(converted) : '"mobile_phone" expected to be of type "string"';
    {
      mobile_phone: converted,
    }
  ),
  '#with_nick_name':: 'User nickname',
  with_nick_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"nick_name" expected to be of type "string"';
    {
      nick_name: converted,
    }
  ),
  '#with_old_password':: 'Old User Password. Should be only set in case the password was not changed using the provider. fter successful password change this field should be removed and `password` field should be used for further changes.',
  with_old_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"old_password" expected to be of type "string"';
    {
      old_password: converted,
    }
  ),
  '#with_organization':: 'User organization',
  with_organization(value):: (
    local converted = value;
    assert std.isString(converted) : '"organization" expected to be of type "string"';
    {
      organization: converted,
    }
  ),
  '#with_password':: 'User Password',
  with_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
    }
  ),
  '#with_password_inline_hook':: "Specifies that a Password Import Inline Hook should be triggered to handle verification of the user's password the first time the user logs in. This allows an existing password to be imported into Okta directly from some other store. When updating a user with a password hook the user must be in the `STAGED` status. The `password` field should not be specified when using Password Import Inline Hook.",
  with_password_inline_hook(value):: (
    local converted = value;
    assert std.isString(converted) : '"password_inline_hook" expected to be of type "string"';
    {
      password_inline_hook: converted,
    }
  ),
  '#with_postal_address':: 'User mailing address',
  with_postal_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"postal_address" expected to be of type "string"';
    {
      postal_address: converted,
    }
  ),
  '#with_preferred_language':: 'User preferred language',
  with_preferred_language(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_language" expected to be of type "string"';
    {
      preferred_language: converted,
    }
  ),
  '#with_primary_phone':: 'User primary phone number',
  with_primary_phone(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_phone" expected to be of type "string"';
    {
      primary_phone: converted,
    }
  ),
  '#with_profile_url':: 'User online profile (web page)',
  with_profile_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_url" expected to be of type "string"';
    {
      profile_url: converted,
    }
  ),
  '#with_raw_status':: 'The raw status of the User in Okta - (status is mapped)',
  with_raw_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"raw_status" expected to be of type "string"';
    {
      raw_status: converted,
    }
  ),
  '#with_recovery_answer':: 'User Password Recovery Answer',
  with_recovery_answer(value):: (
    local converted = value;
    assert std.isString(converted) : '"recovery_answer" expected to be of type "string"';
    {
      recovery_answer: converted,
    }
  ),
  '#with_recovery_question':: 'User Password Recovery Question',
  with_recovery_question(value):: (
    local converted = value;
    assert std.isString(converted) : '"recovery_question" expected to be of type "string"';
    {
      recovery_question: converted,
    }
  ),
  '#with_second_email':: 'User secondary email address, used for account recovery',
  with_second_email(value):: (
    local converted = value;
    assert std.isString(converted) : '"second_email" expected to be of type "string"';
    {
      second_email: converted,
    }
  ),
  '#with_skip_roles':: 'Do not populate user roles information (prevents additional API call)',
  with_skip_roles(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_roles" expected to be of type "bool"';
    {
      skip_roles: converted,
    }
  ),
  '#with_state':: 'User state or region',
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  '#with_status':: 'User profile property. Valid values are `ACTIVE`, `DEPROVISIONED`, `STAGED`, `SUSPENDED`. Default: `ACTIVE`',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_street_address':: 'User street address',
  with_street_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"street_address" expected to be of type "string"';
    {
      street_address: converted,
    }
  ),
  '#with_timezone':: 'User default timezone',
  with_timezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"timezone" expected to be of type "string"';
    {
      timezone: converted,
    }
  ),
  '#with_title':: 'User title',
  with_title(value):: (
    local converted = value;
    assert std.isString(converted) : '"title" expected to be of type "string"';
    {
      title: converted,
    }
  ),
  '#with_user_type':: 'User employee type',
  with_user_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_type" expected to be of type "string"';
    {
      user_type: converted,
    }
  ),
  '#with_zip_code':: 'User zipcode or postal code',
  with_zip_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"zip_code" expected to be of type "string"';
    {
      zip_code: converted,
    }
  ),
  password_hash:: {
    local block = self,
    new(algorithm, value):: (
      {}
      + block.with_algorithm(algorithm)
      + block.with_value(value)
    ),
    '#with_algorithm':: 'The algorithm used to generate the hash using the password',
    with_algorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"algorithm" expected to be of type "string"';
      {
        algorithm: converted,
      }
    ),
    '#with_salt':: 'Only required for salted hashes',
    with_salt(value):: (
      local converted = value;
      assert std.isString(converted) : '"salt" expected to be of type "string"';
      {
        salt: converted,
      }
    ),
    '#with_salt_order':: 'Specifies whether salt was pre- or postfixed to the password before hashing',
    with_salt_order(value):: (
      local converted = value;
      assert std.isString(converted) : '"salt_order" expected to be of type "string"';
      {
        salt_order: converted,
      }
    ),
    '#with_value':: "For SHA-512, SHA-256, SHA-1, MD5, This is the actual base64-encoded hash of the password (and salt, if used). This is the Base64 encoded value of the SHA-512/SHA-256/SHA-1/MD5 digest that was computed by either pre-fixing or post-fixing the salt to the password, depending on the saltOrder. If a salt was not used in the source system, then this should just be the the Base64 encoded value of the password's SHA-512/SHA-256/SHA-1/MD5 digest. For BCRYPT, This is the actual radix64-encoded hashed password.",
    with_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
    '#with_work_factor':: 'Governs the strength of the hash and the time required to compute it. Only required for BCRYPT algorithm',
    with_work_factor(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"work_factor" expected to be of type "number"';
      {
        work_factor: converted,
      }
    ),
  },
  with_password_hash(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      password_hash: value,
    }
  ),
  with_password_hash_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      password_hash+: converted,
    }
  ),
}
