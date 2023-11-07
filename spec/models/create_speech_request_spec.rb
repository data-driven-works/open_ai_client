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

# Unit tests for OpenAIClient::CreateSpeechRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreateSpeechRequest' do
  before do
    # run before each test
    @instance = OpenAIClient::CreateSpeechRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateSpeechRequest' do
    it 'should create an instance of CreateSpeechRequest' do
      expect(@instance).to be_instance_of(OpenAIClient::CreateSpeechRequest)
    end
  end
  describe 'test attribute "model"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "input"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "voice"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["alloy", "echo", "fable", "onyx", "nova", "shimmer"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.voice = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "response_format"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["mp3", "opus", "aac", "flac"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.response_format = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "speed"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
