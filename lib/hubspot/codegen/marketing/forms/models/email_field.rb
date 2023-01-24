=begin
#FormsExternalService

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Marketing
    module Forms
      # A form field used for collecting an email address.
      class EmailField
        # Determines how the field will be displayed and validated.
        attr_accessor :field_type

        # A unique ID for this field's CRM object type. For example a CONTACT field will have the object type ID 0-1.
        attr_accessor :object_type_id

        # The identifier of the field. In combination with the object type ID, it must be unique.
        attr_accessor :name

        # The main label for the form field.
        attr_accessor :label

        # Additional text helping the customer to complete the field.
        attr_accessor :description

        # Whether a value for this field is required when submitting the form.
        attr_accessor :required

        # Whether a field should be hidden or not. Hidden fields won't appear on the form, but can be used to pass a value to a property without requiring the customer to fill it in.
        attr_accessor :hidden

        # A list of other fields to make visible based on the value filled in for this field.
        attr_accessor :dependent_fields

        # The prompt text showing when the field isn't filled in.
        attr_accessor :placeholder

        # The value filled in by default. This value will be submitted unless the customer modifies it.
        attr_accessor :default_value

        attr_accessor :validation

        class EnumAttributeValidator
          attr_reader :datatype
          attr_reader :allowable_values

          def initialize(datatype, allowable_values)
            @allowable_values = allowable_values.map do |value|
              case datatype.to_s
              when /Integer/i
                value.to_i
              when /Float/i
                value.to_f
              else
                value
              end
            end
          end

          def valid?(value)
            !value || allowable_values.include?(value)
          end
        end

        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            :'field_type' => :'fieldType',
            :'object_type_id' => :'objectTypeId',
            :'name' => :'name',
            :'label' => :'label',
            :'description' => :'description',
            :'required' => :'required',
            :'hidden' => :'hidden',
            :'dependent_fields' => :'dependentFields',
            :'placeholder' => :'placeholder',
            :'default_value' => :'defaultValue',
            :'validation' => :'validation'
          }
        end

        # Returns all the JSON keys this model knows about
        def self.acceptable_attributes
          attribute_map.values
        end

        # Attribute type mapping.
        def self.openapi_types
          {
            :'field_type' => :'String',
            :'object_type_id' => :'String',
            :'name' => :'String',
            :'label' => :'String',
            :'description' => :'String',
            :'required' => :'Boolean',
            :'hidden' => :'Boolean',
            :'dependent_fields' => :'Array<DependentField>',
            :'placeholder' => :'String',
            :'default_value' => :'String',
            :'validation' => :'EmailFieldValidation'
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
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Marketing::Forms::EmailField` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Marketing::Forms::EmailField`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'field_type')
            self.field_type = attributes[:'field_type']
          else
            self.field_type = 'email'
          end

          if attributes.key?(:'object_type_id')
            self.object_type_id = attributes[:'object_type_id']
          end

          if attributes.key?(:'name')
            self.name = attributes[:'name']
          end

          if attributes.key?(:'label')
            self.label = attributes[:'label']
          end

          if attributes.key?(:'description')
            self.description = attributes[:'description']
          end

          if attributes.key?(:'required')
            self.required = attributes[:'required']
          end

          if attributes.key?(:'hidden')
            self.hidden = attributes[:'hidden']
          end

          if attributes.key?(:'dependent_fields')
            if (value = attributes[:'dependent_fields']).is_a?(Array)
              self.dependent_fields = value
            end
          end

          if attributes.key?(:'placeholder')
            self.placeholder = attributes[:'placeholder']
          end

          if attributes.key?(:'default_value')
            self.default_value = attributes[:'default_value']
          end

          if attributes.key?(:'validation')
            self.validation = attributes[:'validation']
          end
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          invalid_properties = Array.new
          if @field_type.nil?
            invalid_properties.push('invalid value for "field_type", field_type cannot be nil.')
          end

          invalid_properties
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          return false if @field_type.nil?
          field_type_validator = EnumAttributeValidator.new('String', ["email"])
          return false unless field_type_validator.valid?(@field_type)
          true
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] field_type Object to be assigned
        def field_type=(field_type)
          validator = EnumAttributeValidator.new('String', ["email"])
          unless validator.valid?(field_type)
            fail ArgumentError, "invalid value for \"field_type\", must be one of #{validator.allowable_values}."
          end
          @field_type = field_type
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              field_type == o.field_type &&
              object_type_id == o.object_type_id &&
              name == o.name &&
              label == o.label &&
              description == o.description &&
              required == o.required &&
              hidden == o.hidden &&
              dependent_fields == o.dependent_fields &&
              placeholder == o.placeholder &&
              default_value == o.default_value &&
              validation == o.validation
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Integer] Hash code
        def hash
          [field_type, object_type_id, name, label, description, required, hidden, dependent_fields, placeholder, default_value, validation].hash
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
            klass = Hubspot::Marketing::Forms.const_get(type)
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
