# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/beyond_corp/app_connectors/v1/version"

require "google/cloud/beyond_corp/app_connectors/v1/app_connectors_service/credentials"
require "google/cloud/beyond_corp/app_connectors/v1/app_connectors_service/paths"
require "google/cloud/beyond_corp/app_connectors/v1/app_connectors_service/operations"
require "google/cloud/beyond_corp/app_connectors/v1/app_connectors_service/client"

module Google
  module Cloud
    module BeyondCorp
      module AppConnectors
        module V1
          ##
          # ## API Overview
          #
          # The `beyondcorp.googleapis.com` service implements the Google Cloud
          # BeyondCorp API.
          #
          # ## Data Model
          #
          # The AppConnectorsService exposes the following resource:
          #
          # * AppConnectors, named as follows:
          #   `projects/{project_id}/locations/{location_id}/appConnectors/{app_connector_id}`.
          #
          # The AppConnectorsService provides methods to manage
          # (create/read/update/delete) BeyondCorp AppConnectors.
          #
          # To load this service and instantiate a client:
          #
          #     require "google/cloud/beyond_corp/app_connectors/v1/app_connectors_service"
          #     client = ::Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnectorsService::Client.new
          #
          module AppConnectorsService
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "app_connectors_service", "helpers.rb"
require "google/cloud/beyond_corp/app_connectors/v1/app_connectors_service/helpers" if ::File.file? helper_path
