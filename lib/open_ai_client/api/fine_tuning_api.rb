=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.51
=end

module OpenAIClient
  class FineTuningApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Immediately cancel a fine-tune job. 
    # @param fine_tuning_job_id The ID of the fine-tuning job to cancel. 
    # @param [Hash] opts the optional parameters
    # @return [FineTuningJob]
    def cancel_fine_tuning_job(fine_tuning_job_id, opts = {})
      data, _status_code, _headers = cancel_fine_tuning_job_with_http_info(fine_tuning_job_id, opts)
      data
    end

    # Immediately cancel a fine-tune job. 
    # @param fine_tuning_job_id The ID of the fine-tuning job to cancel. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FineTuningJob, Integer, Hash)>] FineTuningJob data, response status code and response headers
    def cancel_fine_tuning_job_with_http_info(fine_tuning_job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FineTuningApi.cancel_fine_tuning_job ...'
      end
      # verify the required parameter 'fine_tuning_job_id' is set
      if @api_client.config.client_side_validation && fine_tuning_job_id.nil?
        fail ArgumentError, "Missing the required parameter 'fine_tuning_job_id' when calling FineTuningApi.cancel_fine_tuning_job"
      end
      # resource path
      local_var_path = '/fine_tuning/jobs/{fine_tuning_job_id}/cancel'.sub('{' + 'fine_tuning_job_id' + '}', fine_tuning_job_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'FineTuningJob' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FineTuningApi#cancel_fine_tuning_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [FineTuningJob]
    def create_fine_tuning_job(body, opts = {})
      data, _status_code, _headers = create_fine_tuning_job_with_http_info(body, opts)
      data
    end

    # Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FineTuningJob, Integer, Hash)>] FineTuningJob data, response status code and response headers
    def create_fine_tuning_job_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FineTuningApi.create_fine_tuning_job ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling FineTuningApi.create_fine_tuning_job"
      end
      # resource path
      local_var_path = '/fine_tuning/jobs'

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

      return_type = opts[:return_type] || 'FineTuningJob' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FineTuningApi#create_fine_tuning_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get status updates for a fine-tuning job. 
    # @param fine_tuning_job_id The ID of the fine-tuning job to get events for. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after Identifier for the last event from the previous pagination request.
    # @option opts [Integer] :limit Number of events to retrieve. (default to 20)
    # @return [ListFineTuningJobEventsResponse]
    def list_fine_tuning_events(fine_tuning_job_id, opts = {})
      data, _status_code, _headers = list_fine_tuning_events_with_http_info(fine_tuning_job_id, opts)
      data
    end

    # Get status updates for a fine-tuning job. 
    # @param fine_tuning_job_id The ID of the fine-tuning job to get events for. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after Identifier for the last event from the previous pagination request.
    # @option opts [Integer] :limit Number of events to retrieve.
    # @return [Array<(ListFineTuningJobEventsResponse, Integer, Hash)>] ListFineTuningJobEventsResponse data, response status code and response headers
    def list_fine_tuning_events_with_http_info(fine_tuning_job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FineTuningApi.list_fine_tuning_events ...'
      end
      # verify the required parameter 'fine_tuning_job_id' is set
      if @api_client.config.client_side_validation && fine_tuning_job_id.nil?
        fail ArgumentError, "Missing the required parameter 'fine_tuning_job_id' when calling FineTuningApi.list_fine_tuning_events"
      end
      # resource path
      local_var_path = '/fine_tuning/jobs/{fine_tuning_job_id}/events'.sub('{' + 'fine_tuning_job_id' + '}', fine_tuning_job_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ListFineTuningJobEventsResponse' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FineTuningApi#list_fine_tuning_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List your organization's fine-tuning jobs 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after Identifier for the last job from the previous pagination request.
    # @option opts [Integer] :limit Number of fine-tuning jobs to retrieve. (default to 20)
    # @return [ListPaginatedFineTuningJobsResponse]
    def list_paginated_fine_tuning_jobs(opts = {})
      data, _status_code, _headers = list_paginated_fine_tuning_jobs_with_http_info(opts)
      data
    end

    # List your organization&#x27;s fine-tuning jobs 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after Identifier for the last job from the previous pagination request.
    # @option opts [Integer] :limit Number of fine-tuning jobs to retrieve.
    # @return [Array<(ListPaginatedFineTuningJobsResponse, Integer, Hash)>] ListPaginatedFineTuningJobsResponse data, response status code and response headers
    def list_paginated_fine_tuning_jobs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FineTuningApi.list_paginated_fine_tuning_jobs ...'
      end
      # resource path
      local_var_path = '/fine_tuning/jobs'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ListPaginatedFineTuningJobsResponse' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FineTuningApi#list_paginated_fine_tuning_jobs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get info about a fine-tuning job.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 
    # @param fine_tuning_job_id The ID of the fine-tuning job. 
    # @param [Hash] opts the optional parameters
    # @return [FineTuningJob]
    def retrieve_fine_tuning_job(fine_tuning_job_id, opts = {})
      data, _status_code, _headers = retrieve_fine_tuning_job_with_http_info(fine_tuning_job_id, opts)
      data
    end

    # Get info about a fine-tuning job.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 
    # @param fine_tuning_job_id The ID of the fine-tuning job. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FineTuningJob, Integer, Hash)>] FineTuningJob data, response status code and response headers
    def retrieve_fine_tuning_job_with_http_info(fine_tuning_job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FineTuningApi.retrieve_fine_tuning_job ...'
      end
      # verify the required parameter 'fine_tuning_job_id' is set
      if @api_client.config.client_side_validation && fine_tuning_job_id.nil?
        fail ArgumentError, "Missing the required parameter 'fine_tuning_job_id' when calling FineTuningApi.retrieve_fine_tuning_job"
      end
      # resource path
      local_var_path = '/fine_tuning/jobs/{fine_tuning_job_id}'.sub('{' + 'fine_tuning_job_id' + '}', fine_tuning_job_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'FineTuningJob' 

      auth_names = opts[:auth_names] || ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FineTuningApi#retrieve_fine_tuning_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
