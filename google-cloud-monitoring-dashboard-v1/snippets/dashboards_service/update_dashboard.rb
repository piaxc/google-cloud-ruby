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

# [START monitoring_v1_generated_DashboardsService_UpdateDashboard_sync]
require "google/cloud/monitoring/dashboard/v1"

##
# Snippet for the update_dashboard call in the DashboardsService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Monitoring::Dashboard::V1::DashboardsService::Client#update_dashboard.
# It may require modification in order to execute successfully.
#
def update_dashboard
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Monitoring::Dashboard::V1::DashboardsService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Monitoring::Dashboard::V1::UpdateDashboardRequest.new

  # Call the update_dashboard method.
  result = client.update_dashboard request

  # The returned object is of type Google::Cloud::Monitoring::Dashboard::V1::Dashboard.
  p result
end
# [END monitoring_v1_generated_DashboardsService_UpdateDashboard_sync]
