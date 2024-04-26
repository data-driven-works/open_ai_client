=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.54
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenAIClient::RunStreamEvent
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RunStreamEvent' do
  before do
    # run before each test
    @instance = OpenAIClient::RunStreamEvent.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RunStreamEvent' do
    it 'should create an instance of RunStreamEvent' do
      expect(@instance).to be_instance_of(OpenAIClient::RunStreamEvent)
    end
  end
end
