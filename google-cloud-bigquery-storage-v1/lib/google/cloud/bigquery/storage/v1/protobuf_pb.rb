# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/storage/v1/protobuf.proto

require 'google/protobuf'

require 'google/protobuf/descriptor_pb'


descriptor_data = "\n/google/cloud/bigquery/storage/v1/protobuf.proto\x12 google.cloud.bigquery.storage.v1\x1a google/protobuf/descriptor.proto\"I\n\x0bProtoSchema\x12:\n\x10proto_descriptor\x18\x01 \x01(\x0b\x32 .google.protobuf.DescriptorProto\"$\n\tProtoRows\x12\x17\n\x0fserialized_rows\x18\x01 \x03(\x0c\x42\xbd\x01\n$com.google.cloud.bigquery.storage.v1B\rProtoBufProtoP\x01Z>cloud.google.com/go/bigquery/storage/apiv1/storagepb;storagepb\xaa\x02 Google.Cloud.BigQuery.Storage.V1\xca\x02 Google\\Cloud\\BigQuery\\Storage\\V1b\x06proto3"

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
    ["google.protobuf.DescriptorProto", "google/protobuf/descriptor.proto"],
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
    module Bigquery
      module Storage
        module V1
          ProtoSchema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.ProtoSchema").msgclass
          ProtoRows = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.ProtoRows").msgclass
        end
      end
    end
  end
end
