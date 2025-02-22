# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/notebooks/v1/schedule.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/notebooks/v1/execution_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n(google/cloud/notebooks/v1/schedule.proto\x12\x19google.cloud.notebooks.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a)google/cloud/notebooks/v1/execution.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x8c\x05\n\x08Schedule\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12\x38\n\x05state\x18\x04 \x01(\x0e\x32).google.cloud.notebooks.v1.Schedule.State\x12\x15\n\rcron_schedule\x18\x05 \x01(\t\x12\x11\n\ttime_zone\x18\x06 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12H\n\x12\x65xecution_template\x18\t \x01(\x0b\x32,.google.cloud.notebooks.v1.ExecutionTemplate\x12\x44\n\x11recent_executions\x18\n \x03(\x0b\x32$.google.cloud.notebooks.v1.ExecutionB\x03\xe0\x41\x03\"x\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x45NABLED\x10\x01\x12\n\n\x06PAUSED\x10\x02\x12\x0c\n\x08\x44ISABLED\x10\x03\x12\x11\n\rUPDATE_FAILED\x10\x04\x12\x10\n\x0cINITIALIZING\x10\x05\x12\x0c\n\x08\x44\x45LETING\x10\x06:c\xea\x41`\n!notebooks.googleapis.com/Schedule\x12;projects/{project}/location/{location}/schedules/{schedule}Bm\n\x1d\x63om.google.cloud.notebooks.v1B\rScheduleProtoP\x01Z;cloud.google.com/go/notebooks/apiv1/notebookspb;notebookspbb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.notebooks.v1.ExecutionTemplate", "google/cloud/notebooks/v1/execution.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Notebooks
      module V1
        Schedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Schedule").msgclass
        Schedule::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Schedule.State").enummodule
      end
    end
  end
end
