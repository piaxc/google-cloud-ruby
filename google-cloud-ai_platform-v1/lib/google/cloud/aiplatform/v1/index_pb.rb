# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/index.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/deployed_index_ref_pb'
require 'google/cloud/aiplatform/v1/encryption_spec_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n&google/cloud/aiplatform/v1/index.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x33google/cloud/aiplatform/v1/deployed_index_ref.proto\x1a\x30google/cloud/aiplatform/v1/encryption_spec.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xec\x06\n\x05Index\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12 \n\x13metadata_schema_uri\x18\x04 \x01(\tB\x03\xe0\x41\x05\x12(\n\x08metadata\x18\x06 \x01(\x0b\x32\x16.google.protobuf.Value\x12K\n\x10\x64\x65ployed_indexes\x18\x07 \x03(\x0b\x32,.google.cloud.aiplatform.v1.DeployedIndexRefB\x03\xe0\x41\x03\x12\x0c\n\x04\x65tag\x18\x08 \x01(\t\x12=\n\x06labels\x18\t \x03(\x0b\x32-.google.cloud.aiplatform.v1.Index.LabelsEntry\x12\x34\n\x0b\x63reate_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x0b \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12@\n\x0bindex_stats\x18\x0e \x01(\x0b\x32&.google.cloud.aiplatform.v1.IndexStatsB\x03\xe0\x41\x03\x12U\n\x13index_update_method\x18\x10 \x01(\x0e\x32\x33.google.cloud.aiplatform.v1.Index.IndexUpdateMethodB\x03\xe0\x41\x05\x12H\n\x0f\x65ncryption_spec\x18\x11 \x01(\x0b\x32*.google.cloud.aiplatform.v1.EncryptionSpecB\x03\xe0\x41\x05\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"]\n\x11IndexUpdateMethod\x12#\n\x1fINDEX_UPDATE_METHOD_UNSPECIFIED\x10\x00\x12\x10\n\x0c\x42\x41TCH_UPDATE\x10\x01\x12\x11\n\rSTREAM_UPDATE\x10\x02:]\xea\x41Z\n\x1f\x61iplatform.googleapis.com/Index\x12\x37projects/{project}/locations/{location}/indexes/{index}\"\xf4\x05\n\x0eIndexDatapoint\x12\x19\n\x0c\x64\x61tapoint_id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x1b\n\x0e\x66\x65\x61ture_vector\x18\x02 \x03(\x02\x42\x03\xe0\x41\x02\x12N\n\trestricts\x18\x04 \x03(\x0b\x32\x36.google.cloud.aiplatform.v1.IndexDatapoint.RestrictionB\x03\xe0\x41\x01\x12]\n\x11numeric_restricts\x18\x06 \x03(\x0b\x32=.google.cloud.aiplatform.v1.IndexDatapoint.NumericRestrictionB\x03\xe0\x41\x01\x12Q\n\x0c\x63rowding_tag\x18\x05 \x01(\x0b\x32\x36.google.cloud.aiplatform.v1.IndexDatapoint.CrowdingTagB\x03\xe0\x41\x01\x1aG\n\x0bRestriction\x12\x11\n\tnamespace\x18\x01 \x01(\t\x12\x12\n\nallow_list\x18\x02 \x03(\t\x12\x11\n\tdeny_list\x18\x03 \x03(\t\x1a\xb3\x02\n\x12NumericRestriction\x12\x13\n\tvalue_int\x18\x02 \x01(\x03H\x00\x12\x15\n\x0bvalue_float\x18\x03 \x01(\x02H\x00\x12\x16\n\x0cvalue_double\x18\x04 \x01(\x01H\x00\x12\x11\n\tnamespace\x18\x01 \x01(\t\x12R\n\x02op\x18\x05 \x01(\x0e\x32\x46.google.cloud.aiplatform.v1.IndexDatapoint.NumericRestriction.Operator\"i\n\x08Operator\x12\x18\n\x14OPERATOR_UNSPECIFIED\x10\x00\x12\x08\n\x04LESS\x10\x01\x12\x0e\n\nLESS_EQUAL\x10\x02\x12\t\n\x05\x45QUAL\x10\x03\x12\x11\n\rGREATER_EQUAL\x10\x04\x12\x0b\n\x07GREATER\x10\x05\x42\x07\n\x05Value\x1a)\n\x0b\x43rowdingTag\x12\x1a\n\x12\x63rowding_attribute\x18\x01 \x01(\t\"C\n\nIndexStats\x12\x1a\n\rvectors_count\x18\x01 \x01(\x03\x42\x03\xe0\x41\x03\x12\x19\n\x0cshards_count\x18\x02 \x01(\x05\x42\x03\xe0\x41\x03\x42\xc8\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\nIndexProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

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
    ["google.protobuf.Value", "google/protobuf/struct.proto"],
    ["google.cloud.aiplatform.v1.DeployedIndexRef", "google/cloud/aiplatform/v1/deployed_index_ref.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.aiplatform.v1.EncryptionSpec", "google/cloud/aiplatform/v1/encryption_spec.proto"],
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
    module AIPlatform
      module V1
        Index = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Index").msgclass
        Index::IndexUpdateMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Index.IndexUpdateMethod").enummodule
        IndexDatapoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.IndexDatapoint").msgclass
        IndexDatapoint::Restriction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.IndexDatapoint.Restriction").msgclass
        IndexDatapoint::NumericRestriction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.IndexDatapoint.NumericRestriction").msgclass
        IndexDatapoint::NumericRestriction::Operator = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.IndexDatapoint.NumericRestriction.Operator").enummodule
        IndexDatapoint::CrowdingTag = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.IndexDatapoint.CrowdingTag").msgclass
        IndexStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.IndexStats").msgclass
      end
    end
  end
end
