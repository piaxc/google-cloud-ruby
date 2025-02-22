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

# [START cloudbilling_v1_generated_CloudBilling_MoveBillingAccount_sync]
require "google/cloud/billing/v1"

##
# Snippet for the move_billing_account call in the CloudBilling service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Billing::V1::CloudBilling::Client#move_billing_account. It may
# require modification in order to execute successfully.
#
def move_billing_account
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Billing::V1::CloudBilling::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Billing::V1::MoveBillingAccountRequest.new

  # Call the move_billing_account method.
  result = client.move_billing_account request

  # The returned object is of type Google::Cloud::Billing::V1::BillingAccount.
  p result
end
# [END cloudbilling_v1_generated_CloudBilling_MoveBillingAccount_sync]
