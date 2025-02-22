# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/policytroubleshooter/v1/explanations.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/iam/v1/policy_pb'
require 'google/type/expr_pb'


descriptor_data = "\n7google/cloud/policytroubleshooter/v1/explanations.proto\x12$google.cloud.policytroubleshooter.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1agoogle/iam/v1/policy.proto\x1a\x16google/type/expr.proto\"_\n\x0b\x41\x63\x63\x65ssTuple\x12\x16\n\tprincipal\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x1f\n\x12\x66ull_resource_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\npermission\x18\x03 \x01(\tB\x03\xe0\x41\x02\"\xbc\x02\n\x0f\x45xplainedPolicy\x12\x41\n\x06\x61\x63\x63\x65ss\x18\x01 \x01(\x0e\x32\x31.google.cloud.policytroubleshooter.v1.AccessState\x12\x1a\n\x12\x66ull_resource_name\x18\x02 \x01(\t\x12%\n\x06policy\x18\x03 \x01(\x0b\x32\x15.google.iam.v1.Policy\x12V\n\x14\x62inding_explanations\x18\x04 \x03(\x0b\x32\x38.google.cloud.policytroubleshooter.v1.BindingExplanation\x12K\n\trelevance\x18\x05 \x01(\x0e\x32\x38.google.cloud.policytroubleshooter.v1.HeuristicRelevance\"\x83\t\n\x12\x42indingExplanation\x12\x46\n\x06\x61\x63\x63\x65ss\x18\x01 \x01(\x0e\x32\x31.google.cloud.policytroubleshooter.v1.AccessStateB\x03\xe0\x41\x02\x12\x0c\n\x04role\x18\x02 \x01(\t\x12`\n\x0frole_permission\x18\x03 \x01(\x0e\x32G.google.cloud.policytroubleshooter.v1.BindingExplanation.RolePermission\x12[\n\x19role_permission_relevance\x18\x04 \x01(\x0e\x32\x38.google.cloud.policytroubleshooter.v1.HeuristicRelevance\x12^\n\x0bmemberships\x18\x05 \x03(\x0b\x32I.google.cloud.policytroubleshooter.v1.BindingExplanation.MembershipsEntry\x12K\n\trelevance\x18\x06 \x01(\x0e\x32\x38.google.cloud.policytroubleshooter.v1.HeuristicRelevance\x12$\n\tcondition\x18\x07 \x01(\x0b\x32\x11.google.type.Expr\x1a\xbb\x01\n\x13\x41nnotatedMembership\x12W\n\nmembership\x18\x01 \x01(\x0e\x32\x43.google.cloud.policytroubleshooter.v1.BindingExplanation.Membership\x12K\n\trelevance\x18\x02 \x01(\x0e\x32\x38.google.cloud.policytroubleshooter.v1.HeuristicRelevance\x1a\x80\x01\n\x10MembershipsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12[\n\x05value\x18\x02 \x01(\x0b\x32L.google.cloud.policytroubleshooter.v1.BindingExplanation.AnnotatedMembership:\x02\x38\x01\"\x9a\x01\n\x0eRolePermission\x12\x1f\n\x1bROLE_PERMISSION_UNSPECIFIED\x10\x00\x12\x1c\n\x18ROLE_PERMISSION_INCLUDED\x10\x01\x12 \n\x1cROLE_PERMISSION_NOT_INCLUDED\x10\x02\x12\'\n#ROLE_PERMISSION_UNKNOWN_INFO_DENIED\x10\x03\"\xa6\x01\n\nMembership\x12\x1a\n\x16MEMBERSHIP_UNSPECIFIED\x10\x00\x12\x17\n\x13MEMBERSHIP_INCLUDED\x10\x01\x12\x1b\n\x17MEMBERSHIP_NOT_INCLUDED\x10\x02\x12\"\n\x1eMEMBERSHIP_UNKNOWN_INFO_DENIED\x10\x03\x12\"\n\x1eMEMBERSHIP_UNKNOWN_UNSUPPORTED\x10\x04*{\n\x0b\x41\x63\x63\x65ssState\x12\x1c\n\x18\x41\x43\x43\x45SS_STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07GRANTED\x10\x01\x12\x0f\n\x0bNOT_GRANTED\x10\x02\x12\x17\n\x13UNKNOWN_CONDITIONAL\x10\x03\x12\x17\n\x13UNKNOWN_INFO_DENIED\x10\x04*O\n\x12HeuristicRelevance\x12#\n\x1fHEURISTIC_RELEVANCE_UNSPECIFIED\x10\x00\x12\n\n\x06NORMAL\x10\x01\x12\x08\n\x04HIGH\x10\x02\x42\xd6\x01Z\\cloud.google.com/go/policytroubleshooter/apiv1/policytroubleshooterpb;policytroubleshooterpb\xaa\x02$Google.Cloud.PolicyTroubleshooter.V1\xca\x02$Google\\Cloud\\PolicyTroubleshooter\\V1\xea\x02\'Google::Cloud::PolicyTroubleshooter::V1b\x06proto3"

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
    ["google.iam.v1.Policy", "google/iam/v1/policy.proto"],
    ["google.type.Expr", "google/type/expr.proto"],
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
    module PolicyTroubleshooter
      module V1
        AccessTuple = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.policytroubleshooter.v1.AccessTuple").msgclass
        ExplainedPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.policytroubleshooter.v1.ExplainedPolicy").msgclass
        BindingExplanation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.policytroubleshooter.v1.BindingExplanation").msgclass
        BindingExplanation::AnnotatedMembership = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.policytroubleshooter.v1.BindingExplanation.AnnotatedMembership").msgclass
        BindingExplanation::RolePermission = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.policytroubleshooter.v1.BindingExplanation.RolePermission").enummodule
        BindingExplanation::Membership = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.policytroubleshooter.v1.BindingExplanation.Membership").enummodule
        AccessState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.policytroubleshooter.v1.AccessState").enummodule
        HeuristicRelevance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.policytroubleshooter.v1.HeuristicRelevance").enummodule
      end
    end
  end
end
