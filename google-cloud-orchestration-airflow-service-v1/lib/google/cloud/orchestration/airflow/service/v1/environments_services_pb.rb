# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/orchestration/airflow/service/v1/environments.proto for package 'google.cloud.orchestration.airflow.service.v1'
# Original file comments:
# Copyright 2021 Google LLC
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
require 'google/cloud/orchestration/airflow/service/v1/environments_pb'

module Google
  module Cloud
    module Orchestration
      module Airflow
        module Service
          module V1
            module Environments
              # Managed Apache Airflow Environments.
              class Service

                include ::GRPC::GenericService

                self.marshal_class_method = :encode
                self.unmarshal_class_method = :decode
                self.service_name = 'google.cloud.orchestration.airflow.service.v1.Environments'

                # Create a new environment.
                rpc :CreateEnvironment, ::Google::Cloud::Orchestration::Airflow::Service::V1::CreateEnvironmentRequest, ::Google::Longrunning::Operation
                # Get an existing environment.
                rpc :GetEnvironment, ::Google::Cloud::Orchestration::Airflow::Service::V1::GetEnvironmentRequest, ::Google::Cloud::Orchestration::Airflow::Service::V1::Environment
                # List environments.
                rpc :ListEnvironments, ::Google::Cloud::Orchestration::Airflow::Service::V1::ListEnvironmentsRequest, ::Google::Cloud::Orchestration::Airflow::Service::V1::ListEnvironmentsResponse
                # Update an environment.
                rpc :UpdateEnvironment, ::Google::Cloud::Orchestration::Airflow::Service::V1::UpdateEnvironmentRequest, ::Google::Longrunning::Operation
                # Delete an environment.
                rpc :DeleteEnvironment, ::Google::Cloud::Orchestration::Airflow::Service::V1::DeleteEnvironmentRequest, ::Google::Longrunning::Operation
                # Executes Airflow CLI command.
                rpc :ExecuteAirflowCommand, ::Google::Cloud::Orchestration::Airflow::Service::V1::ExecuteAirflowCommandRequest, ::Google::Cloud::Orchestration::Airflow::Service::V1::ExecuteAirflowCommandResponse
                # Stops Airflow CLI command execution.
                rpc :StopAirflowCommand, ::Google::Cloud::Orchestration::Airflow::Service::V1::StopAirflowCommandRequest, ::Google::Cloud::Orchestration::Airflow::Service::V1::StopAirflowCommandResponse
                # Polls Airflow CLI command execution and fetches logs.
                rpc :PollAirflowCommand, ::Google::Cloud::Orchestration::Airflow::Service::V1::PollAirflowCommandRequest, ::Google::Cloud::Orchestration::Airflow::Service::V1::PollAirflowCommandResponse
                # Creates a snapshots of a Cloud Composer environment.
                #
                # As a result of this operation, snapshot of environment's state is stored
                # in a location specified in the SaveSnapshotRequest.
                rpc :SaveSnapshot, ::Google::Cloud::Orchestration::Airflow::Service::V1::SaveSnapshotRequest, ::Google::Longrunning::Operation
                # Loads a snapshot of a Cloud Composer environment.
                #
                # As a result of this operation, a snapshot of environment's specified in
                # LoadSnapshotRequest is loaded into the environment.
                rpc :LoadSnapshot, ::Google::Cloud::Orchestration::Airflow::Service::V1::LoadSnapshotRequest, ::Google::Longrunning::Operation
                # Triggers database failover (only for highly resilient environments).
                rpc :DatabaseFailover, ::Google::Cloud::Orchestration::Airflow::Service::V1::DatabaseFailoverRequest, ::Google::Longrunning::Operation
                # Fetches database properties.
                rpc :FetchDatabaseProperties, ::Google::Cloud::Orchestration::Airflow::Service::V1::FetchDatabasePropertiesRequest, ::Google::Cloud::Orchestration::Airflow::Service::V1::FetchDatabasePropertiesResponse
              end

              Stub = Service.rpc_stub_class
            end
          end
        end
      end
    end
  end
end
