# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/run/v2/job_pb"
require "google/cloud/run/v2/job_services_pb"
require "google/cloud/run/v2/jobs"

class ::Google::Cloud::Run::V2::Jobs::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_job
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    job = {}
    job_id = "hello world"
    validate_only = true

    create_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_job, name
      assert_kind_of ::Google::Cloud::Run::V2::CreateJobRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Run::V2::Job), request["job"]
      assert_equal "hello world", request["job_id"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_job_client_stub do
      # Create client
      client = ::Google::Cloud::Run::V2::Jobs::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_job({ parent: parent, job: job, job_id: job_id, validate_only: validate_only }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_job parent: parent, job: job, job_id: job_id, validate_only: validate_only do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_job ::Google::Cloud::Run::V2::CreateJobRequest.new(parent: parent, job: job, job_id: job_id, validate_only: validate_only) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_job({ parent: parent, job: job, job_id: job_id, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_job(::Google::Cloud::Run::V2::CreateJobRequest.new(parent: parent, job: job, job_id: job_id, validate_only: validate_only), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_job_client_stub.call_rpc_count
    end
  end

  def test_get_job
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Run::V2::Job.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_job, name
      assert_kind_of ::Google::Cloud::Run::V2::GetJobRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_job_client_stub do
      # Create client
      client = ::Google::Cloud::Run::V2::Jobs::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_job({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_job name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_job ::Google::Cloud::Run::V2::GetJobRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_job({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_job(::Google::Cloud::Run::V2::GetJobRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_job_client_stub.call_rpc_count
    end
  end

  def test_list_jobs
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Run::V2::ListJobsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    show_deleted = true

    list_jobs_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_jobs, name
      assert_kind_of ::Google::Cloud::Run::V2::ListJobsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal true, request["show_deleted"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_jobs_client_stub do
      # Create client
      client = ::Google::Cloud::Run::V2::Jobs::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_jobs({ parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_jobs parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_jobs ::Google::Cloud::Run::V2::ListJobsRequest.new(parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_jobs({ parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_jobs(::Google::Cloud::Run::V2::ListJobsRequest.new(parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_jobs_client_stub.call_rpc_count
    end
  end

  def test_update_job
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    job = {}
    validate_only = true
    allow_missing = true

    update_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_job, name
      assert_kind_of ::Google::Cloud::Run::V2::UpdateJobRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Run::V2::Job), request["job"]
      assert_equal true, request["validate_only"]
      assert_equal true, request["allow_missing"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_job_client_stub do
      # Create client
      client = ::Google::Cloud::Run::V2::Jobs::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_job({ job: job, validate_only: validate_only, allow_missing: allow_missing }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_job job: job, validate_only: validate_only, allow_missing: allow_missing do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_job ::Google::Cloud::Run::V2::UpdateJobRequest.new(job: job, validate_only: validate_only, allow_missing: allow_missing) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_job({ job: job, validate_only: validate_only, allow_missing: allow_missing }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_job(::Google::Cloud::Run::V2::UpdateJobRequest.new(job: job, validate_only: validate_only, allow_missing: allow_missing), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_job_client_stub.call_rpc_count
    end
  end

  def test_delete_job
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    validate_only = true
    etag = "hello world"

    delete_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_job, name
      assert_kind_of ::Google::Cloud::Run::V2::DeleteJobRequest, request
      assert_equal "hello world", request["name"]
      assert_equal true, request["validate_only"]
      assert_equal "hello world", request["etag"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_job_client_stub do
      # Create client
      client = ::Google::Cloud::Run::V2::Jobs::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_job({ name: name, validate_only: validate_only, etag: etag }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_job name: name, validate_only: validate_only, etag: etag do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_job ::Google::Cloud::Run::V2::DeleteJobRequest.new(name: name, validate_only: validate_only, etag: etag) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_job({ name: name, validate_only: validate_only, etag: etag }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_job(::Google::Cloud::Run::V2::DeleteJobRequest.new(name: name, validate_only: validate_only, etag: etag), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_job_client_stub.call_rpc_count
    end
  end

  def test_run_job
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    validate_only = true
    etag = "hello world"

    run_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :run_job, name
      assert_kind_of ::Google::Cloud::Run::V2::RunJobRequest, request
      assert_equal "hello world", request["name"]
      assert_equal true, request["validate_only"]
      assert_equal "hello world", request["etag"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, run_job_client_stub do
      # Create client
      client = ::Google::Cloud::Run::V2::Jobs::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.run_job({ name: name, validate_only: validate_only, etag: etag }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.run_job name: name, validate_only: validate_only, etag: etag do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.run_job ::Google::Cloud::Run::V2::RunJobRequest.new(name: name, validate_only: validate_only, etag: etag) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.run_job({ name: name, validate_only: validate_only, etag: etag }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.run_job(::Google::Cloud::Run::V2::RunJobRequest.new(name: name, validate_only: validate_only, etag: etag), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, run_job_client_stub.call_rpc_count
    end
  end

  def test_get_iam_policy
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::Policy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    options = {}

    get_iam_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_iam_policy, name
      assert_kind_of ::Google::Iam::V1::GetIamPolicyRequest, request
      assert_equal "hello world", request["resource"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Iam::V1::GetPolicyOptions), request["options"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_iam_policy_client_stub do
      # Create client
      client = ::Google::Cloud::Run::V2::Jobs::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_iam_policy({ resource: resource, options: options }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_iam_policy resource: resource, options: options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_iam_policy ::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_iam_policy({ resource: resource, options: options }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_iam_policy(::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_iam_policy_client_stub.call_rpc_count
    end
  end

  def test_set_iam_policy
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::Policy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    policy = {}
    update_mask = {}

    set_iam_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :set_iam_policy, name
      assert_kind_of ::Google::Iam::V1::SetIamPolicyRequest, request
      assert_equal "hello world", request["resource"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Iam::V1::Policy), request["policy"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, set_iam_policy_client_stub do
      # Create client
      client = ::Google::Cloud::Run::V2::Jobs::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.set_iam_policy resource: resource, policy: policy, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.set_iam_policy ::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.set_iam_policy(::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, set_iam_policy_client_stub.call_rpc_count
    end
  end

  def test_test_iam_permissions
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::TestIamPermissionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    permissions = ["hello world"]

    test_iam_permissions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :test_iam_permissions, name
      assert_kind_of ::Google::Iam::V1::TestIamPermissionsRequest, request
      assert_equal "hello world", request["resource"]
      assert_equal ["hello world"], request["permissions"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, test_iam_permissions_client_stub do
      # Create client
      client = ::Google::Cloud::Run::V2::Jobs::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.test_iam_permissions({ resource: resource, permissions: permissions }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.test_iam_permissions resource: resource, permissions: permissions do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.test_iam_permissions ::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.test_iam_permissions({ resource: resource, permissions: permissions }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.test_iam_permissions(::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, test_iam_permissions_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Run::V2::Jobs::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Run::V2::Jobs::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Run::V2::Jobs::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Run::V2::Jobs::Operations, client.operations_client
  end
end