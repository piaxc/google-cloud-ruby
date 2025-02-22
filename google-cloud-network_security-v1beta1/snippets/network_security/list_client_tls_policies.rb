# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# [START networksecurity_v1beta1_generated_NetworkSecurity_ListClientTlsPolicies_sync]
require "google/cloud/network_security/v1beta1"

##
# Snippet for the list_client_tls_policies call in the NetworkSecurity service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::NetworkSecurity::V1beta1::NetworkSecurity::Client#list_client_tls_policies.
# It may require modification in order to execute successfully.
#
def list_client_tls_policies
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::NetworkSecurity::V1beta1::NetworkSecurity::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::NetworkSecurity::V1beta1::ListClientTlsPoliciesRequest.new

  # Call the list_client_tls_policies method.
  result = client.list_client_tls_policies request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Cloud::NetworkSecurity::V1beta1::ClientTlsPolicy.
    p item
  end
end
# [END networksecurity_v1beta1_generated_NetworkSecurity_ListClientTlsPolicies_sync]
