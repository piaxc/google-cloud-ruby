# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/notebooks/v2/instance.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/notebooks/v2/gce_setup_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n(google/cloud/notebooks/v2/instance.proto\x12\x19google.cloud.notebooks.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a)google/cloud/notebooks/v2/gce_setup.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xfd\x03\n\x13UpgradeHistoryEntry\x12\x15\n\x08snapshot\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08vm_image\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x1c\n\x0f\x63ontainer_image\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x16\n\tframework\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x14\n\x07version\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12H\n\x05state\x18\x06 \x01(\x0e\x32\x34.google.cloud.notebooks.v2.UpgradeHistoryEntry.StateB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x05\x12J\n\x06\x61\x63tion\x18\x08 \x01(\x0e\x32\x35.google.cloud.notebooks.v2.UpgradeHistoryEntry.ActionB\x03\xe0\x41\x01\x12\x1b\n\x0etarget_version\x18\t \x01(\tB\x03\xe0\x41\x01\"F\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07STARTED\x10\x01\x12\r\n\tSUCCEEDED\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03\";\n\x06\x41\x63tion\x12\x16\n\x12\x41\x43TION_UNSPECIFIED\x10\x00\x12\x0b\n\x07UPGRADE\x10\x01\x12\x0c\n\x08ROLLBACK\x10\x02\"\x96\x07\n\x08Instance\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12=\n\tgce_setup\x18\x02 \x01(\x0b\x32#.google.cloud.notebooks.v2.GceSetupB\x03\xe0\x41\x01H\x00\x12\x16\n\tproxy_uri\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x1f\n\x0finstance_owners\x18\x04 \x03(\tB\x06\xe0\x41\x04\xe0\x41\x01\x12\x14\n\x07\x63reator\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x05state\x18\x06 \x01(\x0e\x32 .google.cloud.notebooks.v2.StateB\x03\xe0\x41\x03\x12L\n\x0fupgrade_history\x18\x07 \x03(\x0b\x32..google.cloud.notebooks.v2.UpgradeHistoryEntryB\x03\xe0\x41\x03\x12\x0f\n\x02id\x18\x08 \x01(\tB\x03\xe0\x41\x03\x12\x41\n\x0chealth_state\x18\t \x01(\x0e\x32&.google.cloud.notebooks.v2.HealthStateB\x03\xe0\x41\x03\x12M\n\x0bhealth_info\x18\n \x03(\x0b\x32\x33.google.cloud.notebooks.v2.Instance.HealthInfoEntryB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x0b \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x0c \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12!\n\x14\x64isable_proxy_access\x18\r \x01(\x08\x42\x03\xe0\x41\x01\x12\x44\n\x06labels\x18\x0e \x03(\x0b\x32/.google.cloud.notebooks.v2.Instance.LabelsEntryB\x03\xe0\x41\x01\x1a\x31\n\x0fHealthInfoEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:y\xea\x41v\n!notebooks.googleapis.com/Instance\x12<projects/{project}/locations/{location}/instances/{instance}*\tinstances2\x08instanceB\x10\n\x0einfrastructure*\xb2\x01\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08STARTING\x10\x01\x12\x10\n\x0cPROVISIONING\x10\x02\x12\n\n\x06\x41\x43TIVE\x10\x03\x12\x0c\n\x08STOPPING\x10\x04\x12\x0b\n\x07STOPPED\x10\x05\x12\x0b\n\x07\x44\x45LETED\x10\x06\x12\r\n\tUPGRADING\x10\x07\x12\x10\n\x0cINITIALIZING\x10\x08\x12\x0e\n\nSUSPENDING\x10\t\x12\r\n\tSUSPENDED\x10\n*w\n\x0bHealthState\x12\x1c\n\x18HEALTH_STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07HEALTHY\x10\x01\x12\r\n\tUNHEALTHY\x10\x02\x12\x17\n\x13\x41GENT_NOT_INSTALLED\x10\x03\x12\x15\n\x11\x41GENT_NOT_RUNNING\x10\x04\x42\xc4\x01\n\x1d\x63om.google.cloud.notebooks.v2B\rInstanceProtoP\x01Z;cloud.google.com/go/notebooks/apiv2/notebookspb;notebookspb\xaa\x02\x19Google.Cloud.Notebooks.V2\xca\x02\x19Google\\Cloud\\Notebooks\\V2\xea\x02\x1cGoogle::Cloud::Notebooks::V2b\x06proto3"

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
    ["google.cloud.notebooks.v2.GceSetup", "google/cloud/notebooks/v2/gce_setup.proto"],
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
        UpgradeHistoryEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.UpgradeHistoryEntry").msgclass
        UpgradeHistoryEntry::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.UpgradeHistoryEntry.State").enummodule
        UpgradeHistoryEntry::Action = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.UpgradeHistoryEntry.Action").enummodule
        Instance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.Instance").msgclass
        State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.State").enummodule
        HealthState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.HealthState").enummodule
      end
    end
  end
end
