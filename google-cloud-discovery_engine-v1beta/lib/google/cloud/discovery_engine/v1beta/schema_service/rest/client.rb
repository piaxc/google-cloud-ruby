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
require "google/cloud/discoveryengine/v1beta/schema_service_pb"
require "google/cloud/discovery_engine/v1beta/schema_service/rest/service_stub"

module Google
  module Cloud
    module DiscoveryEngine
      module V1beta
        module SchemaService
          module Rest
            ##
            # REST client for the SchemaService service.
            #
            # Service for managing {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema}s.
            #
            class Client
              include Paths

              # @private
              attr_reader :schema_service_stub

              ##
              # Configure the SchemaService Client class.
              #
              # See {::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all SchemaService clients
              #   ::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Rest::Client.configure do |config|
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
                  namespace = ["Google", "Cloud", "DiscoveryEngine", "V1beta"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.timeout = 30.0
                  default_config.retry_policy = {
                    initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14]
                  }

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the SchemaService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Rest::Client::Configuration}
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
              # Create a new SchemaService REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the SchemaService client.
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

                @operations_client = ::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Rest::Operations.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                end

                @schema_service_stub = ::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Rest::ServiceStub.new endpoint: @config.endpoint, credentials: credentials
              end

              ##
              # Get the associated client for long-running operations.
              #
              # @return [::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Rest::Operations]
              #
              attr_reader :operations_client

              # Service calls

              ##
              # Gets a {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema}.
              #
              # @overload get_schema(request, options = nil)
              #   Pass arguments to `get_schema` via a request object, either of type
              #   {::Google::Cloud::DiscoveryEngine::V1beta::GetSchemaRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::DiscoveryEngine::V1beta::GetSchemaRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload get_schema(name: nil)
              #   Pass arguments to `get_schema` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The full resource name of the schema, in the format of
              #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::DiscoveryEngine::V1beta::Schema]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::DiscoveryEngine::V1beta::Schema]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def get_schema request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DiscoveryEngine::V1beta::GetSchemaRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.get_schema.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::DiscoveryEngine::V1beta::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.get_schema.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.get_schema.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @schema_service_stub.get_schema request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Gets a list of {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema}s.
              #
              # @overload list_schemas(request, options = nil)
              #   Pass arguments to `list_schemas` via a request object, either of type
              #   {::Google::Cloud::DiscoveryEngine::V1beta::ListSchemasRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::DiscoveryEngine::V1beta::ListSchemasRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload list_schemas(parent: nil, page_size: nil, page_token: nil)
              #   Pass arguments to `list_schemas` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The parent data store resource name, in the format of
              #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
              #   @param page_size [::Integer]
              #     The maximum number of {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema}s
              #     to return. The service may return fewer than this value.
              #
              #     If unspecified, at most 100
              #     {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema}s will be returned.
              #
              #     The maximum value is 1000; values above 1000 will be coerced to 1000.
              #   @param page_token [::String]
              #     A page token, received from a previous
              #     {::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Rest::Client#list_schemas SchemaService.ListSchemas}
              #     call. Provide this to retrieve the subsequent page.
              #
              #     When paginating, all other parameters provided to
              #     {::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Rest::Client#list_schemas SchemaService.ListSchemas}
              #     must match the call that provided the page token.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Rest::PagedEnumerable<::Google::Cloud::DiscoveryEngine::V1beta::Schema>]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Rest::PagedEnumerable<::Google::Cloud::DiscoveryEngine::V1beta::Schema>]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def list_schemas request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DiscoveryEngine::V1beta::ListSchemasRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.list_schemas.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::DiscoveryEngine::V1beta::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.list_schemas.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.list_schemas.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @schema_service_stub.list_schemas request, options do |result, operation|
                  result = ::Gapic::Rest::PagedEnumerable.new @schema_service_stub, :list_schemas, "schemas", request, result, options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Creates a {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema}.
              #
              # @overload create_schema(request, options = nil)
              #   Pass arguments to `create_schema` via a request object, either of type
              #   {::Google::Cloud::DiscoveryEngine::V1beta::CreateSchemaRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::DiscoveryEngine::V1beta::CreateSchemaRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload create_schema(parent: nil, schema: nil, schema_id: nil)
              #   Pass arguments to `create_schema` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The parent data store resource name, in the format of
              #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
              #   @param schema [::Google::Cloud::DiscoveryEngine::V1beta::Schema, ::Hash]
              #     Required. The {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema} to
              #     create.
              #   @param schema_id [::String]
              #     Required. The ID to use for the
              #     {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema}, which will become the
              #     final component of the
              #     {::Google::Cloud::DiscoveryEngine::V1beta::Schema#name Schema.name}.
              #
              #     This field should conform to
              #     [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length
              #     limit of 63 characters.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def create_schema request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DiscoveryEngine::V1beta::CreateSchemaRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.create_schema.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::DiscoveryEngine::V1beta::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.create_schema.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.create_schema.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @schema_service_stub.create_schema request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Updates a {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema}.
              #
              # @overload update_schema(request, options = nil)
              #   Pass arguments to `update_schema` via a request object, either of type
              #   {::Google::Cloud::DiscoveryEngine::V1beta::UpdateSchemaRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::DiscoveryEngine::V1beta::UpdateSchemaRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload update_schema(schema: nil, allow_missing: nil)
              #   Pass arguments to `update_schema` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param schema [::Google::Cloud::DiscoveryEngine::V1beta::Schema, ::Hash]
              #     Required. The {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema} to
              #     update.
              #   @param allow_missing [::Boolean]
              #     If set to true, and the
              #     {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema} is not found, a new
              #     {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema} will be created. In
              #     this situation, `update_mask` is ignored.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def update_schema request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DiscoveryEngine::V1beta::UpdateSchemaRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.update_schema.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::DiscoveryEngine::V1beta::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.update_schema.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.update_schema.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @schema_service_stub.update_schema request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Deletes a {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema}.
              #
              # @overload delete_schema(request, options = nil)
              #   Pass arguments to `delete_schema` via a request object, either of type
              #   {::Google::Cloud::DiscoveryEngine::V1beta::DeleteSchemaRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::DiscoveryEngine::V1beta::DeleteSchemaRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload delete_schema(name: nil)
              #   Pass arguments to `delete_schema` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The full resource name of the schema, in the format of
              #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def delete_schema request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DiscoveryEngine::V1beta::DeleteSchemaRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.delete_schema.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::DiscoveryEngine::V1beta::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.delete_schema.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.delete_schema.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @schema_service_stub.delete_schema request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the SchemaService REST API.
              #
              # This class represents the configuration for SchemaService REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # get_schema to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.get_schema.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.get_schema.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"discoveryengine.googleapis.com"`.
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

                DEFAULT_ENDPOINT = "discoveryengine.googleapis.com"

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
                # Configuration RPC class for the SchemaService API.
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
                  # RPC-specific configuration for `get_schema`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :get_schema
                  ##
                  # RPC-specific configuration for `list_schemas`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :list_schemas
                  ##
                  # RPC-specific configuration for `create_schema`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :create_schema
                  ##
                  # RPC-specific configuration for `update_schema`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :update_schema
                  ##
                  # RPC-specific configuration for `delete_schema`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :delete_schema

                  # @private
                  def initialize parent_rpcs = nil
                    get_schema_config = parent_rpcs.get_schema if parent_rpcs.respond_to? :get_schema
                    @get_schema = ::Gapic::Config::Method.new get_schema_config
                    list_schemas_config = parent_rpcs.list_schemas if parent_rpcs.respond_to? :list_schemas
                    @list_schemas = ::Gapic::Config::Method.new list_schemas_config
                    create_schema_config = parent_rpcs.create_schema if parent_rpcs.respond_to? :create_schema
                    @create_schema = ::Gapic::Config::Method.new create_schema_config
                    update_schema_config = parent_rpcs.update_schema if parent_rpcs.respond_to? :update_schema
                    @update_schema = ::Gapic::Config::Method.new update_schema_config
                    delete_schema_config = parent_rpcs.delete_schema if parent_rpcs.respond_to? :delete_schema
                    @delete_schema = ::Gapic::Config::Method.new delete_schema_config

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
