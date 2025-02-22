# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/datacatalog/v1/gcs_fileset_spec.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/cloud/datacatalog/v1/timestamps_pb'


descriptor_data = "\n2google/cloud/datacatalog/v1/gcs_fileset_spec.proto\x12\x1bgoogle.cloud.datacatalog.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a,google/cloud/datacatalog/v1/timestamps.proto\"z\n\x0eGcsFilesetSpec\x12\x1a\n\rfile_patterns\x18\x01 \x03(\tB\x03\xe0\x41\x02\x12L\n\x15sample_gcs_file_specs\x18\x02 \x03(\x0b\x32(.google.cloud.datacatalog.v1.GcsFileSpecB\x03\xe0\x41\x03\"\x8a\x01\n\x0bGcsFileSpec\x12\x16\n\tfile_path\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12J\n\x0egcs_timestamps\x18\x02 \x01(\x0b\x32-.google.cloud.datacatalog.v1.SystemTimestampsB\x03\xe0\x41\x03\x12\x17\n\nsize_bytes\x18\x04 \x01(\x03\x42\x03\xe0\x41\x03\x42\xc6\x01\n\x1f\x63om.google.cloud.datacatalog.v1P\x01ZAcloud.google.com/go/datacatalog/apiv1/datacatalogpb;datacatalogpb\xf8\x01\x01\xaa\x02\x1bGoogle.Cloud.DataCatalog.V1\xca\x02\x1bGoogle\\Cloud\\DataCatalog\\V1\xea\x02\x1eGoogle::Cloud::DataCatalog::V1b\x06proto3"

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
    ["google.cloud.datacatalog.v1.SystemTimestamps", "google/cloud/datacatalog/v1/timestamps.proto"],
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
    module DataCatalog
      module V1
        GcsFilesetSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.GcsFilesetSpec").msgclass
        GcsFileSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.GcsFileSpec").msgclass
      end
    end
  end
end
