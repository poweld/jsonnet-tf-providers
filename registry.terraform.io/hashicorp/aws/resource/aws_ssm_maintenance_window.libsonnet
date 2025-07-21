{
  local block = self,
  new(cutoff, duration, name, schedule):: (
    {}
    + block.with_cutoff(cutoff)
    + block.with_duration(duration)
    + block.with_name(name)
    + block.with_schedule(schedule)
  ),
  with_allow_unassociated_targets(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_unassociated_targets" expected to be of type "bool"';
    {
      allow_unassociated_targets: converted,
    }
  ),
  with_cutoff(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"cutoff" expected to be of type "number"';
    {
      cutoff: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_duration(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"duration" expected to be of type "number"';
    {
      duration: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_end_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_date" expected to be of type "string"';
    {
      end_date: converted,
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
  with_schedule(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule" expected to be of type "string"';
    {
      schedule: converted,
    }
  ),
  with_schedule_offset(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"schedule_offset" expected to be of type "number"';
    {
      schedule_offset: converted,
    }
  ),
  with_schedule_timezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule_timezone" expected to be of type "string"';
    {
      schedule_timezone: converted,
    }
  ),
  with_start_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_date" expected to be of type "string"';
    {
      start_date: converted,
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
}
