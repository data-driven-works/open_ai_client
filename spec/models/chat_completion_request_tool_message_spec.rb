=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.50
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenAIClient::ChatCompletionRequestToolMessage
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ChatCompletionRequestToolMessage' do
  before do
    # run before each test
    @instance = OpenAIClient::ChatCompletionRequestToolMessage.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ChatCompletionRequestToolMessage' do
    it 'should create an instance of ChatCompletionRequestToolMessage' do
      expect(@instance).to be_instance_of(OpenAIClient::ChatCompletionRequestToolMessage)
    end
  end
  describe 'test attribute "role"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["tool"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.role = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "content"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "tool_call_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
