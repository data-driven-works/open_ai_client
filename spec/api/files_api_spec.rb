=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.51
=end

require 'spec_helper'
require 'json'

# Unit tests for OpenAIClient::FilesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FilesApi' do
  before do
    # run before each test
    @instance = OpenAIClient::FilesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FilesApi' do
    it 'should create an instance of FilesApi' do
      expect(@instance).to be_instance_of(OpenAIClient::FilesApi)
    end
  end

  # unit tests for create_file
  # Upload a file that can be used across various endpoints. The size of all the files uploaded by one organization can be up to 100 GB.  The size of individual files can be a maximum of 512 MB or 2 million tokens for Assistants. See the [Assistants Tools guide](/docs/assistants/tools) to learn more about the types of files supported. The Fine-tuning API only supports &#x60;.jsonl&#x60; files.  Please [contact us](https://help.openai.com/) if you need to increase these storage limits. 
  # @param file 
  # @param purpose 
  # @param [Hash] opts the optional parameters
  # @return [OpenAIFile]
  describe 'create_file test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_file
  # Delete a file.
  # @param file_id The ID of the file to use for this request.
  # @param [Hash] opts the optional parameters
  # @return [DeleteFileResponse]
  describe 'delete_file test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for download_file
  # Returns the contents of the specified file.
  # @param file_id The ID of the file to use for this request.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'download_file test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_files
  # Returns a list of files that belong to the user&#x27;s organization.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :purpose Only return files with the given purpose.
  # @return [ListFilesResponse]
  describe 'list_files test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for retrieve_file
  # Returns information about a specific file.
  # @param file_id The ID of the file to use for this request.
  # @param [Hash] opts the optional parameters
  # @return [OpenAIFile]
  describe 'retrieve_file test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
