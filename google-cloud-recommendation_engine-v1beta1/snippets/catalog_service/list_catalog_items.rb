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

# [START recommendationengine_v1beta1_generated_CatalogService_ListCatalogItems_sync]
require "google/cloud/recommendation_engine/v1beta1"

##
# Snippet for the list_catalog_items call in the CatalogService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::RecommendationEngine::V1beta1::CatalogService::Client#list_catalog_items.
# It may require modification in order to execute successfully.
#
def list_catalog_items
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::RecommendationEngine::V1beta1::CatalogService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::RecommendationEngine::V1beta1::ListCatalogItemsRequest.new

  # Call the list_catalog_items method.
  result = client.list_catalog_items request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Cloud::RecommendationEngine::V1beta1::CatalogItem.
    p item
  end
end
# [END recommendationengine_v1beta1_generated_CatalogService_ListCatalogItems_sync]
