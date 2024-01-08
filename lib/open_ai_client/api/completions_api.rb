=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.51
=end

module OpenAIClient
  class CompletionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a completion for the provided prompt and parameters.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [CreateCompletionResponse]
    def create_completion(body, opts = {})
      data, _status_code, _headers = create_completion_with_http_info(body, opts)
      data
    end

    # Creates a completion for the provided prompt and parameters.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateCompletionResponse, Integer, Hash)>] CreateCompletionResponse data, response status code and response headers
    def create_completion_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CompletionsApi.create_completion ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CompletionsApi.create_completion"
      end
      # resource path
      local_var_path = '/completions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'CreateCompletionResponse' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompletionsApi#create_completion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
