# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "google/cloud/firestore/v1/version"

require "google/cloud/firestore/v1/firestore/credentials"
require "google/cloud/firestore/v1/firestore/client"

module Google
  module Cloud
    module Firestore
      module V1
        ##
        # The Cloud Firestore service.
        #
        # Cloud Firestore is a fast, fully managed, serverless, cloud-native NoSQL
        # document database that simplifies storing, syncing, and querying data for
        # your mobile, web, and IoT apps at global scale. Its client libraries provide
        # live synchronization and offline support, while its security features and
        # integrations with Firebase and Google Cloud Platform accelerate building
        # truly serverless apps.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/firestore/v1/firestore"
        #     client = ::Google::Cloud::Firestore::V1::Firestore::Client.new
        #
        module Firestore
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "firestore", "helpers.rb"
require "google/cloud/firestore/v1/firestore/helpers" if ::File.file? helper_path
