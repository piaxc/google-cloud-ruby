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

require "google/cloud/errors"
require "google/cloud/talent/v4beta1/tenant_service_pb"
require "google/cloud/talent/v4beta1/tenant_service/rest/service_stub"

module Google
  module Cloud
    module Talent
      module V4beta1
        module TenantService
          module Rest
            ##
            # REST client for the TenantService service.
            #
            # A service that handles tenant management, including CRUD and enumeration.
            #
            class Client
              include Paths

              # @private
              attr_reader :tenant_service_stub

              ##
              # Configure the TenantService Client class.
              #
              # See {::Google::Cloud::Talent::V4beta1::TenantService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all TenantService clients
              #   ::Google::Cloud::Talent::V4beta1::TenantService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def self.configure
                @configure ||= begin
                  namespace = ["Google", "Cloud", "Talent", "V4beta1"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.rpcs.create_tenant.timeout = 30.0

                  default_config.rpcs.get_tenant.timeout = 30.0
                  default_config.rpcs.get_tenant.retry_policy = {
                    initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [4, 14]
                  }

                  default_config.rpcs.update_tenant.timeout = 30.0

                  default_config.rpcs.delete_tenant.timeout = 30.0
                  default_config.rpcs.delete_tenant.retry_policy = {
                    initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [4, 14]
                  }

                  default_config.rpcs.list_tenants.timeout = 30.0
                  default_config.rpcs.list_tenants.retry_policy = {
                    initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [4, 14]
                  }

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the TenantService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::Talent::V4beta1::TenantService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def configure
                yield @config if block_given?
                @config
              end

              ##
              # Create a new TenantService REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::Talent::V4beta1::TenantService::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::Talent::V4beta1::TenantService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the TenantService client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                # Use self-signed JWT if the endpoint is unchanged from default,
                # but only if the default endpoint does not have a region prefix.
                enable_self_signed_jwt = @config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                         !@config.endpoint.split(".").first.include?("-")
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @tenant_service_stub = ::Google::Cloud::Talent::V4beta1::TenantService::Rest::ServiceStub.new endpoint: @config.endpoint, credentials: credentials
              end

              # Service calls

              ##
              # Creates a new tenant entity.
              #
              # @overload create_tenant(request, options = nil)
              #   Pass arguments to `create_tenant` via a request object, either of type
              #   {::Google::Cloud::Talent::V4beta1::CreateTenantRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Talent::V4beta1::CreateTenantRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload create_tenant(parent: nil, tenant: nil)
              #   Pass arguments to `create_tenant` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. Resource name of the project under which the tenant is created.
              #
              #     The format is "projects/\\{project_id}", for example,
              #     "projects/foo".
              #   @param tenant [::Google::Cloud::Talent::V4beta1::Tenant, ::Hash]
              #     Required. The tenant to be created.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Talent::V4beta1::Tenant]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Talent::V4beta1::Tenant]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def create_tenant request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Talent::V4beta1::CreateTenantRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.create_tenant.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Talent::V4beta1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.create_tenant.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.create_tenant.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @tenant_service_stub.create_tenant request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Retrieves specified tenant.
              #
              # @overload get_tenant(request, options = nil)
              #   Pass arguments to `get_tenant` via a request object, either of type
              #   {::Google::Cloud::Talent::V4beta1::GetTenantRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Talent::V4beta1::GetTenantRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload get_tenant(name: nil)
              #   Pass arguments to `get_tenant` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The resource name of the tenant to be retrieved.
              #
              #     The format is "projects/\\{project_id}/tenants/\\{tenant_id}", for example,
              #     "projects/foo/tenants/bar".
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Talent::V4beta1::Tenant]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Talent::V4beta1::Tenant]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def get_tenant request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Talent::V4beta1::GetTenantRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.get_tenant.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Talent::V4beta1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.get_tenant.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.get_tenant.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @tenant_service_stub.get_tenant request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Updates specified tenant.
              #
              # @overload update_tenant(request, options = nil)
              #   Pass arguments to `update_tenant` via a request object, either of type
              #   {::Google::Cloud::Talent::V4beta1::UpdateTenantRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Talent::V4beta1::UpdateTenantRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload update_tenant(tenant: nil, update_mask: nil)
              #   Pass arguments to `update_tenant` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param tenant [::Google::Cloud::Talent::V4beta1::Tenant, ::Hash]
              #     Required. The tenant resource to replace the current resource in the
              #     system.
              #   @param update_mask [::Google::Protobuf::FieldMask, ::Hash]
              #     Strongly recommended for the best service experience.
              #
              #     If
              #     {::Google::Cloud::Talent::V4beta1::UpdateTenantRequest#update_mask update_mask}
              #     is provided, only the specified fields in
              #     {::Google::Cloud::Talent::V4beta1::UpdateTenantRequest#tenant tenant} are
              #     updated. Otherwise all the fields are updated.
              #
              #     A field mask to specify the tenant fields to be updated. Only
              #     top level fields of {::Google::Cloud::Talent::V4beta1::Tenant Tenant} are
              #     supported.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Talent::V4beta1::Tenant]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Talent::V4beta1::Tenant]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def update_tenant request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Talent::V4beta1::UpdateTenantRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.update_tenant.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Talent::V4beta1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.update_tenant.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.update_tenant.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @tenant_service_stub.update_tenant request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Deletes specified tenant.
              #
              # @overload delete_tenant(request, options = nil)
              #   Pass arguments to `delete_tenant` via a request object, either of type
              #   {::Google::Cloud::Talent::V4beta1::DeleteTenantRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Talent::V4beta1::DeleteTenantRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload delete_tenant(name: nil)
              #   Pass arguments to `delete_tenant` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The resource name of the tenant to be deleted.
              #
              #     The format is "projects/\\{project_id}/tenants/\\{tenant_id}", for example,
              #     "projects/foo/tenants/bar".
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Protobuf::Empty]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Protobuf::Empty]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def delete_tenant request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Talent::V4beta1::DeleteTenantRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.delete_tenant.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Talent::V4beta1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.delete_tenant.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.delete_tenant.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @tenant_service_stub.delete_tenant request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Lists all tenants associated with the project.
              #
              # @overload list_tenants(request, options = nil)
              #   Pass arguments to `list_tenants` via a request object, either of type
              #   {::Google::Cloud::Talent::V4beta1::ListTenantsRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Talent::V4beta1::ListTenantsRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload list_tenants(parent: nil, page_token: nil, page_size: nil)
              #   Pass arguments to `list_tenants` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. Resource name of the project under which the tenant is created.
              #
              #     The format is "projects/\\{project_id}", for example,
              #     "projects/foo".
              #   @param page_token [::String]
              #     The starting indicator from which to return results.
              #   @param page_size [::Integer]
              #     The maximum number of tenants to be returned, at most 100.
              #     Default is 100 if a non-positive number is provided.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Rest::PagedEnumerable<::Google::Cloud::Talent::V4beta1::Tenant>]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Rest::PagedEnumerable<::Google::Cloud::Talent::V4beta1::Tenant>]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def list_tenants request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Talent::V4beta1::ListTenantsRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.list_tenants.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Talent::V4beta1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.list_tenants.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.list_tenants.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @tenant_service_stub.list_tenants request, options do |result, operation|
                  result = ::Gapic::Rest::PagedEnumerable.new @tenant_service_stub, :list_tenants, "tenants", request, result, options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the TenantService REST API.
              #
              # This class represents the configuration for TenantService REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::Talent::V4beta1::TenantService::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # create_tenant to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::Talent::V4beta1::TenantService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.create_tenant.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::Talent::V4beta1::TenantService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.create_tenant.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"jobs.googleapis.com"`.
              #   @return [::String]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
              #    *  (`nil`) indicating no credentials
              #   @return [::Object]
              # @!attribute [rw] scope
              #   The OAuth scopes
              #   @return [::Array<::String>]
              # @!attribute [rw] lib_name
              #   The library name as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] lib_version
              #   The library version as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional headers to be sent with the call.
              #   @return [::Hash{::Symbol=>::String}]
              # @!attribute [rw] retry_policy
              #   The retry policy. The value is a hash with the following keys:
              #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #       trigger a retry.
              #   @return [::Hash]
              # @!attribute [rw] quota_project
              #   A separate project against which to charge quota.
              #   @return [::String]
              #
              class Configuration
                extend ::Gapic::Config

                DEFAULT_ENDPOINT = "jobs.googleapis.com"

                config_attr :endpoint,      DEFAULT_ENDPOINT, ::String
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil

                # @private
                def initialize parent_config = nil
                  @parent_config = parent_config unless parent_config.nil?

                  yield self if block_given?
                end

                ##
                # Configurations for individual RPCs
                # @return [Rpcs]
                #
                def rpcs
                  @rpcs ||= begin
                    parent_rpcs = nil
                    parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                    Rpcs.new parent_rpcs
                  end
                end

                ##
                # Configuration RPC class for the TenantService API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
                #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
                #     include the following keys:
                #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                #         trigger a retry.
                #
                class Rpcs
                  ##
                  # RPC-specific configuration for `create_tenant`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :create_tenant
                  ##
                  # RPC-specific configuration for `get_tenant`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :get_tenant
                  ##
                  # RPC-specific configuration for `update_tenant`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :update_tenant
                  ##
                  # RPC-specific configuration for `delete_tenant`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :delete_tenant
                  ##
                  # RPC-specific configuration for `list_tenants`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :list_tenants

                  # @private
                  def initialize parent_rpcs = nil
                    create_tenant_config = parent_rpcs.create_tenant if parent_rpcs.respond_to? :create_tenant
                    @create_tenant = ::Gapic::Config::Method.new create_tenant_config
                    get_tenant_config = parent_rpcs.get_tenant if parent_rpcs.respond_to? :get_tenant
                    @get_tenant = ::Gapic::Config::Method.new get_tenant_config
                    update_tenant_config = parent_rpcs.update_tenant if parent_rpcs.respond_to? :update_tenant
                    @update_tenant = ::Gapic::Config::Method.new update_tenant_config
                    delete_tenant_config = parent_rpcs.delete_tenant if parent_rpcs.respond_to? :delete_tenant
                    @delete_tenant = ::Gapic::Config::Method.new delete_tenant_config
                    list_tenants_config = parent_rpcs.list_tenants if parent_rpcs.respond_to? :list_tenants
                    @list_tenants = ::Gapic::Config::Method.new list_tenants_config

                    yield self if block_given?
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
