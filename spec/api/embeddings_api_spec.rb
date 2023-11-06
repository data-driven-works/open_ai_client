=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.50
=end

require 'spec_helper'
require 'json'

# Unit tests for OpenAI::EmbeddingsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EmbeddingsApi' do
  before do
    # run before each test
    @instance = OpenAI::EmbeddingsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmbeddingsApi' do
    it 'should create an instance of EmbeddingsApi' do
      expect(@instance).to be_instance_of(OpenAI::EmbeddingsApi)
    end
  end

  # unit tests for create_embedding
  # Creates an embedding vector representing the input text.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [CreateEmbeddingResponse]
  describe 'create_embedding test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end