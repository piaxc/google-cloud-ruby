# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataplex/v1/security.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'


descriptor_data = "\n\'google/cloud/dataplex/v1/security.proto\x12\x18google.cloud.dataplex.v1\x1a\x1fgoogle/api/field_behavior.proto\"U\n\x12ResourceAccessSpec\x12\x14\n\x07readers\x18\x01 \x03(\tB\x03\xe0\x41\x01\x12\x14\n\x07writers\x18\x02 \x03(\tB\x03\xe0\x41\x01\x12\x13\n\x06owners\x18\x03 \x03(\tB\x03\xe0\x41\x01\"&\n\x0e\x44\x61taAccessSpec\x12\x14\n\x07readers\x18\x01 \x03(\tB\x03\xe0\x41\x01\x42i\n\x1c\x63om.google.cloud.dataplex.v1B\rSecurityProtoP\x01Z8cloud.google.com/go/dataplex/apiv1/dataplexpb;dataplexpbb\x06proto3"

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
    module Dataplex
      module V1
        ResourceAccessSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ResourceAccessSpec").msgclass
        DataAccessSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataAccessSpec").msgclass
      end
    end
  end
end
