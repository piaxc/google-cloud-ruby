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
    module GSuiteAddOns
      module V1
        module GSuiteAddOns
          # Path helper methods for the GSuiteAddOns API.
          module Paths
            ##
            # Create a fully-qualified Authorization resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/authorization`
            #
            # @param project [String]
            #
            # @return [::String]
            def authorization_path project:
              "projects/#{project}/authorization"
            end

            ##
            # Create a fully-qualified Deployment resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/deployments/{deployment}`
            #
            # @param project [String]
            # @param deployment [String]
            #
            # @return [::String]
            def deployment_path project:, deployment:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/deployments/#{deployment}"
            end

            ##
            # Create a fully-qualified InstallStatus resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/deployments/{deployment}/installStatus`
            #
            # @param project [String]
            # @param deployment [String]
            #
            # @return [::String]
            def install_status_path project:, deployment:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/deployments/#{deployment}/installStatus"
            end

            ##
            # Create a fully-qualified Project resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}`
            #
            # @param project [String]
            #
            # @return [::String]
            def project_path project:
              "projects/#{project}"
            end

            extend self
          end
        end
      end
    end
  end
end