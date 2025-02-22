# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/firestore/admin/v1/database.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n(google/firestore/admin/v1/database.proto\x12\x19google.firestore.admin.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xb9\x0b\n\x08\x44\x61tabase\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x10\n\x03uid\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x0blocation_id\x18\t \x01(\t\x12>\n\x04type\x18\n \x01(\x0e\x32\x30.google.firestore.admin.v1.Database.DatabaseType\x12M\n\x10\x63oncurrency_mode\x18\x0f \x01(\x0e\x32\x33.google.firestore.admin.v1.Database.ConcurrencyMode\x12@\n\x18version_retention_period\x18\x11 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x03\x12>\n\x15\x65\x61rliest_version_time\x18\x12 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12l\n!point_in_time_recovery_enablement\x18\x15 \x01(\x0e\x32\x41.google.firestore.admin.v1.Database.PointInTimeRecoveryEnablement\x12\x61\n\x1b\x61pp_engine_integration_mode\x18\x13 \x01(\x0e\x32<.google.firestore.admin.v1.Database.AppEngineIntegrationMode\x12\x17\n\nkey_prefix\x18\x14 \x01(\tB\x03\xe0\x41\x03\x12Z\n\x17\x64\x65lete_protection_state\x18\x16 \x01(\x0e\x32\x39.google.firestore.admin.v1.Database.DeleteProtectionState\x12\x0c\n\x04\x65tag\x18\x63 \x01(\t\"W\n\x0c\x44\x61tabaseType\x12\x1d\n\x19\x44\x41TABASE_TYPE_UNSPECIFIED\x10\x00\x12\x14\n\x10\x46IRESTORE_NATIVE\x10\x01\x12\x12\n\x0e\x44\x41TASTORE_MODE\x10\x02\"w\n\x0f\x43oncurrencyMode\x12 \n\x1c\x43ONCURRENCY_MODE_UNSPECIFIED\x10\x00\x12\x0e\n\nOPTIMISTIC\x10\x01\x12\x0f\n\x0bPESSIMISTIC\x10\x02\x12!\n\x1dOPTIMISTIC_WITH_ENTITY_GROUPS\x10\x03\"\x9b\x01\n\x1dPointInTimeRecoveryEnablement\x12\x31\n-POINT_IN_TIME_RECOVERY_ENABLEMENT_UNSPECIFIED\x10\x00\x12\"\n\x1ePOINT_IN_TIME_RECOVERY_ENABLED\x10\x01\x12#\n\x1fPOINT_IN_TIME_RECOVERY_DISABLED\x10\x02\"b\n\x18\x41ppEngineIntegrationMode\x12+\n\'APP_ENGINE_INTEGRATION_MODE_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x45NABLED\x10\x01\x12\x0c\n\x08\x44ISABLED\x10\x02\"\x7f\n\x15\x44\x65leteProtectionState\x12\'\n#DELETE_PROTECTION_STATE_UNSPECIFIED\x10\x00\x12\x1e\n\x1a\x44\x45LETE_PROTECTION_DISABLED\x10\x01\x12\x1d\n\x19\x44\x45LETE_PROTECTION_ENABLED\x10\x02:R\xea\x41O\n!firestore.googleapis.com/Database\x12\'projects/{project}/databases/{database}R\x01\x01\x42\xdc\x01\n\x1d\x63om.google.firestore.admin.v1B\rDatabaseProtoP\x01Z9cloud.google.com/go/firestore/apiv1/admin/adminpb;adminpb\xa2\x02\x04GCFS\xaa\x02\x1fGoogle.Cloud.Firestore.Admin.V1\xca\x02\x1fGoogle\\Cloud\\Firestore\\Admin\\V1\xea\x02#Google::Cloud::Firestore::Admin::V1b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
      module Admin
        module V1
          Database = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Database").msgclass
          Database::DatabaseType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Database.DatabaseType").enummodule
          Database::ConcurrencyMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Database.ConcurrencyMode").enummodule
          Database::PointInTimeRecoveryEnablement = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Database.PointInTimeRecoveryEnablement").enummodule
          Database::AppEngineIntegrationMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Database.AppEngineIntegrationMode").enummodule
          Database::DeleteProtectionState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Database.DeleteProtectionState").enummodule
        end
      end
    end
  end
end
