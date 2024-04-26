=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.54
=end

require 'spec_helper'
require 'json'

# Unit tests for OpenAIClient::ImagesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ImagesApi' do
  before do
    # run before each test
    @instance = OpenAIClient::ImagesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ImagesApi' do
    it 'should create an instance of ImagesApi' do
      expect(@instance).to be_instance_of(OpenAIClient::ImagesApi)
    end
  end

  # unit tests for create_image
  # Creates an image given a prompt.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [ImagesResponse]
  describe 'create_image test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_image_edit
  # Creates an edited or extended image given an original image and a prompt.
  # @param image 
  # @param prompt 
  # @param mask 
  # @param model 
  # @param n 
  # @param size 
  # @param response_format 
  # @param user 
  # @param [Hash] opts the optional parameters
  # @return [ImagesResponse]
  describe 'create_image_edit test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_image_variation
  # Creates a variation of a given image.
  # @param image 
  # @param model 
  # @param n 
  # @param response_format 
  # @param size 
  # @param user 
  # @param [Hash] opts the optional parameters
  # @return [ImagesResponse]
  describe 'create_image_variation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
