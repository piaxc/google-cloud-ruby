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

# [START bigtableadmin_v2_generated_BigtableTableAdmin_SnapshotTable_sync]
require "google/cloud/bigtable/admin/v2"

##
# Snippet for the snapshot_table call in the BigtableTableAdmin service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Bigtable::Admin::V2::BigtableTableAdmin::Client#snapshot_table.
# It may require modification in order to execute successfully.
#
def snapshot_table
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Bigtable::Admin::V2::BigtableTableAdmin::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Bigtable::Admin::V2::SnapshotTableRequest.new

  # Call the snapshot_table method.
  result = client.snapshot_table request

  # The returned object is of type Gapic::Operation. You can use it to
  # check the status of an operation, cancel it, or wait for results.
  # Here is how to wait for a response.
  result.wait_until_done! timeout: 60
  if result.response?
    p result.response
  else
    puts "No response received."
  end
end
# [END bigtableadmin_v2_generated_BigtableTableAdmin_SnapshotTable_sync]
