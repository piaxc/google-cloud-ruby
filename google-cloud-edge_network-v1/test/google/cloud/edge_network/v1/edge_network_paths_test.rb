# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/edge_network/v1/edge_network"

class ::Google::Cloud::EdgeNetwork::V1::EdgeNetwork::ClientPathsTest < Minitest::Test
  def test_interconnect_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::EdgeNetwork::V1::EdgeNetwork::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.interconnect_path project: "value0", location: "value1", zone: "value2", interconnect: "value3"
      assert_equal "projects/value0/locations/value1/zones/value2/interconnects/value3", path
    end
  end

  def test_interconnect_attachment_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::EdgeNetwork::V1::EdgeNetwork::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.interconnect_attachment_path project: "value0", location: "value1", zone: "value2", interconnect_attachment: "value3"
      assert_equal "projects/value0/locations/value1/zones/value2/interconnectAttachments/value3", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::EdgeNetwork::V1::EdgeNetwork::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_network_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::EdgeNetwork::V1::EdgeNetwork::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.network_path project: "value0", location: "value1", zone: "value2", network: "value3"
      assert_equal "projects/value0/locations/value1/zones/value2/networks/value3", path
    end
  end

  def test_router_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::EdgeNetwork::V1::EdgeNetwork::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.router_path project: "value0", location: "value1", zone: "value2", router: "value3"
      assert_equal "projects/value0/locations/value1/zones/value2/routers/value3", path
    end
  end

  def test_subnet_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::EdgeNetwork::V1::EdgeNetwork::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.subnet_path project: "value0", location: "value1", zone: "value2", subnet: "value3"
      assert_equal "projects/value0/locations/value1/zones/value2/subnets/value3", path
    end
  end

  def test_zone_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::EdgeNetwork::V1::EdgeNetwork::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.zone_path project: "value0", location: "value1", zone: "value2"
      assert_equal "projects/value0/locations/value1/zones/value2", path
    end
  end
end
