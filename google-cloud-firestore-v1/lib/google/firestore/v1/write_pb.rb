# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/firestore/v1/write.proto

require 'google/protobuf'

require 'google/firestore/v1/bloom_filter_pb'
require 'google/firestore/v1/common_pb'
require 'google/firestore/v1/document_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n\x1fgoogle/firestore/v1/write.proto\x12\x13google.firestore.v1\x1a&google/firestore/v1/bloom_filter.proto\x1a google/firestore/v1/common.proto\x1a\"google/firestore/v1/document.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xdb\x02\n\x05Write\x12/\n\x06update\x18\x01 \x01(\x0b\x32\x1d.google.firestore.v1.DocumentH\x00\x12\x10\n\x06\x64\x65lete\x18\x02 \x01(\tH\x00\x12;\n\ttransform\x18\x06 \x01(\x0b\x32&.google.firestore.v1.DocumentTransformH\x00\x12\x36\n\x0bupdate_mask\x18\x03 \x01(\x0b\x32!.google.firestore.v1.DocumentMask\x12P\n\x11update_transforms\x18\x07 \x03(\x0b\x32\x35.google.firestore.v1.DocumentTransform.FieldTransform\x12;\n\x10\x63urrent_document\x18\x04 \x01(\x0b\x32!.google.firestore.v1.PreconditionB\x0b\n\toperation\"\xe5\x04\n\x11\x44ocumentTransform\x12\x10\n\x08\x64ocument\x18\x01 \x01(\t\x12O\n\x10\x66ield_transforms\x18\x02 \x03(\x0b\x32\x35.google.firestore.v1.DocumentTransform.FieldTransform\x1a\xec\x03\n\x0e\x46ieldTransform\x12\x12\n\nfield_path\x18\x01 \x01(\t\x12`\n\x13set_to_server_value\x18\x02 \x01(\x0e\x32\x41.google.firestore.v1.DocumentTransform.FieldTransform.ServerValueH\x00\x12/\n\tincrement\x18\x03 \x01(\x0b\x32\x1a.google.firestore.v1.ValueH\x00\x12-\n\x07maximum\x18\x04 \x01(\x0b\x32\x1a.google.firestore.v1.ValueH\x00\x12-\n\x07minimum\x18\x05 \x01(\x0b\x32\x1a.google.firestore.v1.ValueH\x00\x12\x42\n\x17\x61ppend_missing_elements\x18\x06 \x01(\x0b\x32\x1f.google.firestore.v1.ArrayValueH\x00\x12@\n\x15remove_all_from_array\x18\x07 \x01(\x0b\x32\x1f.google.firestore.v1.ArrayValueH\x00\"=\n\x0bServerValue\x12\x1c\n\x18SERVER_VALUE_UNSPECIFIED\x10\x00\x12\x10\n\x0cREQUEST_TIME\x10\x01\x42\x10\n\x0etransform_type\"u\n\x0bWriteResult\x12/\n\x0bupdate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x35\n\x11transform_results\x18\x02 \x03(\x0b\x32\x1a.google.firestore.v1.Value\"q\n\x0e\x44ocumentChange\x12/\n\x08\x64ocument\x18\x01 \x01(\x0b\x32\x1d.google.firestore.v1.Document\x12\x12\n\ntarget_ids\x18\x05 \x03(\x05\x12\x1a\n\x12removed_target_ids\x18\x06 \x03(\x05\"m\n\x0e\x44ocumentDelete\x12\x10\n\x08\x64ocument\x18\x01 \x01(\t\x12\x1a\n\x12removed_target_ids\x18\x06 \x03(\x05\x12-\n\tread_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"m\n\x0e\x44ocumentRemove\x12\x10\n\x08\x64ocument\x18\x01 \x01(\t\x12\x1a\n\x12removed_target_ids\x18\x02 \x03(\x05\x12-\n\tread_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"n\n\x0f\x45xistenceFilter\x12\x11\n\ttarget_id\x18\x01 \x01(\x05\x12\r\n\x05\x63ount\x18\x02 \x01(\x05\x12\x39\n\x0funchanged_names\x18\x03 \x01(\x0b\x32 .google.firestore.v1.BloomFilterB\xc2\x01\n\x17\x63om.google.firestore.v1B\nWriteProtoP\x01Z;cloud.google.com/go/firestore/apiv1/firestorepb;firestorepb\xa2\x02\x04GCFS\xaa\x02\x19Google.Cloud.Firestore.V1\xca\x02\x19Google\\Cloud\\Firestore\\V1\xea\x02\x1cGoogle::Cloud::Firestore::V1b\x06proto3"

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
    ["google.firestore.v1.Document", "google/firestore/v1/document.proto"],
    ["google.firestore.v1.DocumentMask", "google/firestore/v1/common.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.firestore.v1.BloomFilter", "google/firestore/v1/bloom_filter.proto"],
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
    module Firestore
      module V1
        Write = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.Write").msgclass
        DocumentTransform = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.DocumentTransform").msgclass
        DocumentTransform::FieldTransform = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.DocumentTransform.FieldTransform").msgclass
        DocumentTransform::FieldTransform::ServerValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.DocumentTransform.FieldTransform.ServerValue").enummodule
        WriteResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.WriteResult").msgclass
        DocumentChange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.DocumentChange").msgclass
        DocumentDelete = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.DocumentDelete").msgclass
        DocumentRemove = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.DocumentRemove").msgclass
        ExistenceFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.ExistenceFilter").msgclass
      end
    end
  end
end
