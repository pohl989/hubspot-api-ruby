=begin
#Products

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module Hubspot
  module Client
    module Crm
      module Products
        module Api
          class AssociationsApi
            attr_accessor :api_client

            def initialize(api_client = ApiClient.default)
              @api_client = api_client
            end
            # Remove an association between two products
            # @param product_id [String] 
            # @param associated_object_type [String] 
            # @param to_object_id [String] 
            # @param [Hash] opts the optional parameters
            # @return [nil]
            def archive_association(product_id, associated_object_type, to_object_id, opts = {})
              archive_association_with_http_info(product_id, associated_object_type, to_object_id, opts)
              nil
            end

            # Remove an association between two products
            # @param product_id [String] 
            # @param associated_object_type [String] 
            # @param to_object_id [String] 
            # @param [Hash] opts the optional parameters
            # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
            def archive_association_with_http_info(product_id, associated_object_type, to_object_id, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: AssociationsApi.archive_association ...'
              end
              # verify the required parameter 'product_id' is set
              if @api_client.config.client_side_validation && product_id.nil?
                fail ArgumentError, "Missing the required parameter 'product_id' when calling AssociationsApi.archive_association"
              end
              # verify the required parameter 'associated_object_type' is set
              if @api_client.config.client_side_validation && associated_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'associated_object_type' when calling AssociationsApi.archive_association"
              end
              # verify the required parameter 'to_object_id' is set
              if @api_client.config.client_side_validation && to_object_id.nil?
                fail ArgumentError, "Missing the required parameter 'to_object_id' when calling AssociationsApi.archive_association"
              end
              # resource path
              local_var_path = '/products/{productId}/associations/{associatedObjectType}/{toObjectId}'.sub('{' + 'productId' + '}', CGI.escape(product_id.to_s).gsub('%2F', '/')).sub('{' + 'associatedObjectType' + '}', CGI.escape(associated_object_type.to_s).gsub('%2F', '/')).sub('{' + 'toObjectId' + '}', CGI.escape(to_object_id.to_s).gsub('%2F', '/'))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['*/*'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] 

              # return_type
              return_type = opts[:return_type] 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: AssociationsApi#archive_association\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Associate two products
            # @param product_id [String] 
            # @param associated_object_type [String] 
            # @param to_object_id [String] 
            # @param [Hash] opts the optional parameters
            # @return [SimplePublicObject]
            def create_association(product_id, associated_object_type, to_object_id, opts = {})
              data, _status_code, _headers = create_association_with_http_info(product_id, associated_object_type, to_object_id, opts)
              data
            end

            # Associate two products
            # @param product_id [String] 
            # @param associated_object_type [String] 
            # @param to_object_id [String] 
            # @param [Hash] opts the optional parameters
            # @return [Array<(SimplePublicObject, Integer, Hash)>] SimplePublicObject data, response status code and response headers
            def create_association_with_http_info(product_id, associated_object_type, to_object_id, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: AssociationsApi.create_association ...'
              end
              # verify the required parameter 'product_id' is set
              if @api_client.config.client_side_validation && product_id.nil?
                fail ArgumentError, "Missing the required parameter 'product_id' when calling AssociationsApi.create_association"
              end
              # verify the required parameter 'associated_object_type' is set
              if @api_client.config.client_side_validation && associated_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'associated_object_type' when calling AssociationsApi.create_association"
              end
              # verify the required parameter 'to_object_id' is set
              if @api_client.config.client_side_validation && to_object_id.nil?
                fail ArgumentError, "Missing the required parameter 'to_object_id' when calling AssociationsApi.create_association"
              end
              # resource path
              local_var_path = '/products/{productId}/associations/{associatedObjectType}/{toObjectId}'.sub('{' + 'productId' + '}', CGI.escape(product_id.to_s).gsub('%2F', '/')).sub('{' + 'associatedObjectType' + '}', CGI.escape(associated_object_type.to_s).gsub('%2F', '/')).sub('{' + 'toObjectId' + '}', CGI.escape(to_object_id.to_s).gsub('%2F', '/'))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] 

              # return_type
              return_type = opts[:return_type] || 'SimplePublicObject' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: AssociationsApi#create_association\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # List associations of a product by type
            # @param product_id [String] 
            # @param associated_object_type [String] 
            # @param [Hash] opts the optional parameters
            # @return [CollectionResponseSimplePublicObjectId]
            def get_associations(product_id, associated_object_type, opts = {})
              data, _status_code, _headers = get_associations_with_http_info(product_id, associated_object_type, opts)
              data
            end

            # List associations of a product by type
            # @param product_id [String] 
            # @param associated_object_type [String] 
            # @param [Hash] opts the optional parameters
            # @return [Array<(CollectionResponseSimplePublicObjectId, Integer, Hash)>] CollectionResponseSimplePublicObjectId data, response status code and response headers
            def get_associations_with_http_info(product_id, associated_object_type, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: AssociationsApi.get_associations ...'
              end
              # verify the required parameter 'product_id' is set
              if @api_client.config.client_side_validation && product_id.nil?
                fail ArgumentError, "Missing the required parameter 'product_id' when calling AssociationsApi.get_associations"
              end
              # verify the required parameter 'associated_object_type' is set
              if @api_client.config.client_side_validation && associated_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'associated_object_type' when calling AssociationsApi.get_associations"
              end
              # resource path
              local_var_path = '/products/{productId}/associations/{associatedObjectType}'.sub('{' + 'productId' + '}', CGI.escape(product_id.to_s).gsub('%2F', '/')).sub('{' + 'associatedObjectType' + '}', CGI.escape(associated_object_type.to_s).gsub('%2F', '/'))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] 

              # return_type
              return_type = opts[:return_type] || 'CollectionResponseSimplePublicObjectId' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: AssociationsApi#get_associations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end
          end
        end
      end
    end
  end
end