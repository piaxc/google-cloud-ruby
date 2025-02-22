# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/iam/v2/policy.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/iam/v2/deny_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n\x1agoogle/iam/v2/policy.proto\x12\rgoogle.iam.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x18google/iam/v2/deny.proto\x1a#google/longrunning/operations.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xc2\x03\n\x06Policy\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x10\n\x03uid\x18\x02 \x01(\tB\x03\xe0\x41\x05\x12\x11\n\x04kind\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x0c\x64isplay_name\x18\x04 \x01(\t\x12;\n\x0b\x61nnotations\x18\x05 \x03(\x0b\x32&.google.iam.v2.Policy.AnnotationsEntry\x12\x0c\n\x04\x65tag\x18\x06 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x64\x65lete_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12(\n\x05rules\x18\n \x03(\x0b\x32\x19.google.iam.v2.PolicyRule\x12\x1f\n\x12managing_authority\x18\x0b \x01(\tB\x03\xe0\x41\x05\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"W\n\nPolicyRule\x12,\n\tdeny_rule\x18\x02 \x01(\x0b\x32\x17.google.iam.v2.DenyRuleH\x00\x12\x13\n\x0b\x64\x65scription\x18\x01 \x01(\tB\x06\n\x04kind\"Q\n\x13ListPoliciesRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"X\n\x14ListPoliciesResponse\x12\'\n\x08policies\x18\x01 \x03(\x0b\x32\x15.google.iam.v2.Policy\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"%\n\x10GetPolicyRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\"i\n\x13\x43reatePolicyRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12*\n\x06policy\x18\x02 \x01(\x0b\x32\x15.google.iam.v2.PolicyB\x03\xe0\x41\x02\x12\x11\n\tpolicy_id\x18\x03 \x01(\t\"A\n\x13UpdatePolicyRequest\x12*\n\x06policy\x18\x01 \x01(\x0b\x32\x15.google.iam.v2.PolicyB\x03\xe0\x41\x02\";\n\x13\x44\x65letePolicyRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x11\n\x04\x65tag\x18\x02 \x01(\tB\x03\xe0\x41\x01\"J\n\x17PolicyOperationMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp2\xd0\x06\n\x08Policies\x12\x83\x01\n\x0cListPolicies\x12\".google.iam.v2.ListPoliciesRequest\x1a#.google.iam.v2.ListPoliciesResponse\"*\x82\xd3\xe4\x93\x02\x1b\x12\x19/v2/{parent=policies/*/*}\xda\x41\x06parent\x12m\n\tGetPolicy\x12\x1f.google.iam.v2.GetPolicyRequest\x1a\x15.google.iam.v2.Policy\"(\x82\xd3\xe4\x93\x02\x1b\x12\x19/v2/{name=policies/*/*/*}\xda\x41\x04name\x12\xba\x01\n\x0c\x43reatePolicy\x12\".google.iam.v2.CreatePolicyRequest\x1a\x1d.google.longrunning.Operation\"g\x82\xd3\xe4\x93\x02#\"\x19/v2/{parent=policies/*/*}:\x06policy\xda\x41\x17parent,policy,policy_id\xca\x41!\n\x06Policy\x12\x17PolicyOperationMetadata\x12\xa7\x01\n\x0cUpdatePolicy\x12\".google.iam.v2.UpdatePolicyRequest\x1a\x1d.google.longrunning.Operation\"T\x82\xd3\xe4\x93\x02*\x1a /v2/{policy.name=policies/*/*/*}:\x06policy\xca\x41!\n\x06Policy\x12\x17PolicyOperationMetadata\x12\x9f\x01\n\x0c\x44\x65letePolicy\x12\".google.iam.v2.DeletePolicyRequest\x1a\x1d.google.longrunning.Operation\"L\x82\xd3\xe4\x93\x02\x1b*\x19/v2/{name=policies/*/*/*}\xda\x41\x04name\xca\x41!\n\x06Policy\x12\x17PolicyOperationMetadata\x1a\x46\xca\x41\x12iam.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformBy\n\x11\x63om.google.iam.v2B\x0bPolicyProtoP\x01Z)cloud.google.com/go/iam/apiv2/iampb;iampb\xaa\x02\x13Google.Cloud.Iam.V2\xca\x02\x13Google\\Cloud\\Iam\\V2b\x06proto3"

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
    ["google.iam.v2.DenyRule", "google/iam/v2/deny.proto"],
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
  module Iam
    module V2
      Policy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.Policy").msgclass
      PolicyRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.PolicyRule").msgclass
      ListPoliciesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.ListPoliciesRequest").msgclass
      ListPoliciesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.ListPoliciesResponse").msgclass
      GetPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.GetPolicyRequest").msgclass
      CreatePolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.CreatePolicyRequest").msgclass
      UpdatePolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.UpdatePolicyRequest").msgclass
      DeletePolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.DeletePolicyRequest").msgclass
      PolicyOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.PolicyOperationMetadata").msgclass
    end
  end
end
