# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/firestore/v1/bloom_filter.proto

require 'google/protobuf'


descriptor_data = "\n&google/firestore/v1/bloom_filter.proto\x12\x13google.firestore.v1\".\n\x0b\x42itSequence\x12\x0e\n\x06\x62itmap\x18\x01 \x01(\x0c\x12\x0f\n\x07padding\x18\x02 \x01(\x05\"Q\n\x0b\x42loomFilter\x12.\n\x04\x62its\x18\x01 \x01(\x0b\x32 .google.firestore.v1.BitSequence\x12\x12\n\nhash_count\x18\x02 \x01(\x05\x42\xc8\x01\n\x17\x63om.google.firestore.v1B\x10\x42loomFilterProtoP\x01Z;cloud.google.com/go/firestore/apiv1/firestorepb;firestorepb\xa2\x02\x04GCFS\xaa\x02\x19Google.Cloud.Firestore.V1\xca\x02\x19Google\\Cloud\\Firestore\\V1\xea\x02\x1cGoogle::Cloud::Firestore::V1b\x06proto3"

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
    module Firestore
      module V1
        BitSequence = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.BitSequence").msgclass
        BloomFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.BloomFilter").msgclass
      end
    end
  end
end
