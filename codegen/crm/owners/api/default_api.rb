=begin
#CRM Owners

#HubSpot uses **owners** to assign CRM objects to specific people in your organization. The endpoints described here are used to get a list of the owners that are available for an account. To assign an owner to an object, set the hubspot_owner_id property using the appropriate CRM object update or create a request.  If teams are available for your HubSpot tier, these endpoints will also indicate which team an owner belongs to. Team membership can be one of PRIMARY (default), SECONDARY, or CHILD.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'uri'

module Hubspot
  module Client
    module Crm
      module Owners
        module Api
          class DefaultApi
            attr_accessor :api_client

            def initialize(api_client = ApiClient.default)
              @api_client = api_client
            end
            # Read an owner by given `id` or `userId`
            # 
            # @param owner_id 
            # @param [Hash] opts the optional parameters
            # @option opts [String] :id_property  (default to id)
            # @return [PublicOwner]
            def get_by_id(owner_id, opts = {})
              data, _status_code, _headers = get_by_id_with_http_info(owner_id, opts)
              data
            end

            # Read an owner by given &#x60;id&#x60; or &#x60;userId&#x60;
            # 
            # @param owner_id 
            # @param [Hash] opts the optional parameters
            # @option opts [String] :id_property 
            # @return [Array<(PublicOwner, Fixnum, Hash)>] PublicOwner data, response status code and response headers
            def get_by_id_with_http_info(owner_id, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: DefaultApi.get_by_id ...'
              end
              # verify the required parameter 'owner_id' is set
              if @api_client.config.client_side_validation && owner_id.nil?
                fail ArgumentError, "Missing the required parameter 'owner_id' when calling DefaultApi.get_by_id"
              end
              if @api_client.config.client_side_validation && opts[:'id_property'] && !['id', 'userId'].include?(opts[:'id_property'])
                fail ArgumentError, 'invalid value for "id_property", must be one of id, userId'
              end
              # resource path
              local_var_path = '/{ownerId}'.sub('{' + 'ownerId' + '}', owner_id.to_s)

              # query parameters
              query_params = {}
              query_params[:'idProperty'] = opts[:'id_property'] if !opts[:'id_property'].nil?

              # header parameters
              header_params = {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = {}

              # http body (model)
              post_body = nil
              auth_names = ['hapikey', 'oauth2']
              data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => 'PublicOwner')
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: DefaultApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end
            # Get a page of owners
            # 
            # @param [Hash] opts the optional parameters
            # @option opts [String] :email Filter by email address (optional)
            # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
            # @option opts [Integer] :limit The maximum number of results to display per page. (default to 100)
            # @return [CollectionResponsePublicOwner]
            def get_page(opts = {})
              data, _status_code, _headers = get_page_with_http_info(opts)
              data
            end

            # Get a page of owners
            # 
            # @param [Hash] opts the optional parameters
            # @option opts [String] :email Filter by email address (optional)
            # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
            # @option opts [Integer] :limit The maximum number of results to display per page.
            # @return [Array<(CollectionResponsePublicOwner, Fixnum, Hash)>] CollectionResponsePublicOwner data, response status code and response headers
            def get_page_with_http_info(opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: DefaultApi.get_page ...'
              end
              # resource path
              local_var_path = '/'

              # query parameters
              query_params = {}
              query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
              query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
              query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

              # header parameters
              header_params = {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = {}

              # http body (model)
              post_body = nil
              auth_names = ['hapikey', 'oauth2']
              data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => 'CollectionResponsePublicOwner')
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: DefaultApi#get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end
          end
        end
      end
    end
  end
end

