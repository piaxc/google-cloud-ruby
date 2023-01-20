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

# [START monitoring_v3_generated_SnoozeService_GetSnooze_sync]
require "google/cloud/monitoring/v3"

##
# Example demonstrating basic usage of
# Google::Cloud::Monitoring::V3::SnoozeService::Client#get_snooze
#
def get_snooze
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Monitoring::V3::SnoozeService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Monitoring::V3::GetSnoozeRequest.new

  # Call the get_snooze method.
  result = client.get_snooze request

  # The returned object is of type Google::Cloud::Monitoring::V3::Snooze.
  p result
end
# [END monitoring_v3_generated_SnoozeService_GetSnooze_sync]