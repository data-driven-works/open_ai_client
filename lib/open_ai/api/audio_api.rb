=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.50
=end

module OpenAI
  class AudioApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Generates audio from the input text.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def create_speech(body, opts = {})
      data, _status_code, _headers = create_speech_with_http_info(body, opts)
      data
    end

    # Generates audio from the input text.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def create_speech_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AudioApi.create_speech ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AudioApi.create_speech"
      end
      # resource path
      local_var_path = '/audio/speech'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'String' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AudioApi#create_speech\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Transcribes audio into the input language.
    # @param file 
    # @param model 
    # @param language 
    # @param prompt 
    # @param response_format 
    # @param temperature 
    # @param [Hash] opts the optional parameters
    # @return [CreateTranscriptionResponse]
    def create_transcription(file, model, language, prompt, response_format, temperature, opts = {})
      data, _status_code, _headers = create_transcription_with_http_info(file, model, language, prompt, response_format, temperature, opts)
      data
    end

    # Transcribes audio into the input language.
    # @param file 
    # @param model 
    # @param language 
    # @param prompt 
    # @param response_format 
    # @param temperature 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateTranscriptionResponse, Integer, Hash)>] CreateTranscriptionResponse data, response status code and response headers
    def create_transcription_with_http_info(file, model, language, prompt, response_format, temperature, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AudioApi.create_transcription ...'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling AudioApi.create_transcription"
      end
      # verify the required parameter 'model' is set
      if @api_client.config.client_side_validation && model.nil?
        fail ArgumentError, "Missing the required parameter 'model' when calling AudioApi.create_transcription"
      end
      # verify the required parameter 'language' is set
      if @api_client.config.client_side_validation && language.nil?
        fail ArgumentError, "Missing the required parameter 'language' when calling AudioApi.create_transcription"
      end
      # verify the required parameter 'prompt' is set
      if @api_client.config.client_side_validation && prompt.nil?
        fail ArgumentError, "Missing the required parameter 'prompt' when calling AudioApi.create_transcription"
      end
      # verify the required parameter 'response_format' is set
      if @api_client.config.client_side_validation && response_format.nil?
        fail ArgumentError, "Missing the required parameter 'response_format' when calling AudioApi.create_transcription"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['json', 'text', 'srt', 'verbose_json', 'vtt'].include?(response_format)
        fail ArgumentError, "invalid value for 'response_format', must be one of json, text, srt, verbose_json, vtt"
      end
      # verify the required parameter 'temperature' is set
      if @api_client.config.client_side_validation && temperature.nil?
        fail ArgumentError, "Missing the required parameter 'temperature' when calling AudioApi.create_transcription"
      end
      # resource path
      local_var_path = '/audio/transcriptions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = file
      form_params['model'] = model
      form_params['language'] = language
      form_params['prompt'] = prompt
      form_params['response_format'] = response_format
      form_params['temperature'] = temperature

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CreateTranscriptionResponse' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AudioApi#create_transcription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Translates audio into English.
    # @param file 
    # @param model 
    # @param prompt 
    # @param response_format 
    # @param temperature 
    # @param [Hash] opts the optional parameters
    # @return [CreateTranslationResponse]
    def create_translation(file, model, prompt, response_format, temperature, opts = {})
      data, _status_code, _headers = create_translation_with_http_info(file, model, prompt, response_format, temperature, opts)
      data
    end

    # Translates audio into English.
    # @param file 
    # @param model 
    # @param prompt 
    # @param response_format 
    # @param temperature 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateTranslationResponse, Integer, Hash)>] CreateTranslationResponse data, response status code and response headers
    def create_translation_with_http_info(file, model, prompt, response_format, temperature, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AudioApi.create_translation ...'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling AudioApi.create_translation"
      end
      # verify the required parameter 'model' is set
      if @api_client.config.client_side_validation && model.nil?
        fail ArgumentError, "Missing the required parameter 'model' when calling AudioApi.create_translation"
      end
      # verify the required parameter 'prompt' is set
      if @api_client.config.client_side_validation && prompt.nil?
        fail ArgumentError, "Missing the required parameter 'prompt' when calling AudioApi.create_translation"
      end
      # verify the required parameter 'response_format' is set
      if @api_client.config.client_side_validation && response_format.nil?
        fail ArgumentError, "Missing the required parameter 'response_format' when calling AudioApi.create_translation"
      end
      # verify the required parameter 'temperature' is set
      if @api_client.config.client_side_validation && temperature.nil?
        fail ArgumentError, "Missing the required parameter 'temperature' when calling AudioApi.create_translation"
      end
      # resource path
      local_var_path = '/audio/translations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = file
      form_params['model'] = model
      form_params['prompt'] = prompt
      form_params['response_format'] = response_format
      form_params['temperature'] = temperature

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CreateTranslationResponse' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AudioApi#create_translation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end