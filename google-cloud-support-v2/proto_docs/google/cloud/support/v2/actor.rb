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


module Google
  module Cloud
    module Support
      module V2
        # An object containing information about the effective user and
        # authenticated principal responsible for an action.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The name to display for the actor. If not provided, it is inferred from
        #     credentials supplied during case creation. When an email is provided, a
        #     display name must also be provided. This will be obfuscated if the user
        #     is a Google Support agent.
        # @!attribute [rw] email
        #   @return [::String]
        #     The email address of the actor. If not provided, it is inferred from
        #     credentials supplied during case creation. If the authenticated principal
        #     does not have an email address, one must be provided. When a name is
        #     provided, an email must also be provided. This will be obfuscated if the
        #     user is a Google Support agent.
        # @!attribute [r] google_support
        #   @return [::Boolean]
        #     Output only. Whether the actor is a Google support actor.
        class Actor
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
