# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/storage/v1/arrow.proto

require 'google/protobuf'


descriptor_data = "\n,google/cloud/bigquery/storage/v1/arrow.proto\x12 google.cloud.bigquery.storage.v1\"(\n\x0b\x41rrowSchema\x12\x19\n\x11serialized_schema\x18\x01 \x01(\x0c\"J\n\x10\x41rrowRecordBatch\x12\x1f\n\x17serialized_record_batch\x18\x01 \x01(\x0c\x12\x15\n\trow_count\x18\x02 \x01(\x03\x42\x02\x18\x01\"\xcf\x01\n\x19\x41rrowSerializationOptions\x12h\n\x12\x62uffer_compression\x18\x02 \x01(\x0e\x32L.google.cloud.bigquery.storage.v1.ArrowSerializationOptions.CompressionCodec\"H\n\x10\x43ompressionCodec\x12\x1b\n\x17\x43OMPRESSION_UNSPECIFIED\x10\x00\x12\r\n\tLZ4_FRAME\x10\x01\x12\x08\n\x04ZSTD\x10\x02\x42\xba\x01\n$com.google.cloud.bigquery.storage.v1B\nArrowProtoP\x01Z>cloud.google.com/go/bigquery/storage/apiv1/storagepb;storagepb\xaa\x02 Google.Cloud.BigQuery.Storage.V1\xca\x02 Google\\Cloud\\BigQuery\\Storage\\V1b\x06proto3"

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
          ArrowSchema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.ArrowSchema").msgclass
          ArrowRecordBatch = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.ArrowRecordBatch").msgclass
          ArrowSerializationOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.ArrowSerializationOptions").msgclass
          ArrowSerializationOptions::CompressionCodec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.ArrowSerializationOptions.CompressionCodec").enummodule
        end
      end
    end
  end
end
