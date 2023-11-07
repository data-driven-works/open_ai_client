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

# Unit tests for OpenAIClient::ChatCompletionMessageToolCallFunction
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ChatCompletionMessageToolCallFunction' do
  before do
    # run before each test
    @instance = OpenAIClient::ChatCompletionMessageToolCallFunction.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ChatCompletionMessageToolCallFunction' do
    it 'should create an instance of ChatCompletionMessageToolCallFunction' do
      expect(@instance).to be_instance_of(OpenAIClient::ChatCompletionMessageToolCallFunction)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "arguments"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
