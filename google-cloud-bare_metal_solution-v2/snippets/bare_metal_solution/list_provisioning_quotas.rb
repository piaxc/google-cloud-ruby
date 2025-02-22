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

# [START baremetalsolution_v2_generated_BareMetalSolution_ListProvisioningQuotas_sync]
require "google/cloud/bare_metal_solution/v2"

##
# Snippet for the list_provisioning_quotas call in the BareMetalSolution service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::BareMetalSolution::V2::BareMetalSolution::Client#list_provisioning_quotas.
# It may require modification in order to execute successfully.
#
def list_provisioning_quotas
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::BareMetalSolution::V2::BareMetalSolution::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::BareMetalSolution::V2::ListProvisioningQuotasRequest.new

  # Call the list_provisioning_quotas method.
  result = client.list_provisioning_quotas request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Cloud::BareMetalSolution::V2::ProvisioningQuota.
    p item
  end
end
# [END baremetalsolution_v2_generated_BareMetalSolution_ListProvisioningQuotas_sync]
