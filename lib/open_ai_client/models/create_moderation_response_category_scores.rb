=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.54
=end

require 'date'

module OpenAIClient
  # A list of the categories along with their scores as predicted by model.
  class CreateModerationResponseCategoryScores
    # The score for the category 'hate'.
    attr_accessor :hate

    # The score for the category 'hate/threatening'.
    attr_accessor :hatethreatening

    # The score for the category 'harassment'.
    attr_accessor :harassment

    # The score for the category 'harassment/threatening'.
    attr_accessor :harassmentthreatening

    # The score for the category 'self-harm'.
    attr_accessor :self_harm

    # The score for the category 'self-harm/intent'.
    attr_accessor :self_harmintent

    # The score for the category 'self-harm/instructions'.
    attr_accessor :self_harminstructions

    # The score for the category 'sexual'.
    attr_accessor :sexual

    # The score for the category 'sexual/minors'.
    attr_accessor :sexualminors

    # The score for the category 'violence'.
    attr_accessor :violence

    # The score for the category 'violence/graphic'.
    attr_accessor :violencegraphic

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'hate' => :'hate',
        :'hatethreatening' => :'hate/threatening',
        :'harassment' => :'harassment',
        :'harassmentthreatening' => :'harassment/threatening',
        :'self_harm' => :'self-harm',
        :'self_harmintent' => :'self-harm/intent',
        :'self_harminstructions' => :'self-harm/instructions',
        :'sexual' => :'sexual',
        :'sexualminors' => :'sexual/minors',
        :'violence' => :'violence',
        :'violencegraphic' => :'violence/graphic'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'hate' => :'Object',
        :'hatethreatening' => :'Object',
        :'harassment' => :'Object',
        :'harassmentthreatening' => :'Object',
        :'self_harm' => :'Object',
        :'self_harmintent' => :'Object',
        :'self_harminstructions' => :'Object',
        :'sexual' => :'Object',
        :'sexualminors' => :'Object',
        :'violence' => :'Object',
        :'violencegraphic' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenAIClient::CreateModerationResponseCategoryScores` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenAIClient::CreateModerationResponseCategoryScores`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'hate')
        self.hate = attributes[:'hate']
      end

      if attributes.key?(:'hatethreatening')
        self.hatethreatening = attributes[:'hatethreatening']
      end

      if attributes.key?(:'harassment')
        self.harassment = attributes[:'harassment']
      end

      if attributes.key?(:'harassmentthreatening')
        self.harassmentthreatening = attributes[:'harassmentthreatening']
      end

      if attributes.key?(:'self_harm')
        self.self_harm = attributes[:'self_harm']
      end

      if attributes.key?(:'self_harmintent')
        self.self_harmintent = attributes[:'self_harmintent']
      end

      if attributes.key?(:'self_harminstructions')
        self.self_harminstructions = attributes[:'self_harminstructions']
      end

      if attributes.key?(:'sexual')
        self.sexual = attributes[:'sexual']
      end

      if attributes.key?(:'sexualminors')
        self.sexualminors = attributes[:'sexualminors']
      end

      if attributes.key?(:'violence')
        self.violence = attributes[:'violence']
      end

      if attributes.key?(:'violencegraphic')
        self.violencegraphic = attributes[:'violencegraphic']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @hate.nil?
        invalid_properties.push('invalid value for "hate", hate cannot be nil.')
      end

      if @hatethreatening.nil?
        invalid_properties.push('invalid value for "hatethreatening", hatethreatening cannot be nil.')
      end

      if @harassment.nil?
        invalid_properties.push('invalid value for "harassment", harassment cannot be nil.')
      end

      if @harassmentthreatening.nil?
        invalid_properties.push('invalid value for "harassmentthreatening", harassmentthreatening cannot be nil.')
      end

      if @self_harm.nil?
        invalid_properties.push('invalid value for "self_harm", self_harm cannot be nil.')
      end

      if @self_harmintent.nil?
        invalid_properties.push('invalid value for "self_harmintent", self_harmintent cannot be nil.')
      end

      if @self_harminstructions.nil?
        invalid_properties.push('invalid value for "self_harminstructions", self_harminstructions cannot be nil.')
      end

      if @sexual.nil?
        invalid_properties.push('invalid value for "sexual", sexual cannot be nil.')
      end

      if @sexualminors.nil?
        invalid_properties.push('invalid value for "sexualminors", sexualminors cannot be nil.')
      end

      if @violence.nil?
        invalid_properties.push('invalid value for "violence", violence cannot be nil.')
      end

      if @violencegraphic.nil?
        invalid_properties.push('invalid value for "violencegraphic", violencegraphic cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @hate.nil?
      return false if @hatethreatening.nil?
      return false if @harassment.nil?
      return false if @harassmentthreatening.nil?
      return false if @self_harm.nil?
      return false if @self_harmintent.nil?
      return false if @self_harminstructions.nil?
      return false if @sexual.nil?
      return false if @sexualminors.nil?
      return false if @violence.nil?
      return false if @violencegraphic.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          hate == o.hate &&
          hatethreatening == o.hatethreatening &&
          harassment == o.harassment &&
          harassmentthreatening == o.harassmentthreatening &&
          self_harm == o.self_harm &&
          self_harmintent == o.self_harmintent &&
          self_harminstructions == o.self_harminstructions &&
          sexual == o.sexual &&
          sexualminors == o.sexualminors &&
          violence == o.violence &&
          violencegraphic == o.violencegraphic
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [hate, hatethreatening, harassment, harassmentthreatening, self_harm, self_harmintent, self_harminstructions, sexual, sexualminors, violence, violencegraphic].hash
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
