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

# [START rapidmigrationassessment_v1_generated_RapidMigrationAssessment_GetAnnotation_sync]
require "google/cloud/rapid_migration_assessment/v1"

##
# Snippet for the get_annotation call in the RapidMigrationAssessment service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::RapidMigrationAssessment::V1::RapidMigrationAssessment::Client#get_annotation.
# It may require modification in order to execute successfully.
#
def get_annotation
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::RapidMigrationAssessment::V1::RapidMigrationAssessment::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::RapidMigrationAssessment::V1::GetAnnotationRequest.new

  # Call the get_annotation method.
  result = client.get_annotation request

  # The returned object is of type Google::Cloud::RapidMigrationAssessment::V1::Annotation.
  p result
end
# [END rapidmigrationassessment_v1_generated_RapidMigrationAssessment_GetAnnotation_sync]
