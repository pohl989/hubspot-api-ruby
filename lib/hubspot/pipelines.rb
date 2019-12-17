=begin
#CRM Owners

#HubSpot uses **owners** to assign CRM objects to specific people in your organization. The endpoints described here are used to get a list of the owners that are available for an account. To assign an owner to an object, set the hubspot_owner_id property using the appropriate CRM object update or create a request.  If teams are available for your HubSpot tier, these endpoints will also indicate which team an owner belongs to. Team membership can be one of PRIMARY (default), SECONDARY, or CHILD.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

Dir["codegen/crm/pipelines/**/*.rb"].each { |f| require_relative "../../#{f}"}

module Hubspot
  module Pipelines
    class << self
      # Customize default settings for the SDK using block.
      #   SwaggerClient.configure do |config|
      #     config.username = "xxx"
      #     config.password = "xxx"
      #   end
      # If no block given, return the default Configuration object.
      def configure
        if block_given?
          yield(Hubspot::Client::Crm::Pipelines::Configuration.default)
        else
          Hubspot::Client::Crm::Pipelines::Configuration.default
        end
      end
    end
  end
end