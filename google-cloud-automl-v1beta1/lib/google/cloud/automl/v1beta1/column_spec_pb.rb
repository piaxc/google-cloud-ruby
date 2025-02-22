# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1beta1/column_spec.proto

require 'google/protobuf'

require 'google/api/resource_pb'
require 'google/cloud/automl/v1beta1/data_stats_pb'
require 'google/cloud/automl/v1beta1/data_types_pb'


descriptor_data = "\n-google/cloud/automl/v1beta1/column_spec.proto\x12\x1bgoogle.cloud.automl.v1beta1\x1a\x19google/api/resource.proto\x1a,google/cloud/automl/v1beta1/data_stats.proto\x1a,google/cloud/automl/v1beta1/data_types.proto\"\x9b\x04\n\nColumnSpec\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x38\n\tdata_type\x18\x02 \x01(\x0b\x32%.google.cloud.automl.v1beta1.DataType\x12\x14\n\x0c\x64isplay_name\x18\x03 \x01(\t\x12:\n\ndata_stats\x18\x04 \x01(\x0b\x32&.google.cloud.automl.v1beta1.DataStats\x12X\n\x16top_correlated_columns\x18\x05 \x03(\x0b\x32\x38.google.cloud.automl.v1beta1.ColumnSpec.CorrelatedColumn\x12\x0c\n\x04\x65tag\x18\x06 \x01(\t\x1at\n\x10\x43orrelatedColumn\x12\x16\n\x0e\x63olumn_spec_id\x18\x01 \x01(\t\x12H\n\x11\x63orrelation_stats\x18\x02 \x01(\x0b\x32-.google.cloud.automl.v1beta1.CorrelationStats:\x94\x01\xea\x41\x90\x01\n automl.googleapis.com/ColumnSpec\x12lprojects/{project}/locations/{location}/datasets/{dataset}/tableSpecs/{table_spec}/columnSpecs/{column_spec}B\x9b\x01\n\x1f\x63om.google.cloud.automl.v1beta1P\x01Z7cloud.google.com/go/automl/apiv1beta1/automlpb;automlpb\xca\x02\x1bGoogle\\Cloud\\AutoMl\\V1beta1\xea\x02\x1eGoogle::Cloud::AutoML::V1beta1b\x06proto3"

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
    ["google.cloud.automl.v1beta1.DataType", "google/cloud/automl/v1beta1/data_types.proto"],
    ["google.cloud.automl.v1beta1.DataStats", "google/cloud/automl/v1beta1/data_stats.proto"],
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
    module AutoML
      module V1beta1
        ColumnSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ColumnSpec").msgclass
        ColumnSpec::CorrelatedColumn = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ColumnSpec.CorrelatedColumn").msgclass
      end
    end
  end
end
