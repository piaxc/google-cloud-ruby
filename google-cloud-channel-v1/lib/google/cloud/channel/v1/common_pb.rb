# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/channel/v1/common.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/any_pb'


descriptor_data = "\n$google/cloud/channel/v1/common.proto\x12\x17google.cloud.channel.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/protobuf/any.proto\"\xb0\x03\n\x07\x45\x64uData\x12\x46\n\x0einstitute_type\x18\x01 \x01(\x0e\x32..google.cloud.channel.v1.EduData.InstituteType\x12\x46\n\x0einstitute_size\x18\x02 \x01(\x0e\x32..google.cloud.channel.v1.EduData.InstituteSize\x12\x0f\n\x07website\x18\x03 \x01(\t\"H\n\rInstituteType\x12\x1e\n\x1aINSTITUTE_TYPE_UNSPECIFIED\x10\x00\x12\x07\n\x03K12\x10\x01\x12\x0e\n\nUNIVERSITY\x10\x02\"\xb9\x01\n\rInstituteSize\x12\x1e\n\x1aINSTITUTE_SIZE_UNSPECIFIED\x10\x00\x12\x0e\n\nSIZE_1_100\x10\x01\x12\x10\n\x0cSIZE_101_500\x10\x02\x12\x11\n\rSIZE_501_1000\x10\x03\x12\x12\n\x0eSIZE_1001_2000\x10\x04\x12\x12\n\x0eSIZE_2001_5000\x10\x05\x12\x13\n\x0fSIZE_5001_10000\x10\x06\x12\x16\n\x12SIZE_10001_OR_MORE\x10\x07\"\x80\x03\n\x11\x43loudIdentityInfo\x12N\n\rcustomer_type\x18\x01 \x01(\x0e\x32\x37.google.cloud.channel.v1.CloudIdentityInfo.CustomerType\x12\x1b\n\x0eprimary_domain\x18\t \x01(\tB\x03\xe0\x41\x03\x12\x1f\n\x12is_domain_verified\x18\x04 \x01(\x08\x42\x03\xe0\x41\x03\x12\x17\n\x0f\x61lternate_email\x18\x06 \x01(\t\x12\x14\n\x0cphone_number\x18\x07 \x01(\t\x12\x15\n\rlanguage_code\x18\x08 \x01(\t\x12\x1e\n\x11\x61\x64min_console_uri\x18\n \x01(\tB\x03\xe0\x41\x03\x12\x32\n\x08\x65\x64u_data\x18\x16 \x01(\x0b\x32 .google.cloud.channel.v1.EduData\"C\n\x0c\x43ustomerType\x12\x1d\n\x19\x43USTOMER_TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06\x44OMAIN\x10\x01\x12\x08\n\x04TEAM\x10\x02\"\x99\x01\n\x05Value\x12\x15\n\x0bint64_value\x18\x01 \x01(\x03H\x00\x12\x16\n\x0cstring_value\x18\x02 \x01(\tH\x00\x12\x16\n\x0c\x64ouble_value\x18\x03 \x01(\x01H\x00\x12+\n\x0bproto_value\x18\x04 \x01(\x0b\x32\x14.google.protobuf.AnyH\x00\x12\x14\n\nbool_value\x18\x05 \x01(\x08H\x00\x42\x06\n\x04kind\"C\n\tAdminUser\x12\r\n\x05\x65mail\x18\x01 \x01(\t\x12\x12\n\ngiven_name\x18\x02 \x01(\t\x12\x13\n\x0b\x66\x61mily_name\x18\x03 \x01(\tBc\n\x1b\x63om.google.cloud.channel.v1B\x0b\x43ommonProtoP\x01Z5cloud.google.com/go/channel/apiv1/channelpb;channelpbb\x06proto3"

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
    ["google.protobuf.Any", "google/protobuf/any.proto"],
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
    module Channel
      module V1
        EduData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.EduData").msgclass
        EduData::InstituteType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.EduData.InstituteType").enummodule
        EduData::InstituteSize = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.EduData.InstituteSize").enummodule
        CloudIdentityInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.CloudIdentityInfo").msgclass
        CloudIdentityInfo::CustomerType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.CloudIdentityInfo.CustomerType").enummodule
        Value = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.Value").msgclass
        AdminUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.AdminUser").msgclass
      end
    end
  end
end
