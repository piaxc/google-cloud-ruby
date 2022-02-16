# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/aiplatform/v1/endpoint_service.proto for package 'Google.Cloud.AIPlatform.V1'
# Original file comments:
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/aiplatform/v1/endpoint_service_pb'

module Google
  module Cloud
    module AIPlatform
      module V1
        module EndpointService
          # A service for managing Vertex AI's Endpoints.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.aiplatform.v1.EndpointService'

            # Creates an Endpoint.
            rpc :CreateEndpoint, ::Google::Cloud::AIPlatform::V1::CreateEndpointRequest, ::Google::Longrunning::Operation
            # Gets an Endpoint.
            rpc :GetEndpoint, ::Google::Cloud::AIPlatform::V1::GetEndpointRequest, ::Google::Cloud::AIPlatform::V1::Endpoint
            # Lists Endpoints in a Location.
            rpc :ListEndpoints, ::Google::Cloud::AIPlatform::V1::ListEndpointsRequest, ::Google::Cloud::AIPlatform::V1::ListEndpointsResponse
            # Updates an Endpoint.
            rpc :UpdateEndpoint, ::Google::Cloud::AIPlatform::V1::UpdateEndpointRequest, ::Google::Cloud::AIPlatform::V1::Endpoint
            # Deletes an Endpoint.
            rpc :DeleteEndpoint, ::Google::Cloud::AIPlatform::V1::DeleteEndpointRequest, ::Google::Longrunning::Operation
            # Deploys a Model into this Endpoint, creating a DeployedModel within it.
            rpc :DeployModel, ::Google::Cloud::AIPlatform::V1::DeployModelRequest, ::Google::Longrunning::Operation
            # Undeploys a Model from an Endpoint, removing a DeployedModel from it, and
            # freeing all resources it's using.
            rpc :UndeployModel, ::Google::Cloud::AIPlatform::V1::UndeployModelRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end