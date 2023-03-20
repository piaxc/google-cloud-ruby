# frozen_string_literal: true

# Copyright 2020 Google LLC
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


module Google
  module Api
    # `Authentication` defines the authentication configuration for API methods
    # provided by an API service.
    #
    # Example:
    #
    #     name: calendar.googleapis.com
    #     authentication:
    #       providers:
    #       - id: google_calendar_auth
    #         jwks_uri: https://www.googleapis.com/oauth2/v1/certs
    #         issuer: https://securetoken.google.com
    #       rules:
    #       - selector: "*"
    #         requirements:
    #           provider_id: google_calendar_auth
    #       - selector: google.calendar.Delegate
    #         oauth:
    #           canonical_scopes: https://www.googleapis.com/auth/calendar.read
    # @!attribute [rw] rules
    #   @return [::Array<::Google::Api::AuthenticationRule>]
    #     A list of authentication rules that apply to individual API methods.
    #
    #     **NOTE:** All service configuration rules follow "last one wins" order.
    # @!attribute [rw] providers
    #   @return [::Array<::Google::Api::AuthProvider>]
    #     Defines a set of authentication providers that a service supports.
    class Authentication
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Authentication rules for the service.
    #
    # By default, if a method has any authentication requirements, every request
    # must include a valid credential matching one of the requirements.
    # It's an error to include more than one kind of credential in a single
    # request.
    #
    # If a method doesn't have any auth requirements, request credentials will be
    # ignored.
    # @!attribute [rw] selector
    #   @return [::String]
    #     Selects the methods to which this rule applies.
    #
    #     Refer to {::Google::Api::DocumentationRule#selector selector} for syntax
    #     details.
    # @!attribute [rw] oauth
    #   @return [::Google::Api::OAuthRequirements]
    #     The requirements for OAuth credentials.
    # @!attribute [rw] allow_without_credential
    #   @return [::Boolean]
    #     If true, the service accepts API keys without any other credential.
    #     This flag only applies to HTTP and gRPC requests.
    # @!attribute [rw] requirements
    #   @return [::Array<::Google::Api::AuthRequirement>]
    #     Requirements for additional authentication providers.
    class AuthenticationRule
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Specifies a location to extract JWT from an API request.
    # @!attribute [rw] header
    #   @return [::String]
    #     Specifies HTTP header name to extract JWT token.
    # @!attribute [rw] query
    #   @return [::String]
    #     Specifies URL query parameter name to extract JWT token.
    # @!attribute [rw] cookie
    #   @return [::String]
    #     Specifies cookie name to extract JWT token.
    # @!attribute [rw] value_prefix
    #   @return [::String]
    #     The value prefix. The value format is "value_prefix\\{token}"
    #     Only applies to "in" header type. Must be empty for "in" query type.
    #     If not empty, the header value has to match (case sensitive) this prefix.
    #     If not matched, JWT will not be extracted. If matched, JWT will be
    #     extracted after the prefix is removed.
    #
    #     For example, for "Authorization: Bearer \\{JWT}",
    #     value_prefix="Bearer " with a space at the end.
    class JwtLocation
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Configuration for an authentication provider, including support for
    # [JSON Web Token
    # (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).
    # @!attribute [rw] id
    #   @return [::String]
    #     The unique identifier of the auth provider. It will be referred to by
    #     `AuthRequirement.provider_id`.
    #
    #     Example: "bookstore_auth".
    # @!attribute [rw] issuer
    #   @return [::String]
    #     Identifies the principal that issued the JWT. See
    #     https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.1
    #     Usually a URL or an email address.
    #
    #     Example: https://securetoken.google.com
    #     Example: 1234567-compute@developer.gserviceaccount.com
    # @!attribute [rw] jwks_uri
    #   @return [::String]
    #     URL of the provider's public key set to validate signature of the JWT. See
    #     [OpenID
    #     Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html#ProviderMetadata).
    #     Optional if the key set document:
    #      - can be retrieved from
    #        [OpenID
    #        Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html)
    #        of the issuer.
    #      - can be inferred from the email domain of the issuer (e.g. a Google
    #      service account).
    #
    #     Example: https://www.googleapis.com/oauth2/v1/certs
    # @!attribute [rw] audiences
    #   @return [::String]
    #     The list of JWT
    #     [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3).
    #     that are allowed to access. A JWT containing any of these audiences will
    #     be accepted. When this setting is absent, JWTs with audiences:
    #       - "https://[service.name]/[google.protobuf.Api.name]"
    #       - "https://[service.name]/"
    #     will be accepted.
    #     For example, if no audiences are in the setting, LibraryService API will
    #     accept JWTs with the following audiences:
    #       -
    #       https://library-example.googleapis.com/google.example.library.v1.LibraryService
    #       - https://library-example.googleapis.com/
    #
    #     Example:
    #
    #         audiences: bookstore_android.apps.googleusercontent.com,
    #                    bookstore_web.apps.googleusercontent.com
    # @!attribute [rw] authorization_url
    #   @return [::String]
    #     Redirect URL if JWT token is required but not present or is expired.
    #     Implement authorizationUrl of securityDefinitions in OpenAPI spec.
    # @!attribute [rw] jwt_locations
    #   @return [::Array<::Google::Api::JwtLocation>]
    #     Defines the locations to extract the JWT.  For now it is only used by the
    #     Cloud Endpoints to store the OpenAPI extension [x-google-jwt-locations]
    #     (https://cloud.google.com/endpoints/docs/openapi/openapi-extensions#x-google-jwt-locations)
    #
    #     JWT locations can be one of HTTP headers, URL query parameters or
    #     cookies. The rule is that the first match wins.
    #
    #     If not specified,  default to use following 3 locations:
    #        1) Authorization: Bearer
    #        2) x-goog-iap-jwt-assertion
    #        3) access_token query parameter
    #
    #     Default locations can be specified as followings:
    #        jwt_locations:
    #        - header: Authorization
    #          value_prefix: "Bearer "
    #        - header: x-goog-iap-jwt-assertion
    #        - query: access_token
    class AuthProvider
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # OAuth scopes are a way to define data and permissions on data. For example,
    # there are scopes defined for "Read-only access to Google Calendar" and
    # "Access to Cloud Platform". Users can consent to a scope for an application,
    # giving it permission to access that data on their behalf.
    #
    # OAuth scope specifications should be fairly coarse grained; a user will need
    # to see and understand the text description of what your scope means.
    #
    # In most cases: use one or at most two OAuth scopes for an entire family of
    # products. If your product has multiple APIs, you should probably be sharing
    # the OAuth scope across all of those APIs.
    #
    # When you need finer grained OAuth consent screens: talk with your product
    # management about how developers will use them in practice.
    #
    # Please note that even though each of the canonical scopes is enough for a
    # request to be accepted and passed to the backend, a request can still fail
    # due to the backend requiring additional scopes or permissions.
    # @!attribute [rw] canonical_scopes
    #   @return [::String]
    #     The list of publicly documented OAuth scopes that are allowed access. An
    #     OAuth token containing any of these scopes will be accepted.
    #
    #     Example:
    #
    #          canonical_scopes: https://www.googleapis.com/auth/calendar,
    #                            https://www.googleapis.com/auth/calendar.read
    class OAuthRequirements
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # User-defined authentication requirements, including support for
    # [JSON Web Token
    # (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).
    # @!attribute [rw] provider_id
    #   @return [::String]
    #     {::Google::Api::AuthProvider#id id} from authentication provider.
    #
    #     Example:
    #
    #         provider_id: bookstore_auth
    # @!attribute [rw] audiences
    #   @return [::String]
    #     NOTE: This will be deprecated soon, once AuthProvider.audiences is
    #     implemented and accepted in all the runtime components.
    #
    #     The list of JWT
    #     [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3).
    #     that are allowed to access. A JWT containing any of these audiences will
    #     be accepted. When this setting is absent, only JWTs with audience
    #     "https://{::Google::Api::Service#name Service_name}/{::Google::Protobuf::Api#name API_name}"
    #     will be accepted. For example, if no audiences are in the setting,
    #     LibraryService API will only accept JWTs with the following audience
    #     "https://library-example.googleapis.com/google.example.library.v1.LibraryService".
    #
    #     Example:
    #
    #         audiences: bookstore_android.apps.googleusercontent.com,
    #                    bookstore_web.apps.googleusercontent.com
    class AuthRequirement
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end
  end
end
