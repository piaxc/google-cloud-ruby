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

# [START cloudtrace_v1_generated_TraceService_ListTraces_sync]
require "google/cloud/trace/v1"

##
# Snippet for the list_traces call in the TraceService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Trace::V1::TraceService::Client#list_traces. It may require
# modification in order to execute successfully.
#
def list_traces
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Trace::V1::TraceService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Trace::V1::ListTracesRequest.new

  # Call the list_traces method.
  result = client.list_traces request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Cloud::Trace::V1::Trace.
    p item
  end
end
# [END cloudtrace_v1_generated_TraceService_ListTraces_sync]
