# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/metastore/v1beta/metastore_federation.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/metastore/v1beta/metastore_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n8google/cloud/metastore/v1beta/metastore_federation.proto\x12\x1dgoogle.cloud.metastore.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a-google/cloud/metastore/v1beta/metastore.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xbb\x06\n\nFederation\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x45\n\x06labels\x18\x04 \x03(\x0b\x32\x35.google.cloud.metastore.v1beta.Federation.LabelsEntry\x12\x14\n\x07version\x18\x05 \x01(\tB\x03\xe0\x41\x05\x12\\\n\x12\x62\x61\x63kend_metastores\x18\x06 \x03(\x0b\x32@.google.cloud.metastore.v1beta.Federation.BackendMetastoresEntry\x12\x19\n\x0c\x65ndpoint_uri\x18\x07 \x01(\tB\x03\xe0\x41\x03\x12\x43\n\x05state\x18\x08 \x01(\x0e\x32/.google.cloud.metastore.v1beta.Federation.StateB\x03\xe0\x41\x03\x12\x1a\n\rstate_message\x18\t \x01(\tB\x03\xe0\x41\x03\x12\x10\n\x03uid\x18\n \x01(\tB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1ai\n\x16\x42\x61\x63kendMetastoresEntry\x12\x0b\n\x03key\x18\x01 \x01(\x05\x12>\n\x05value\x18\x02 \x01(\x0b\x32/.google.cloud.metastore.v1beta.BackendMetastore:\x02\x38\x01\"_\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\n\n\x06\x41\x43TIVE\x10\x02\x12\x0c\n\x08UPDATING\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04\x12\t\n\x05\x45RROR\x10\x05:j\xea\x41g\n#metastore.googleapis.com/Federation\x12@projects/{project}/locations/{location}/federations/{federation}\"\xdc\x01\n\x10\x42\x61\x63kendMetastore\x12\x0c\n\x04name\x18\x01 \x01(\t\x12U\n\x0emetastore_type\x18\x02 \x01(\x0e\x32=.google.cloud.metastore.v1beta.BackendMetastore.MetastoreType\"c\n\rMetastoreType\x12\x1e\n\x1aMETASTORE_TYPE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x44\x41TAPLEX\x10\x01\x12\x0c\n\x08\x42IGQUERY\x10\x02\x12\x16\n\x12\x44\x41TAPROC_METASTORE\x10\x03\"\xb2\x01\n\x16ListFederationsRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#metastore.googleapis.com/Federation\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x87\x01\n\x17ListFederationsResponse\x12>\n\x0b\x66\x65\x64\x65rations\x18\x01 \x03(\x0b\x32).google.cloud.metastore.v1beta.Federation\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"Q\n\x14GetFederationRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#metastore.googleapis.com/Federation\"\xcf\x01\n\x17\x43reateFederationRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#metastore.googleapis.com/Federation\x12\x1a\n\rfederation_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x42\n\nfederation\x18\x03 \x01(\x0b\x32).google.cloud.metastore.v1beta.FederationB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"\xac\x01\n\x17UpdateFederationRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x42\n\nfederation\x18\x02 \x01(\x0b\x32).google.cloud.metastore.v1beta.FederationB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\"m\n\x17\x44\x65leteFederationRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#metastore.googleapis.com/Federation\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x32\x98\n\n\x1b\x44\x61taprocMetastoreFederation\x12\xc6\x01\n\x0fListFederations\x12\x35.google.cloud.metastore.v1beta.ListFederationsRequest\x1a\x36.google.cloud.metastore.v1beta.ListFederationsResponse\"D\x82\xd3\xe4\x93\x02\x35\x12\x33/v1beta/{parent=projects/*/locations/*}/federations\xda\x41\x06parent\x12\xb3\x01\n\rGetFederation\x12\x33.google.cloud.metastore.v1beta.GetFederationRequest\x1a).google.cloud.metastore.v1beta.Federation\"B\x82\xd3\xe4\x93\x02\x35\x12\x33/v1beta/{name=projects/*/locations/*/federations/*}\xda\x41\x04name\x12\x95\x02\n\x10\x43reateFederation\x12\x36.google.cloud.metastore.v1beta.CreateFederationRequest\x1a\x1d.google.longrunning.Operation\"\xa9\x01\x82\xd3\xe4\x93\x02\x41\"3/v1beta/{parent=projects/*/locations/*}/federations:\nfederation\xda\x41\x1fparent,federation,federation_id\xca\x41=\n\nFederation\x12/google.cloud.metastore.v1beta.OperationMetadata\x12\x97\x02\n\x10UpdateFederation\x12\x36.google.cloud.metastore.v1beta.UpdateFederationRequest\x1a\x1d.google.longrunning.Operation\"\xab\x01\x82\xd3\xe4\x93\x02L2>/v1beta/{federation.name=projects/*/locations/*/federations/*}:\nfederation\xda\x41\x16\x66\x65\x64\x65ration,update_mask\xca\x41=\n\nFederation\x12/google.cloud.metastore.v1beta.OperationMetadata\x12\xf9\x01\n\x10\x44\x65leteFederation\x12\x36.google.cloud.metastore.v1beta.DeleteFederationRequest\x1a\x1d.google.longrunning.Operation\"\x8d\x01\x82\xd3\xe4\x93\x02\x35*3/v1beta/{name=projects/*/locations/*/federations/*}\xda\x41\x04name\xca\x41H\n\x15google.protobuf.Empty\x12/google.cloud.metastore.v1beta.OperationMetadata\x1aL\xca\x41\x18metastore.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x80\x01\n!com.google.cloud.metastore.v1betaB\x18MetastoreFederationProtoP\x01Z?cloud.google.com/go/metastore/apiv1beta/metastorepb;metastorepbb\x06proto3"

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
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module Metastore
      module V1beta
        Federation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Federation").msgclass
        Federation::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Federation.State").enummodule
        BackendMetastore = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.BackendMetastore").msgclass
        BackendMetastore::MetastoreType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.BackendMetastore.MetastoreType").enummodule
        ListFederationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ListFederationsRequest").msgclass
        ListFederationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ListFederationsResponse").msgclass
        GetFederationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.GetFederationRequest").msgclass
        CreateFederationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.CreateFederationRequest").msgclass
        UpdateFederationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.UpdateFederationRequest").msgclass
        DeleteFederationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.DeleteFederationRequest").msgclass
      end
    end
  end
end
