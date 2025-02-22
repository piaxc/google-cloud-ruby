# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/notebooks/v2/event.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n%google/cloud/notebooks/v2/event.proto\x12\x19google.cloud.notebooks.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xe5\x02\n\x05\x45vent\x12\x34\n\x0breport_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x01\x12=\n\x04type\x18\x02 \x01(\x0e\x32*.google.cloud.notebooks.v2.Event.EventTypeB\x03\xe0\x41\x01\x12\x43\n\x07\x64\x65tails\x18\x03 \x03(\x0b\x32-.google.cloud.notebooks.v2.Event.DetailsEntryB\x03\xe0\x41\x01\x1a.\n\x0c\x44\x65tailsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"r\n\tEventType\x12\x1a\n\x16\x45VENT_TYPE_UNSPECIFIED\x10\x00\x12\x08\n\x04IDLE\x10\x01\x12\r\n\tHEARTBEAT\x10\x02\x12\n\n\x06HEALTH\x10\x03\x12\x0f\n\x0bMAINTENANCE\x10\x04\x12\x13\n\x0fMETADATA_CHANGE\x10\x05\x42\xc1\x01\n\x1d\x63om.google.cloud.notebooks.v2B\nEventProtoP\x01Z;cloud.google.com/go/notebooks/apiv2/notebookspb;notebookspb\xaa\x02\x19Google.Cloud.Notebooks.V2\xca\x02\x19Google\\Cloud\\Notebooks\\V2\xea\x02\x1cGoogle::Cloud::Notebooks::V2b\x06proto3"

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
      module V2
        Event = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.Event").msgclass
        Event::EventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.Event.EventType").enummodule
      end
    end
  end
end
