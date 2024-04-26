=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.54
=end

require 'date'

module OpenAIClient
  # The `File` object represents a document that has been uploaded to OpenAI.
  class OpenAIFile
    # The file identifier, which can be referenced in the API endpoints.
    attr_accessor :id

    # The size of the file, in bytes.
    attr_accessor :bytes

    # The Unix timestamp (in seconds) for when the file was created.
    attr_accessor :created_at

    # The name of the file.
    attr_accessor :filename

    # The object type, which is always `file`.
    attr_accessor :object

    # The intended purpose of the file. Supported values are `fine-tune`, `fine-tune-results`, `assistants`, and `assistants_output`.
    attr_accessor :purpose

    # Deprecated. The current status of the file, which can be either `uploaded`, `processed`, or `error`.
    attr_accessor :status

    # Deprecated. For details on why a fine-tuning training file failed validation, see the `error` field on `fine_tuning.job`.
    attr_accessor :status_details

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
        :'id' => :'id',
        :'bytes' => :'bytes',
        :'created_at' => :'created_at',
        :'filename' => :'filename',
        :'object' => :'object',
        :'purpose' => :'purpose',
        :'status' => :'status',
        :'status_details' => :'status_details'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Object',
        :'bytes' => :'Object',
        :'created_at' => :'Object',
        :'filename' => :'Object',
        :'object' => :'Object',
        :'purpose' => :'Object',
        :'status' => :'Object',
        :'status_details' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenAIClient::OpenAIFile` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenAIClient::OpenAIFile`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'bytes')
        self.bytes = attributes[:'bytes']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'filename')
        self.filename = attributes[:'filename']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      end

      if attributes.key?(:'purpose')
        self.purpose = attributes[:'purpose']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'status_details')
        self.status_details = attributes[:'status_details']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @bytes.nil?
        invalid_properties.push('invalid value for "bytes", bytes cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @filename.nil?
        invalid_properties.push('invalid value for "filename", filename cannot be nil.')
      end

      if @object.nil?
        invalid_properties.push('invalid value for "object", object cannot be nil.')
      end

      if @purpose.nil?
        invalid_properties.push('invalid value for "purpose", purpose cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @bytes.nil?
      return false if @created_at.nil?
      return false if @filename.nil?
      return false if @object.nil?
      object_validator = EnumAttributeValidator.new('Object', ['file'])
      return false unless object_validator.valid?(@object)
      return false if @purpose.nil?
      purpose_validator = EnumAttributeValidator.new('Object', ['fine-tune', 'fine-tune-results', 'assistants', 'assistants_output'])
      return false unless purpose_validator.valid?(@purpose)
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('Object', ['uploaded', 'processed', 'error'])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('Object', ['file'])
      unless validator.valid?(object)
        fail ArgumentError, "invalid value for \"object\", must be one of #{validator.allowable_values}."
      end
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] purpose Object to be assigned
    def purpose=(purpose)
      validator = EnumAttributeValidator.new('Object', ['fine-tune', 'fine-tune-results', 'assistants', 'assistants_output'])
      unless validator.valid?(purpose)
        fail ArgumentError, "invalid value for \"purpose\", must be one of #{validator.allowable_values}."
      end
      @purpose = purpose
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('Object', ['uploaded', 'processed', 'error'])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          bytes == o.bytes &&
          created_at == o.created_at &&
          filename == o.filename &&
          object == o.object &&
          purpose == o.purpose &&
          status == o.status &&
          status_details == o.status_details
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, bytes, created_at, filename, object, purpose, status, status_details].hash
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
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
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
      when :DateTime
        DateTime.parse(value)
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
        OpenAIClient.const_get(type).build_from_hash(value)
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
    end  end
end
