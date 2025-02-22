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

# [START monitoring_v3_generated_SnoozeService_CreateSnooze_sync]
require "google/cloud/monitoring/v3"

##
# Snippet for the create_snooze call in the SnoozeService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Monitoring::V3::SnoozeService::Client#create_snooze. It may
# require modification in order to execute successfully.
#
def create_snooze
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Monitoring::V3::SnoozeService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Monitoring::V3::CreateSnoozeRequest.new

  # Call the create_snooze method.
  result = client.create_snooze request

  # The returned object is of type Google::Cloud::Monitoring::V3::Snooze.
  p result
end
# [END monitoring_v3_generated_SnoozeService_CreateSnooze_sync]
