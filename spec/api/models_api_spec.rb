=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.50
=end

require 'spec_helper'
require 'json'

# Unit tests for OpenAIClient::ModelsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ModelsApi' do
  before do
    # run before each test
    @instance = OpenAIClient::ModelsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ModelsApi' do
    it 'should create an instance of ModelsApi' do
      expect(@instance).to be_instance_of(OpenAIClient::ModelsApi)
    end
  end

  # unit tests for delete_model
  # Delete a fine-tuned model. You must have the Owner role in your organization to delete a model.
  # @param model The model to delete
  # @param [Hash] opts the optional parameters
  # @return [DeleteModelResponse]
  describe 'delete_model test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_models
  # Lists the currently available models, and provides basic information about each one such as the owner and availability.
  # @param [Hash] opts the optional parameters
  # @return [ListModelsResponse]
  describe 'list_models test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for retrieve_model
  # Retrieves a model instance, providing basic information about the model such as the owner and permissioning.
  # @param model The ID of the model to use for this request
  # @param [Hash] opts the optional parameters
  # @return [Model]
  describe 'retrieve_model test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
