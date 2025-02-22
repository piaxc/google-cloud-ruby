# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/baremetalsolution/v2/instance.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/baremetalsolution/v2/common_pb'
require 'google/cloud/baremetalsolution/v2/lun_pb'
require 'google/cloud/baremetalsolution/v2/network_pb'
require 'google/cloud/baremetalsolution/v2/volume_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n0google/cloud/baremetalsolution/v2/instance.proto\x12!google.cloud.baremetalsolution.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a.google/cloud/baremetalsolution/v2/common.proto\x1a+google/cloud/baremetalsolution/v2/lun.proto\x1a/google/cloud/baremetalsolution/v2/network.proto\x1a.google/cloud/baremetalsolution/v2/volume.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xc9\t\n\x08Instance\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x0f\n\x02id\x18\x0b \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x19\n\x0cmachine_type\x18\x04 \x01(\tB\x03\xe0\x41\x05\x12\x45\n\x05state\x18\x05 \x01(\x0e\x32\x31.google.cloud.baremetalsolution.v2.Instance.StateB\x03\xe0\x41\x03\x12\x1e\n\x16hyperthreading_enabled\x18\x06 \x01(\x08\x12G\n\x06labels\x18\x07 \x03(\x0b\x32\x37.google.cloud.baremetalsolution.v2.Instance.LabelsEntry\x12\x39\n\x04luns\x18\x08 \x03(\x0b\x32&.google.cloud.baremetalsolution.v2.LunB\x03\xe0\x41\x05\x12?\n\x07volumes\x18\x10 \x03(\x0b\x32).google.cloud.baremetalsolution.v2.VolumeB\x03\xe0\x41\x04\x12\x41\n\x08networks\x18\t \x03(\x0b\x32*.google.cloud.baremetalsolution.v2.NetworkB\x03\xe0\x41\x03\x12/\n\"interactive_serial_console_enabled\x18\n \x01(\x08\x42\x03\xe0\x41\x03\x12\x10\n\x08os_image\x18\x0c \x01(\t\x12\x10\n\x03pod\x18\r \x01(\tB\x03\xe0\x41\x05\x12U\n\x10network_template\x18\x0e \x01(\tB;\xfa\x41\x38\n6baremetalsolution.googleapis.com/ServerNetworkTemplate\x12O\n\x12logical_interfaces\x18\x0f \x03(\x0b\x32\x33.google.cloud.baremetalsolution.v2.LogicalInterface\x12\x17\n\nlogin_info\x18\x11 \x01(\tB\x03\xe0\x41\x03\x12L\n\x10workload_profile\x18\x12 \x01(\x0e\x32\x32.google.cloud.baremetalsolution.v2.WorkloadProfile\x12\x1d\n\x10\x66irmware_version\x18\x13 \x01(\tB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x82\x01\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x10\n\x0cPROVISIONING\x10\x01\x12\x0b\n\x07RUNNING\x10\x02\x12\x0b\n\x07\x44\x45LETED\x10\x03\x12\x0c\n\x08UPDATING\x10\x04\x12\x0c\n\x08STARTING\x10\x05\x12\x0c\n\x08STOPPING\x10\x06\x12\x0c\n\x08SHUTDOWN\x10\x07:l\xea\x41i\n)baremetalsolution.googleapis.com/Instance\x12<projects/{project}/locations/{location}/instances/{instance}\"U\n\x12GetInstanceRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)baremetalsolution.googleapis.com/Instance\"\x88\x01\n\x14ListInstancesRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\"\x85\x01\n\x15ListInstancesResponse\x12>\n\tinstances\x18\x01 \x03(\x0b\x32+.google.cloud.baremetalsolution.v2.Instance\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\x8c\x01\n\x15UpdateInstanceRequest\x12\x42\n\x08instance\x18\x01 \x01(\x0b\x32+.google.cloud.baremetalsolution.v2.InstanceB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"v\n\x15RenameInstanceRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)baremetalsolution.googleapis.com/Instance\x12\x1c\n\x0fnew_instance_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\"W\n\x14ResetInstanceRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)baremetalsolution.googleapis.com/Instance\"W\n\x14StartInstanceRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)baremetalsolution.googleapis.com/Instance\"\x17\n\x15StartInstanceResponse\"V\n\x13StopInstanceRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)baremetalsolution.googleapis.com/Instance\"\x16\n\x14StopInstanceResponse\"h\n%EnableInteractiveSerialConsoleRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)baremetalsolution.googleapis.com/Instance\"(\n&EnableInteractiveSerialConsoleResponse\"i\n&DisableInteractiveSerialConsoleRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)baremetalsolution.googleapis.com/Instance\")\n\'DisableInteractiveSerialConsoleResponse\"\xa7\x01\n\x10\x44\x65tachLunRequest\x12\x43\n\x08instance\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)baremetalsolution.googleapis.com/Instance\x12\x39\n\x03lun\x18\x02 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$baremetalsolution.googleapis.com/Lun\x12\x13\n\x0bskip_reboot\x18\x03 \x01(\x08\"\xac\x04\n\x15ServerNetworkTemplate\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12!\n\x19\x61pplicable_instance_types\x18\x02 \x03(\t\x12\x65\n\x12logical_interfaces\x18\x03 \x03(\x0b\x32I.google.cloud.baremetalsolution.v2.ServerNetworkTemplate.LogicalInterface\x1a\xdd\x01\n\x10LogicalInterface\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x65\n\x04type\x18\x02 \x01(\x0e\x32W.google.cloud.baremetalsolution.v2.ServerNetworkTemplate.LogicalInterface.InterfaceType\x12\x10\n\x08required\x18\x03 \x01(\x08\"B\n\rInterfaceType\x12\x1e\n\x1aINTERFACE_TYPE_UNSPECIFIED\x10\x00\x12\x08\n\x04\x42OND\x10\x01\x12\x07\n\x03NIC\x10\x02:\x95\x01\xea\x41\x91\x01\n6baremetalsolution.googleapis.com/ServerNetworkTemplate\x12Wprojects/{project}/locations/{location}/serverNetworkTemplate/{server_network_template}B\xfc\x01\n%com.google.cloud.baremetalsolution.v2B\rInstanceProtoP\x01ZScloud.google.com/go/baremetalsolution/apiv2/baremetalsolutionpb;baremetalsolutionpb\xaa\x02!Google.Cloud.BareMetalSolution.V2\xca\x02!Google\\Cloud\\BareMetalSolution\\V2\xea\x02$Google::Cloud::BareMetalSolution::V2b\x06proto3"

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
    ["google.cloud.baremetalsolution.v2.Lun", "google/cloud/baremetalsolution/v2/lun.proto"],
    ["google.cloud.baremetalsolution.v2.Volume", "google/cloud/baremetalsolution/v2/volume.proto"],
    ["google.cloud.baremetalsolution.v2.Network", "google/cloud/baremetalsolution/v2/network.proto"],
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
    module BareMetalSolution
      module V2
        Instance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.Instance").msgclass
        Instance::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.Instance.State").enummodule
        GetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.GetInstanceRequest").msgclass
        ListInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ListInstancesRequest").msgclass
        ListInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ListInstancesResponse").msgclass
        UpdateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.UpdateInstanceRequest").msgclass
        RenameInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.RenameInstanceRequest").msgclass
        ResetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ResetInstanceRequest").msgclass
        StartInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.StartInstanceRequest").msgclass
        StartInstanceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.StartInstanceResponse").msgclass
        StopInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.StopInstanceRequest").msgclass
        StopInstanceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.StopInstanceResponse").msgclass
        EnableInteractiveSerialConsoleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.EnableInteractiveSerialConsoleRequest").msgclass
        EnableInteractiveSerialConsoleResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.EnableInteractiveSerialConsoleResponse").msgclass
        DisableInteractiveSerialConsoleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.DisableInteractiveSerialConsoleRequest").msgclass
        DisableInteractiveSerialConsoleResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.DisableInteractiveSerialConsoleResponse").msgclass
        DetachLunRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.DetachLunRequest").msgclass
        ServerNetworkTemplate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ServerNetworkTemplate").msgclass
        ServerNetworkTemplate::LogicalInterface = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ServerNetworkTemplate.LogicalInterface").msgclass
        ServerNetworkTemplate::LogicalInterface::InterfaceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ServerNetworkTemplate.LogicalInterface.InterfaceType").enummodule
      end
    end
  end
end
