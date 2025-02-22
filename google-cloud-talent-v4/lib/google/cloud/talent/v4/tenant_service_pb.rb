# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4/tenant_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/talent/v4/common_pb'
require 'google/cloud/talent/v4/tenant_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n+google/cloud/talent/v4/tenant_service.proto\x12\x16google.cloud.talent.v4\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/cloud/talent/v4/common.proto\x1a#google/cloud/talent/v4/tenant.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\x8f\x01\n\x13\x43reateTenantRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x33\n\x06tenant\x18\x02 \x01(\x0b\x32\x1e.google.cloud.talent.v4.TenantB\x03\xe0\x41\x02\"D\n\x10GetTenantRequest\x12\x30\n\x04name\x18\x01 \x01(\tB\"\xe0\x41\x02\xfa\x41\x1c\n\x1ajobs.googleapis.com/Tenant\"{\n\x13UpdateTenantRequest\x12\x33\n\x06tenant\x18\x01 \x01(\x0b\x32\x1e.google.cloud.talent.v4.TenantB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"G\n\x13\x44\x65leteTenantRequest\x12\x30\n\x04name\x18\x01 \x01(\tB\"\xe0\x41\x02\xfa\x41\x1c\n\x1ajobs.googleapis.com/Tenant\"\x80\x01\n\x12ListTenantsRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x12\n\npage_token\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\"\x9b\x01\n\x13ListTenantsResponse\x12/\n\x07tenants\x18\x01 \x03(\x0b\x32\x1e.google.cloud.talent.v4.Tenant\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12:\n\x08metadata\x18\x03 \x01(\x0b\x32(.google.cloud.talent.v4.ResponseMetadata2\xf0\x06\n\rTenantService\x12\x9c\x01\n\x0c\x43reateTenant\x12+.google.cloud.talent.v4.CreateTenantRequest\x1a\x1e.google.cloud.talent.v4.Tenant\"?\x82\xd3\xe4\x93\x02)\"\x1f/v4/{parent=projects/*}/tenants:\x06tenant\xda\x41\rparent,tenant\x12\x85\x01\n\tGetTenant\x12(.google.cloud.talent.v4.GetTenantRequest\x1a\x1e.google.cloud.talent.v4.Tenant\".\x82\xd3\xe4\x93\x02!\x12\x1f/v4/{name=projects/*/tenants/*}\xda\x41\x04name\x12\xa8\x01\n\x0cUpdateTenant\x12+.google.cloud.talent.v4.UpdateTenantRequest\x1a\x1e.google.cloud.talent.v4.Tenant\"K\x82\xd3\xe4\x93\x02\x30\x32&/v4/{tenant.name=projects/*/tenants/*}:\x06tenant\xda\x41\x12tenant,update_mask\x12\x83\x01\n\x0c\x44\x65leteTenant\x12+.google.cloud.talent.v4.DeleteTenantRequest\x1a\x16.google.protobuf.Empty\".\x82\xd3\xe4\x93\x02!*\x1f/v4/{name=projects/*/tenants/*}\xda\x41\x04name\x12\x98\x01\n\x0bListTenants\x12*.google.cloud.talent.v4.ListTenantsRequest\x1a+.google.cloud.talent.v4.ListTenantsResponse\"0\x82\xd3\xe4\x93\x02!\x12\x1f/v4/{parent=projects/*}/tenants\xda\x41\x06parent\x1al\xca\x41\x13jobs.googleapis.com\xd2\x41Shttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/jobsBl\n\x1a\x63om.google.cloud.talent.v4B\x12TenantServiceProtoP\x01Z2cloud.google.com/go/talent/apiv4/talentpb;talentpb\xa2\x02\x03\x43TSb\x06proto3"

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
    ["google.cloud.talent.v4.Tenant", "google/cloud/talent/v4/tenant.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.talent.v4.ResponseMetadata", "google/cloud/talent/v4/common.proto"],
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
    module Talent
      module V4
        CreateTenantRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.CreateTenantRequest").msgclass
        GetTenantRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.GetTenantRequest").msgclass
        UpdateTenantRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.UpdateTenantRequest").msgclass
        DeleteTenantRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.DeleteTenantRequest").msgclass
        ListTenantsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.ListTenantsRequest").msgclass
        ListTenantsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.ListTenantsResponse").msgclass
      end
    end
  end
end
