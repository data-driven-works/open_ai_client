=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.51
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenAIClient::CreateEditResponseChoices
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreateEditResponseChoices' do
  before do
    # run before each test
    @instance = OpenAIClient::CreateEditResponseChoices.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateEditResponseChoices' do
    it 'should create an instance of CreateEditResponseChoices' do
      expect(@instance).to be_instance_of(OpenAIClient::CreateEditResponseChoices)
    end
  end
  describe 'test attribute "finish_reason"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["stop", "length"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.finish_reason = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "index"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "text"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
