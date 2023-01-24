=begin
#Transactional Email

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Marketing
    module Transactional
      # A SMTP API token provides both an ID and password that can be used to send email through the HubSpot SMTP API.
      class SmtpApiTokenView
        # User name to log into the HubSpot SMTP server.
        attr_accessor :id

        # Email address of the user that sent the token creation request.
        attr_accessor :created_by

        # Password used to log into the HubSpot SMTP server.
        attr_accessor :password

        # Identifier assigned to the campaign provided in the token creation request.
        attr_accessor :email_campaign_id

        # Timestamp generated when a token is created.
        attr_accessor :created_at

        # Indicates whether a contact should be created for email recipients.
        attr_accessor :create_contact

        # A name for the campaign tied to the token.
        attr_accessor :campaign_name

        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            :'id' => :'id',
            :'created_by' => :'createdBy',
            :'password' => :'password',
            :'email_campaign_id' => :'emailCampaignId',
            :'created_at' => :'createdAt',
            :'create_contact' => :'createContact',
            :'campaign_name' => :'campaignName'
          }
        end

        # Returns all the JSON keys this model knows about
        def self.acceptable_attributes
          attribute_map.values
        end

        # Attribute type mapping.
        def self.openapi_types
          {
            :'id' => :'String',
            :'created_by' => :'String',
            :'password' => :'String',
            :'email_campaign_id' => :'String',
            :'created_at' => :'Time',
            :'create_contact' => :'Boolean',
            :'campaign_name' => :'String'
          }
        end

        # List of attributes with nullable: true
        def self.openapi_nullable
          Set.new([
          ])
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          if (!attributes.is_a?(Hash))
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Marketing::Transactional::SmtpApiTokenView` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Marketing::Transactional::SmtpApiTokenView`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'id')
            self.id = attributes[:'id']
          end

          if attributes.key?(:'created_by')
            self.created_by = attributes[:'created_by']
          end

          if attributes.key?(:'password')
            self.password = attributes[:'password']
          end

          if attributes.key?(:'email_campaign_id')
            self.email_campaign_id = attributes[:'email_campaign_id']
          end

          if attributes.key?(:'created_at')
            self.created_at = attributes[:'created_at']
          end

          if attributes.key?(:'create_contact')
            self.create_contact = attributes[:'create_contact']
          end

          if attributes.key?(:'campaign_name')
            self.campaign_name = attributes[:'campaign_name']
          end
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          invalid_properties = Array.new
          if @id.nil?
            invalid_properties.push('invalid value for "id", id cannot be nil.')
          end

          if @created_by.nil?
            invalid_properties.push('invalid value for "created_by", created_by cannot be nil.')
          end

          if @email_campaign_id.nil?
            invalid_properties.push('invalid value for "email_campaign_id", email_campaign_id cannot be nil.')
          end

          if @created_at.nil?
            invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
          end

          if @create_contact.nil?
            invalid_properties.push('invalid value for "create_contact", create_contact cannot be nil.')
          end

          if @campaign_name.nil?
            invalid_properties.push('invalid value for "campaign_name", campaign_name cannot be nil.')
          end

          invalid_properties
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          return false if @id.nil?
          return false if @created_by.nil?
          return false if @email_campaign_id.nil?
          return false if @created_at.nil?
          return false if @create_contact.nil?
          return false if @campaign_name.nil?
          true
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              id == o.id &&
              created_by == o.created_by &&
              password == o.password &&
              email_campaign_id == o.email_campaign_id &&
              created_at == o.created_at &&
              create_contact == o.create_contact &&
              campaign_name == o.campaign_name
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Integer] Hash code
        def hash
          [id, created_by, password, email_campaign_id, created_at, create_contact, campaign_name].hash
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def self.build_from_hash(attributes)
          new.build_from_hash(attributes)
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def build_from_hash(attributes)
          return nil unless attributes.is_a?(Hash)
          attributes = attributes.transform_keys(&:to_sym)
          self.class.openapi_types.each_pair do |key, type|
            if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
              self.send("#{key}=", nil)
            elsif type =~ /\AArray<(.*)>/i
              # check to ensure the input is an array given that the attribute
              # is documented as an array but the input is not
              if attributes[self.class.attribute_map[key]].is_a?(Array)
                self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
              end
            elsif !attributes[self.class.attribute_map[key]].nil?
              self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
            end
          end

          self
        end

        # Deserializes the data based on type
        # @param string type Data type
        # @param string value Value to be deserialized
        # @return [Object] Deserialized data
        def _deserialize(type, value)
          case type.to_sym
          when :Time
            Time.parse(value)
          when :Date
            Date.parse(value)
          when :String
            value.to_s
          when :Integer
            value.to_i
          when :Float
            value.to_f
          when :Boolean
            if value.to_s =~ /\A(true|t|yes|y|1)\z/i
              true
            else
              false
            end
          when :Object
            # generic object (usually a Hash), return directly
            value
          when /\AArray<(?<inner_type>.+)>\z/
            inner_type = Regexp.last_match[:inner_type]
            value.map { |v| _deserialize(inner_type, v) }
          when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
            k_type = Regexp.last_match[:k_type]
            v_type = Regexp.last_match[:v_type]
            {}.tap do |hash|
              value.each do |k, v|
                hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
              end
            end
          else # model
            # models (e.g. Pet) or oneOf
            klass = Hubspot::Marketing::Transactional.const_get(type)
            klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
          end
        end

        # Returns the string representation of the object
        # @return [String] String presentation of the object
        def to_s
          to_hash.to_s
        end

        # to_body is an alias to to_hash (backward compatibility)
        # @return [Hash] Returns the object in the form of hash
        def to_body
          to_hash
        end

        # Returns the object in the form of hash
        # @return [Hash] Returns the object in the form of hash
        def to_hash
          hash = {}
          self.class.attribute_map.each_pair do |attr, param|
            value = self.send(attr)
            if value.nil?
              is_nullable = self.class.openapi_nullable.include?(attr)
              next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
            end

            hash[param] = _to_hash(value)
          end
          hash
        end

        # Outputs non-array value in the form of hash
        # For object, use to_hash. Otherwise, just return the value
        # @param [Object] value Any valid value
        # @return [Hash] Returns the value in the form of hash
        def _to_hash(value)
          if value.is_a?(Array)
            value.compact.map { |v| _to_hash(v) }
          elsif value.is_a?(Hash)
            {}.tap do |hash|
              value.each { |k, v| hash[k] = _to_hash(v) }
            end
          elsif value.respond_to? :to_hash
            value.to_hash
          else
            value
          end
        end

      end

    end
  end
end
