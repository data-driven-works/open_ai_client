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

# Unit tests for OpenAI::CreateFineTuningJobRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreateFineTuningJobRequest' do
  before do
    # run before each test
    @instance = OpenAI::CreateFineTuningJobRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateFineTuningJobRequest' do
    it 'should create an instance of CreateFineTuningJobRequest' do
      expect(@instance).to be_instance_of(OpenAI::CreateFineTuningJobRequest)
    end
  end
  describe 'test attribute "model"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "training_file"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "hyperparameters"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "suffix"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "validation_file"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
